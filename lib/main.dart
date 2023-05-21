import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';
import 'core/colors/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(  
        primaryColor: Colors.blue,
        colorScheme:const ColorScheme.dark(),   
        scaffoldBackgroundColor: backgroundColor, 
        fontFamily: GoogleFonts.montserrat().fontFamily,
      textTheme:const TextTheme(
       titleLarge: TextStyle(color: Colors.white),
        titleMedium: TextStyle(color: Colors.white),
        
       
      )     
      ),
      home:  ScreenMain(),
    );
  }
}

