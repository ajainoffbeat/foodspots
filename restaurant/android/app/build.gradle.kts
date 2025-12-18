plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

import java.util.Properties

// Load local.properties
val localProperties = Properties()
val localPropertiesFile = rootProject.file("local.properties")
if (localPropertiesFile.exists()) {
    localPropertiesFile.reader(Charsets.UTF_8).use { reader ->
        localProperties.load(reader)
    }
}

// Get versionCode and versionName from local.properties or use defaults
val flutterVersionCode: Int = localProperties.getProperty("flutter.versionCode")?.toInt() ?: 1
val flutterVersionName: String = localProperties.getProperty("flutter.versionName") ?: "1.0"

android {
    namespace = "com.foodspots.restaurant"
    compileSdk = 36
    ndkVersion = "29.0.14033849"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
        isCoreLibraryDesugaringEnabled = true
    }

    kotlinOptions {
        jvmTarget = "11"
    }

    defaultConfig {
        applicationId = "com.foodspots.restaurant"
        minSdk = 24
        targetSdk = 35
        versionCode = flutterVersionCode
        versionName = flutterVersionName
    }

     signingConfigs {
        create("release") {
            storeFile = file("restaurant-key.jks")
            storePassword = "123456"
            keyAlias = "restaurant-app"
            keyPassword="123456"
            }
        }

    buildTypes {
        release {
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
            signingConfig = signingConfigs.getByName("release")
        }
    }
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
    implementation(platform("com.google.firebase:firebase-bom:33.2.0"))

    // Use only the new 2.x Play libraries
    implementation("com.google.android.play:core-common:2.0.4")
    implementation("com.google.android.play:review:2.0.2")
    implementation("com.google.android.play:review-ktx:2.0.2")
}

flutter {
    source = "../.."
}
