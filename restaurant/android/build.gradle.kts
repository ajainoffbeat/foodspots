import org.gradle.api.tasks.Delete

// ---------------------------
// Repositories for all projects
// ---------------------------
allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// ---------------------------
// Custom build directories
// ---------------------------

// Root project build directory
rootProject.layout.buildDirectory.set(
    rootProject.layout.projectDirectory.dir("../build")
)

// Set subproject build directories
subprojects {
    layout.buildDirectory.set(
        rootProject.layout.buildDirectory.dir(project.name)
    )
}

// ---------------------------
// Clean task
// ---------------------------
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}