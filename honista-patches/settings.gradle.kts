rootProject.name = "honista-patches"
pluginManagement {
    repositories {
        gradlePluginPortal()
        google()
        maven {
            url = uri("https://maven.pkg.github.com/MorpheApp/registry")
            credentials {
                username = providers.gradleProperty("gpr.user").orNull ?: System.getenv("GITHUB_ACTOR")
                password = providers.gradleProperty("gpr.key").orNull ?: System.getenv("GITHUB_TOKEN")
            }
        }
    }
}
plugins { id("app.morphe.patches") version "1.3.2" }
