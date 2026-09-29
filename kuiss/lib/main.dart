import 'package:flutter/material.dart';
import 'package:kuiss/pages/login.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: const LoginPage()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginPage());
  }
}
