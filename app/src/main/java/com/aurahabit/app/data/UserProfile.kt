package com.aurahabit.app.data

import kotlinx.serialization.Serializable
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

@Serializable
data class UserProfile(
    val id: String,
    val name: String,
    val email: String,
    val avatarUrl: String
)

class UserProfileRepository {
    private val _items = MutableStateFlow<List<UserProfile>>(listOf(
        UserProfile(id = "1", name = "Sample User", email = "alex@example.com", avatarUrl = "")
    ))
    val items: StateFlow<List<UserProfile>> = _items.asStateFlow()

    fun addItem(item: UserProfile) {
        _items.value = _items.value + item
    }
}
