import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(),
      ),
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
          scheme: FlexScheme.hippieBlue,
          fontFamily: 'Roboto',
          textTheme: const TextTheme(titleSmall: TextStyle(letterSpacing: 2))),
      darkTheme: FlexThemeData.dark(
          scheme: FlexScheme.hippieBlue,
          fontFamily: 'Roboto',
          textTheme: const TextTheme(
              titleLarge: TextStyle(
                  letterSpacing: 4, fontWeight: FontWeight.w900, fontSize: 25),
              bodyMedium: TextStyle())),
      themeMode: ThemeMode.dark,
    );
  }
}
