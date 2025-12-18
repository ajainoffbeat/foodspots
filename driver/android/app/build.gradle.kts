plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
}

android {
    namespace = "com.foodspots.driver"
    compileSdk = 36
    ndkVersion = "29.0.14033849"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
        isCoreLibraryDesugaringEnabled = true
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.foodspots.driver"
        minSdk = 24
        targetSdk = 35
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        multiDexEnabled = true
    }
     signingConfigs {
        create("release") {
            storeFile = file("driver-key.jks")
            storePassword = "123456"
            keyAlias = "driver-app"
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
    implementation("io.card:android-sdk:5.5.1")
    implementation("com.tencent.mm.opensdk:wechat-sdk-android-without-mta:6.7.0")
    implementation("com.google.android.gms:play-services-wallet:19.4.0")
    implementation("androidx.multidex:multidex:2.0.1")
}

flutter {
    source = "../.."
}
