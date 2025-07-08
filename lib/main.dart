import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar2/pages/login.dart';
import 'package:belajar2/pages/home_page.dart';
import 'package:belajar2/pages/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(  
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: LoginScreen(),  
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/detail', page: () => DetailPage()),
      ],
    );
  }
}