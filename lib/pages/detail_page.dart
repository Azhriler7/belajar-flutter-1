import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
class DetailPage extends StatelessWidget {
  const DetailPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    // ambil data dari arguments
    final argData = Get.arguments;
    final paramData = Get.parameters;
 
    // ambil data dari URL parameters
    final namaParam = Get.parameters['nama'];
    final umurParam = Get.parameters['umur'];
 
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data dari arguments:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Nama: ${argData != null ? argData['nama'] : '-'}'),
            Text('Umur: ${argData != null ? argData['umur'] : '-'}'),
            SizedBox(height: 20),
            Text(
              'Data dari parameters:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Nama: ${paramData['nama'] ?? '-'}'),
            Text('Umur: ${paramData['umur'] ?? '-'}'),
            SizedBox(height: 20),
            Text(
              'Data dari URL parameters:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Nama: ${namaParam ?? '-'}'),
            Text('Umur: ${umurParam ?? '-'}'),
          ],
        ),
      ),
    );
  }
}