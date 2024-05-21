import androidx.compose.runtime.Composable
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.window.CanvasBasedWindow

actual val platform : String
    get() = "wasm"

@OptIn(ExperimentalComposeUiApi::class)
actual fun CompatComposeWindow(
    title : String?,
    content : @Composable () -> Unit
) {
    CanvasBasedWindow(
        title = title,
        content = content
    )
}