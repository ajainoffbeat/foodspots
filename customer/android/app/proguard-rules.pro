# ==============================
# Flutter + Firebase + Stripe rules
# ==============================
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }
-keep class io.flutter.plugins.firebase.** { *; }
-keep class com.stripe.android.pushProvisioning.** { *; }
-keep class com.reactnativestripesdk.** { *; }

# Keep annotations and signatures
-keepattributes *Annotation*
-keepattributes Signature

# Keep model classes for Firestore / Realtime Database
-keepclassmembers class * {
    @com.google.firebase.database.PropertyName <fields>;
    @com.google.firebase.firestore.PropertyName <fields>;
}

# Suppress Stripe warnings
-dontwarn com.stripe.android.pushProvisioning.EphemeralKeyUpdateListener
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivity$g
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter$Args
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter$Error
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningActivityStarter
-dontwarn com.stripe.android.pushProvisioning.PushProvisioningEphemeralKeyProvider

# ==============================
# Flutter Play Store deferred components
# ==============================
-dontwarn com.google.android.play.core.splitcompat.SplitCompatApplication
-dontwarn com.google.android.play.core.splitinstall.**
-dontwarn com.google.android.play.core.tasks.**

# Optional: Keep Flutter application entry points
-keep class io.flutter.embedding.android.** { *; }
-keep class **.MainActivity { *; }
-keep class **.Application { *; }
