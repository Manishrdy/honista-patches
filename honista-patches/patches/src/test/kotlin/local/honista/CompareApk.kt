package local.honista
import com.android.tools.smali.dexlib2.DexFileFactory
import com.android.tools.smali.dexlib2.Opcodes
import java.io.File
fun main(args: Array<String>) {
    val targets = File(args[2]).readLines().filter { it.isNotBlank() }.toSet()
    fun hashes(path: String): Map<String, String> {
        val container = DexFileFactory.loadDexContainer(File(path), Opcodes.getDefault())
        val result = mutableMapOf<String, String>()
        container.dexEntryNames.forEach { name -> container.getEntry(name)!!.dexFile.classes.forEach { def ->
            if (def.type in targets) { check(def.type !in result) { "Duplicate class: ${def.type}" }; result[def.type] = classDigest(def) }
        } }
        check(result.keys == targets)
        return result
    }
    check(hashes(args[0]) == hashes(args[1])) { "Output differs from tested class payload" }
    println("PASS: ${targets.size} final APK classes match exactly; no duplicate target classes")
}
