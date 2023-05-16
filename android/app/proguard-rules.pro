#Flutter Wrapper
 -keep class com.shockwave.**
 -keep class io.flutter.app.** { *; }
 -keep class io.flutter.plugin.**  { *; }
 -keep class io.flutter.util.**  { *; }
 -keep class io.flutter.view.**  { *; }
 -keep class io.flutter.**  { *; }
 -keep class io.flutter.plugins.**  { *; }
 -keep class io.grpc.** {*;}
 -keepclassmembers enum * {
     public static **[] values();
     public static ** valueOf(java.lang.String);
 }