import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  ListData({super.key});

  final List<String> mahasiswa = [
    'Azhri - 33372300',
    'Budi - 33372300',
    'Cici - 33372300',
    'Dodi - 33372300',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: mahasiswa.length,
        itemBuilder: (context, index) {
          return Card(
        child: ListTile(
          leading: Image.network(
            'https://placehold.co/600x400/A020F0/FFFFFF.png',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(mahasiswa[index]),
          subtitle: Text('klik detail'),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('ini adalah mahasiswa ${mahasiswa[index]}'),
            showCloseIcon: true,
          ),
            );
          },
        ),
          );
        },
      ),
    );
  }
}