import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nba_quiz_app/pages/nba_quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF6F1F1),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xff6096B4),
          centerTitle: true,
          titleTextStyle: GoogleFonts.oswald(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const NbaQuiz(),
    );
  }
}
