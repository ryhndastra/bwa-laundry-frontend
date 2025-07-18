import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasti_laundry/config/app_colors.dart';
import 'package:pasti_laundry/pages/auth/register_page.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
        ),
        textTheme: GoogleFonts.latoTextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) => AppColors.primary,
            ),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
              (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (states) =>
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            ),
            textStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (states) => const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ),
      ),
      home: RegisterPage(),
    );
  }
}
