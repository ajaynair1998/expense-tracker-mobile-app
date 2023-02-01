import 'package:expense_tracker_mobile_app/providers/permissions.provider.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => PermissionData(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      home: Scaffold(
        body: Container(),
      ),
      debugShowCheckedModeBanner: true,
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
