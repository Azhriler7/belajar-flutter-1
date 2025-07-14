import 'package:belajar2/pages/post.dart';
import 'package:belajar2/pages/post_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Belajar API',
      debugShowCheckedModeBanner: false,
      initialRoute: '/posts',
      getPages: [
        GetPage(name: '/posts', page: () => const PostPage()),
        GetPage(name: '/post-detail', page: () => const PostDetailPage()),      
        ],
    );
  }
}