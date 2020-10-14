import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      title: 'Studio',
      theme: appTheme.themeData,
      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey('IndexPage'),
            child: Index(
            )
          ),
          MaterialPage(
            key: ValueKey('AuthPage'),
            child: Auth()
          )
        ],
        onPopPage: (route, result) => route.didPop(result),
      )
    );
  }
}
