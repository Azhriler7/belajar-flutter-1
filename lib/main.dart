import 'package:belajar2/pages/list_data.dart';
import 'package:flutter/material.dart';
import 'package:belajar2/pages/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyAppStateful extends StatefulWidget {
  const MyAppStateful({super.key});

  @override
  State<MyAppStateful> createState() => _MyAppStatefulState();
}

class _MyAppStatefulState extends State<MyAppStateful> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      title: 'Belajar State',
      home: const CounterPage(),
    );
  }
}
 
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
 
  @override
  State<CounterPage> createState() => _CounterPageState();
}
 
class _CounterPageState extends State<CounterPage> {
  int count = 0;
  TextEditingController nameController = TextEditingController();
  String name = '';
 
  void increment() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  void decrement(){
    setState((){
      count--;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Jumlah klik : '),
            Text('$count'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ElevatedButton(
                  onPressed: () {
                  increment();
                  },
                  child: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                  decrement();
                  },
                  child: Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () {
                  reset();
                  },
                  child: Icon(Icons.refresh),
                ),
                ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListData()),
                  );
                  },
                  child: Icon(Icons.arrow_forward),
                ),
                ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()),
                  );
                  },
                  child: Icon(Icons.access_time_filled_sharp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatefulWidget { //statuful widget
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final TextEditingController controllerNama = TextEditingController(); // TextEditingController untuk mengambil input teks
//   String nama = "";
//   final kunciForm = GlobalKey<FormState>(); // Kunci untuk form
//   Color bgColor = Colors.white; // Warna background default

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'header app',
//       home: Scaffold(
//         backgroundColor: bgColor,
//         appBar: AppBar(
//           toolbarHeight:  100,
//           title: const Text('MyApp', style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'sans-serif', fontWeight: FontWeight.w900)),
//           backgroundColor: Colors.deepOrangeAccent,
//           centerTitle: false,
//         ),
//         body: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(20),
//             child: Form( // Form untuk validasi input
//               key: kunciForm, 
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextFormField( //box input nama
//                     controller: controllerNama,
//                     decoration: InputDecoration(
//                       labelText: 'Input nama kamu disini',
//                       hintText: 'contoh: Azhriler',
//                       border: OutlineInputBorder(),
//                       contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//                       filled: true,
//                       fillColor: Colors.grey[200],
//                     ),
//                     validator:(value) { //validasi input
//                       if(value == null || value.isEmpty){
//                         return 'nama tidak boleh kosong';
//                       }
//                       return null;
//                     },
//                   ),
//                   const SizedBox(height: 20),
//                   SizedBox(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.deepOrangeAccent,
//                             padding: const EdgeInsets.symmetric(vertical: 10),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.zero,
//                             ),
//                           ),
//                           onPressed: () {
//                             if (kunciForm.currentState!.validate()){ //validasi form
//                               setState(() { //set state untuk update UI
//                                 nama = controllerNama.text;  //ambil input nama
//                                 bgColor = bgColor == Colors.white ? Colors.orangeAccent : Colors.white; //ganti bgColor jika tombol ditekan
//                               });
//                               FocusScope.of(context).unfocus(); 
//                             }
//                           },
//                           child: const Text('Enter', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)), 
//                         ),
//                         const SizedBox(height: 20),
//                         Text( //output
//                           nama.isEmpty ? '' : 'Halo, $nama', //output nama jika nama tidak kosong
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               )
//             )
//           ),
//         )
//       )
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter Demo Home Page'),
//           backgroundColor: Colors.green,
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.add_box_rounded),
//               onPressed: () {
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.camera_alt),
//               onPressed: () {
//               },
//             ),
//           ],
//         ),

//         body: Center(
//           child: Image.asset(
//             'lib/assets/Untirta-Logo-Transparan.webp',
//             width: 200,
//             height: 200,
//             fit: BoxFit.cover,
//           ),
//         ),

//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//           },
//           child: const Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
