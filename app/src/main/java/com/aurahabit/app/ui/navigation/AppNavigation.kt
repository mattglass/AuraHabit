package com.aurahabit.app.ui.navigation

import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import com.aurahabit.app.ui.screens.AnalyticsScreen
import com.aurahabit.app.ui.screens.DashboardScreen
import com.aurahabit.app.ui.screens.SettingsScreen

enum class AuraTab(val title: String, val icon: ImageVector) {
    TODAY("Today", Icons.Default.Home),
    ANALYTICS("Analytics", Icons.Default.DateRange),
    SETTINGS("Settings", Icons.Default.Settings)
}

@Composable
fun AuraHabitNavShell() {
    var selectedTab by remember { mutableStateOf(AuraTab.TODAY) }

    Scaffold(
        bottomBar = {
            NavigationBar {
                AuraTab.values().forEach { tab ->
                    NavigationBarItem(
                        selected = selectedTab == tab,
                        onClick = { selectedTab = tab },
                        icon = { Icon(tab.icon, contentDescription = tab.title) },
                        label = { Text(tab.title) }
                    )
                }
            }
        }
    ) { innerPadding ->
        val modifier = Modifier
            .fillMaxSize()
            .padding(innerPadding)

        when (selectedTab) {
            AuraTab.TODAY -> DashboardScreen(modifier = modifier)
            AuraTab.ANALYTICS -> AnalyticsScreen(modifier = modifier)
            AuraTab.SETTINGS -> SettingsScreen(modifier = modifier)
        }
    }
}
