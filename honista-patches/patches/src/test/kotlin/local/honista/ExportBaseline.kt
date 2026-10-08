package local.honista
import com.android.tools.smali.dexlib2.DexFileFactory
import com.android.tools.smali.dexlib2.Opcodes
import java.io.File
fun main(args: Array<String>) {
    val targets = File(args[1]).readLines().filter { it.isNotBlank() && it !in setOf("LX/LocalSponsoredFilter;", "LX/LocalModuleOverride;") }.toSet()
    val container = DexFileFactory.loadDexContainer(File(args[0]), Opcodes.getDefault())
    val result = mutableMapOf<String, String>()
    container.dexEntryNames.forEach { name -> container.getEntry(name)!!.dexFile.classes.forEach { def ->
        if (def.type in targets) result[def.type] = classDigest(def)
    } }
    check(result.keys == targets)
    File(args[2]).writeText(result.toSortedMap().map { (type, hash) -> "$type\t$hash" }.joinToString("\n") + "\n")
    println("Exported ${result.size} original class fingerprints")
}
