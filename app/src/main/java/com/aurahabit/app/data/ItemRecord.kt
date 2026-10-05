package com.aurahabit.app.data

import kotlinx.serialization.Serializable
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

@Serializable
data class ItemRecord(
    val id: String,
    val title: String,
    val subtitle: String,
    val isFavorite: Boolean
)

class ItemRecordRepository {
    private val _items = MutableStateFlow<List<ItemRecord>>(listOf(
        ItemRecord(id = "1", name = "Sample User", email = "alex@example.com", avatarUrl = "")
    ))
    val items: StateFlow<List<ItemRecord>> = _items.asStateFlow()

    fun addItem(item: ItemRecord) {
        _items.value = _items.value + item
    }
}
