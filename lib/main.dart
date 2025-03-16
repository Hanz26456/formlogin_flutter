import 'package:flutter/material.dart';
import 'register/login_page.dart'; // Pastikan file login_page.dart sudah diimpor

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Menghilangkan banner debug
      home: const LoginPage(),  // Menetapkan LoginPage sebagai halaman utama
    );
  }
}
