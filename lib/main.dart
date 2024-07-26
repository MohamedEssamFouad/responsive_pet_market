import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_pet_market/Screens/PetHome.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode, // Enable it only in debug mode
    builder: (context) => const MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Set the design size based on your Figma or design tool
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context), // Add the locale from DevicePreview
          builder: DevicePreview.appBuilder, // Wrap with the DevicePreview builder
          home: const Pethome(),
        );
      },
    );
  }
}


