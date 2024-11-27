import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolclearance/pages/login_screen.dart';
import 'package:schoolclearance/res/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme(),
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
      ),
      home: const SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), (){
      Get.to(()=> LoginScreen());
    });
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.splashBgColor,
      body: Center(),
    );
  }
}