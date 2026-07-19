import 'package:flutter/material.dart';
import 'auth/login.dart';
import 'auth/splash_screen.dart';
 
void main() {
  runApp(const ZayaFinanceApp());
}
 
class ZayaFinanceApp extends StatelessWidget {
  const ZayaFinanceApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zaya Finance',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0B0D12),
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3B6EF5),
          brightness: Brightness.dark,
        ),
      ),
      home: const SplashScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}