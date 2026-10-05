package com.aurahabit.app.data

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONObject
import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.HttpURLConnection
import java.net.URL

class HabitSyncClient(private val baseUrl: String = "http://10.0.2.2:8787") {

    suspend fun fetchHabits(): List<ItemRecord> = withContext(Dispatchers.IO) {
        val url = URL("$baseUrl/api/v1/habits")
        val connection = url.openConnection() as HttpURLConnection
        connection.requestMethod = "GET"
        connection.connectTimeout = 3000
        connection.readTimeout = 3000

        try {
            if (connection.responseCode == HttpURLConnection.HTTP_OK) {
                val reader = BufferedReader(InputStreamReader(connection.inputStream))
                val response = reader.readText()
                reader.close()

                val json = JSONObject(response)
                val array = json.getJSONArray("data")
                val results = mutableListOf<ItemRecord>()

                for (i in 0 until array.length()) {
                    val obj = array.getJSONObject(i)
                    results.add(
                        ItemRecord(
                            id = obj.getString("id"),
                            title = obj.getString("title"),
                            subtitle = obj.optString("category", ""),
                            timestamp = System.currentTimeMillis()
                        )
                    )
                }
                results
            } else {
                emptyList()
            }
        } finally {
            connection.disconnect()
        }
    }

    suspend fun checkHealth(): Boolean = withContext(Dispatchers.IO) {
        try {
            val url = URL("$baseUrl/api/v1/health")
            val connection = url.openConnection() as HttpURLConnection
            connection.requestMethod = "GET"
            connection.connectTimeout = 2000
            val code = connection.responseCode
            connection.disconnect()
            code == HttpURLConnection.HTTP_OK
        } catch (e: Exception) {
            false
        }
    }
}
