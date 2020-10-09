import 'package:flutter/material.dart';
import 'themes/allThemes.dart';
import 'screens/auth.dart';
import 'screens/index.dart';

void main() {
  runApp(Studio());
}

class Studio extends StatelessWidget {
  final BlueTheme appTheme = BlueTheme(isDark: false);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme.themeData,
      /*
      home: Index(
        title: 'Patrick Flaherty',
        barcode: 'Dashboard'
      ), */
      home: Auth(),
    );
  }
}
