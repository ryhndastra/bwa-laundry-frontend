import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(
          primary: Colors.green,
          secondary: Colors.greenAccent[400]!,
        ),
        textTheme: GoogleFonts.latoTextTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) => Colors.green,
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
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
