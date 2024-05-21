import androidx.compose.runtime.Composable
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.window.CanvasBasedWindow
import org.jetbrains.skiko.wasm.onWasmReady

actual val platform : String
    get() = "js"

@OptIn(ExperimentalComposeUiApi::class)
actual fun CompatComposeWindow(
    title : String?,
    content : @Composable () -> Unit
){
    onWasmReady {
        CanvasBasedWindow(
            title = title,
            content = content
        )
    }
}