import androidx.compose.runtime.Composable


expect fun CompatComposeWindow(
    title : String? = null,
    content : @Composable () -> Unit
)