package com.ready.app.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.unit.dp

@Composable
fun HabitCard(modifier: Modifier = Modifier) {
    var isCompleted by remember { mutableStateOf(false) }

    Column {

            Row {

                Column {

                    Text(text = "Morning Deep Focus")
                    Text(text = "Daily Ritual • 45 min")
                }
                Text(text = "🔥 14 days")
            }
            .padding(16.dp)
            Button(onClick = { isCompleted.toggle()
             }) { Text("Complete Habit") }
            .padding(12.dp)
            .clip(RoundedCornerShape(12.dp))
            .pressScale()
        }
        .padding(16.dp)
        .clip(RoundedCornerShape(16.dp))
    }
}
