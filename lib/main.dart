import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/welcome_screen/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'Hakl App',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: const WelcomeScreen(
          title: 'Heeej',
        ),
      );
}
