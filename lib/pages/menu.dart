import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final String linkGambar = 'https://placehold.co/600x400/A020F0/FFFFFF.png';

  final List<String> kategori = [ //list kategiri
    'Makanan',
    'Minuman',
    'Makanan',
    'Minuman',
    'Makanan',
    'Minuman',
    'Makanan',
    'Minuman',
    'Makanan',
    'Minuman',
  ];

  final List<Map<String, String>> produk = [ //list produk
    {'name': 'Nasi Goreng', 'price': 'Rp 20.000'},
    {'name': 'Ayam Penyet', 'price': 'Rp 22.000'},
    {'name': 'Mie Goreng', 'price': 'Rp 18.000'},
    {'name': 'Soto Ayam', 'price': 'Rp 15.000'},
    {'name': 'Rendang Daging', 'price': 'Rp 35.000'},
    {'name': 'Es Jeruk', 'price': 'Rp 10.000'},
    {'name': 'Nasi Goreng Spesial', 'price': 'Rp 25.000'},
    {'name': 'Es Teh Manis', 'price': 'Rp 8.000'},
    {'name': 'Kentang Goreng', 'price': 'Rp 15.000'},
    {'name': 'Puding Cokelat', 'price': 'Rp 18.000'},
    {'name': 'Ayam Geprek', 'price': 'Rp 28.000'},
    {'name': 'Kopi Susu', 'price': 'Rp 20.000'},
    {'name': 'Salad Buah', 'price': 'Rp 22.000'},
    {'name': 'Mie Ayam Bakso', 'price': 'Rp 23.000'},
    {'name': 'Sate Ayam', 'price': 'Rp 30.000'},
    {'name': 'Jus Alpukat', 'price': 'Rp 18.000'},
    {'name': 'Lemon Tea Hangat', 'price': 'Rp 12.000'},
    {'name': 'Cireng Bumbu Rujak', 'price': 'Rp 12.000'},
    {'name': 'Tahu Crispy', 'price': 'Rp 10.000'},
    {'name': 'Es Campur', 'price': 'Rp 20.000'},
  ];

  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: kategori.length,
                itemBuilder: (context, index) {
                  final categoryName = kategori[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = categoryName;
                      });
                    },
                    child: Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: selectedCategory == categoryName
                            ? Colors.blue
                            : Colors.grey[200],
                        border: Border.all(
                          color: selectedCategory == categoryName
                              ? Colors.blue
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              linkGambar,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                              loadingBuilder: (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes != null
                                        ? loadingProgress.cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                );
                              },
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.broken_image, size: 50);
                              },
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            categoryName,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: produk.length,
              itemBuilder: (context, index) {
                final product = produk[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${product['name']} Harganya ${product['price']}'),
                          duration: const Duration(seconds: 2),
                          showCloseIcon: true,
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              linkGambar,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                              loadingBuilder: (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes != null
                                        ? loadingProgress.cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                );
                              },
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.broken_image, size: 80);
                              },
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product['name']!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  product['price']!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}