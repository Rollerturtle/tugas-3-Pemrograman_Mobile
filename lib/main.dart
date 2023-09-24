import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:newls/screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
