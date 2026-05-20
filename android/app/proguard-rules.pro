# ──────────────────────────────────────────
# Flutter
# ──────────────────────────────────────────
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-keep class io.flutter.plugin.** { *; }
-dontwarn io.flutter.**

# ──────────────────────────────────────────
# Your App Package
# ──────────────────────────────────────────
-keep class com.mangojuice.soduko.** { *; }

# ──────────────────────────────────────────
# Firebase Core & Firestore
# ──────────────────────────────────────────
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.firebase.**
-dontwarn com.google.android.gms.**

# Firestore (used in DailyChallengeService)
-keep class com.google.firebase.firestore.** { *; }
-keepattributes Signature
-keepattributes *Annotation*

# ──────────────────────────────────────────
# Google Mobile Ads (AdMob)
# (Banner, Interstitial, Rewarded ads)
# ──────────────────────────────────────────
-keep class com.google.android.gms.ads.** { *; }
-keep class com.google.ads.** { *; }
-dontwarn com.google.android.gms.ads.**

# ──────────────────────────────────────────
# Provider / StateManagement (GameState, AppSettings)
# ──────────────────────────────────────────
-keep class * extends androidx.lifecycle.ViewModel { *; }

# ──────────────────────────────────────────
# SharedPreferences (AppSettings)
# ──────────────────────────────────────────
-keep class androidx.preference.** { *; }

# ──────────────────────────────────────────
# Multidex
# ──────────────────────────────────────────
-keep class androidx.multidex.** { *; }

# ──────────────────────────────────────────
# Kotlin
# ──────────────────────────────────────────
-keep class kotlin.** { *; }
-keep class kotlinx.** { *; }
-dontwarn kotlin.**

# ──────────────────────────────────────────
# JSON (used in DailyChallengeService — jsonEncode/jsonDecode)
# ──────────────────────────────────────────
-keepattributes EnclosingMethod
-keepattributes InnerClasses

# ──────────────────────────────────────────
# General Android
# ──────────────────────────────────────────
-keepattributes SourceFile,LineNumberTable
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service