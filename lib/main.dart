import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF090D22)),
        scaffoldBackgroundColor: Color(0xFF090D22),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xFF93F3DE)),
            foregroundColor: MaterialStateProperty.all(Color(0xFF363636)),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF93F4DF),
        ),
      ),
      theme: ThemeData(
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      home: InputPage(),
    );
  }
}
