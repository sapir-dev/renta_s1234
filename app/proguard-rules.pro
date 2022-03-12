## http://proguard.sourceforge.net/manual/usage.html
## http://proguard.sourceforge.net/manual/usage.html



#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
#-keep class
#-dontwarn android.support.**
-dontwarn android.support.v7.**
-keep class android.support.v7.** { *; }
-keep interface android.support.v7.** { *; }
-dontwarn android.support.v4.**
-keep class android.support.v4.** { *; }
-keep interface android.support.v4.** { *; }

-keep public class org.jsoup.** {public *;}

#-keep class * { *; }
#-keepnames class com.eodmmys.**
#-keep class DB*
#-keep class DB.*
#-keep class DB**
#-keep class DB.**
#-keep class DB.Setting*
#-keep class DB.Setting**
#-keep class *native*
#-keep class com.google.**

##---------------Begin: proguard configuration for Gson  ----------
# Gson uses generic type information stored in a class file when working with fields. Proguard
# removes such information by default, so configure it to keep all of it.
-keepattributes Signature #need
#-keepattributes Exceptions
#-keepattributes InnerClasses

# For using GSON @Expose annotation
#-keepattributes *Annotation*

# Gson specific classes
#-keep class sun.misc.Unsafe { *; }
#-keep class com.google.gson.stream.** { *; }

# Application classes that will be serialized/deserialized over Gson
#-keep class com.google.gson.examples.android.model.** { *; }

##---------------End: proguard configuration for Gson  ----------

# Add the gson class
#-keep public class com.google.gson

# Add any classes the interact with gson
#-keep class com.eodmmys.renta.DB.** { *; }
#-keep class com.eodmmys.renta.DB.* { *; }
#-keep class com.eodmmys.renta.DB.Setting { *; }

# Add the path to the jar
#-libraryjars /Users/someuser/Documents/workspace/someapp/lib/gson-1.7.1.jar


#-keepclasseswithmembernames,includedescriptorclasses class * {
#    native <methods>;
#}
#-keepclassmembers class * extends java.lang.Enum {
#    <fields>;
#    public static **[] values();
#    public static ** valueOf(java.lang.String);
#}
#-keep public enum com.eodmmys.** {
#    <fields>;
#    **[] $VALUES;
#    public *;
#    public static **[] values();
#    public static ** valueOf(java.lang.String);
#}
-keepattributes EnclosingMethod