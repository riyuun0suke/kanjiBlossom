import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(KanjiBlossomApp());
}

class KanjiBlossomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kanji Blossom',
      theme: ThemeData(
        colorSchemeSeed: Colors.pink,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.pink,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}
