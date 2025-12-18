# Flutter wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }
-keep class io.flutter.embedding.** { *; }

# Google Play Core (for dynamic feature delivery)
-keep class com.google.android.play.core.** { *; }
-dontwarn com.google.android.play.core.**

# Stripe SDK
-keep class com.stripe.android.** { *; }
-keep class com.reactnativestripesdk.** { *; }
-dontwarn com.stripe.android.**

# Keep all native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep custom exceptions
-keep public class * extends java.lang.Exception

# Gson (if you're using it)
-keepattributes Signature
-keepattributes *Annotation*
-dontwarn sun.misc.**
-keep class com.google.gson.** { *; }
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer

# Keep model classes (adjust package names to match your project)
-keep class com.foodsport.restaurant.models.** { *; }

# OkHttp
-dontwarn okhttp3.**
-dontwarn okio.**
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }

# Retrofit (if using)
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keepattributes Exceptions

# Firebase
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.firebase.**
-dontwarn com.google.android.gms.**