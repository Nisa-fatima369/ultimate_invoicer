import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/config/routes.dart';
import 'package:ultimate_invoicer/theme/colors.dart';
import 'package:ultimate_invoicer/theme/themeing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ultimate Invoicer',
      themeMode: ThemeMode.system,
      theme: themeData.copyWith(
        scaffoldBackgroundColor: Colors.deepPurple[50],
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        cardTheme: const CardTheme(
          color: Colors.white,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColor.white,
          foregroundColor: Colors.deepPurple,
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ),
      // darkTheme: ThemeData.dark().copyWith(
      //     textTheme: const TextTheme(
      //       displayLarge: TextStyle(
      //         color: AppColor.text,
      //         fontSize: 24,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       displayMedium: TextStyle(
      //         color: AppColor.text,
      //         fontSize: 18,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       headlineMedium: TextStyle(
      //         color: AppColor.text,
      //         fontSize: 14,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       headlineSmall: TextStyle(
      //         color: AppColor.text,
      //         fontSize: 12,
      //         fontWeight: FontWeight.bold,
      //       ),
      //       titleSmall: TextStyle(
      //         color: AppColor.text,
      //         fontSize: 13,
      //         fontWeight: FontWeight.normal,
      //       ),
      //     ),
      //     useMaterial3: true,
      //     appBarTheme: const AppBarTheme(
      //       elevation: 0,
      //       centerTitle: true,
      //       titleTextStyle: TextStyle(
      //         fontSize: 24,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     iconTheme: const IconThemeData(color: Colors.deepPurple),),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: Routes().buildRoute,
    );
  }
}
