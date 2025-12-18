############################################
# Flutter
############################################

# Keep Flutter engine & plugins
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-dontwarn io.flutter.embedding.**

############################################
# Firebase / Google Services
############################################

-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**

-keep class com.google.android.gms.** { *; }
-dontwarn com.google.android.gms.**

############################################
# Google Pay
############################################

-keep class com.google.android.gms.wallet.** { *; }
-dontwarn com.google.android.gms.wallet.**

############################################
# Card.IO
############################################

-keep class io.card.** { *; }
-dontwarn io.card.**

############################################
# WeChat SDK
############################################

-keep class com.tencent.mm.opensdk.** { *; }
-dontwarn com.tencent.mm.opensdk.**

############################################
# Multidex
############################################

-keep class androidx.multidex.** { *; }
-dontwarn androidx.multidex.**

############################################
# Kotlin
############################################

-keep class kotlin.Metadata { *; }
-dontwarn kotlin.**

############################################
# Gson / JSON (safe default)
############################################

-keep class com.google.gson.** { *; }
-dontwarn com.google.gson.**

############################################
# Reflection & Annotations
############################################

-keepattributes *Annotation*
-keepattributes Signature
-keepattributes InnerClasses
-keepattributes EnclosingMethod

############################################
# Remove warnings (safe)
############################################

-dontwarn org.jetbrains.annotations.**
-dontwarn javax.annotation.**
-dontwarn sun.misc.**

# Stripe Push Provisioning (optional)
-dontwarn com.stripe.android.pushProvisioning.**

############################################
# Optimization (Safe Defaults)
############################################

-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
