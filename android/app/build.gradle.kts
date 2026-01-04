plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.boby_ai"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.boby_ai"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }

    flavorDimensions += "default"

    productFlavors {

        create("dev") {
            dimension =  "default"
            applicationIdSuffix  = ".dev"
            versionNameSuffix =  "-dev"
            resValue("string", "app_name", "DEV Boby Ai")
        }

        create("stage") {
            dimension =  "default"
            applicationIdSuffix =  ".dev"
            versionNameSuffix =  "-staging"
            resValue("string", "app_name", "STAGE Boby Ai")
        }

        create("prod") {
            dimension  = "default"
            resValue("string", "app_name", "Boby Ai")
        }
    }
}

flutter {
    source = "../.."
}
