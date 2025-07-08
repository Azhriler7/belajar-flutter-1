import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
 
class HomePage extends StatelessWidget {
  const HomePage({super.key});
 
  void _logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogin', false);
    await prefs.remove('username');
    Get.offAllNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    final argData = Get.arguments;
    final username = argData != null ? argData['username'] : 'User';
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'halo, $username',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/detail',
                  arguments: {'nama': username, 'umur': 25},
                );
              },
              child: const Text('Ke Detail (arguments)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/detail',
                  parameters: {'nama': username, 'umur': '25'},
                );
              },
              child: const Text('Ke Detail (parameter)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/detail?nama=$username&umur=25');
              },
              child: const Text('Ke Detail (parameter URL)'),
            ),
          ],
        ),
      ),
    );
  }
}