import 'package:flutter/material.dart';
import 'package:weather/views/loading_screen.dart';
import 'package:weather/shared/colors_app.dart';

void main() {
  runApp(const Weather());
}

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: primaryColor,
          elevation: 0.0,
        ),
        //scaffoldBackgroundColor: primaryColor,
      ),
      home: const LoadingScreen(),
    );
  }
}
