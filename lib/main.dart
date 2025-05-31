import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// statelesswidget widget immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cosine App",
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 139, 7, 122)),
      ),
      home: const HomePage(),
    );
  }
}

// statefulwidget widget mutable
// tiap menggunakan stateful harus minimal ada createState
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F8F9),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           const SizedBox(height: 16), // Jarak antar tombol
            _neoButton("Cek Kemiripan", backgroundColor: Color(0xFFb5ead6)),
           const SizedBox(height: 16),
            _neoButton("Riwayat Perhitungan", backgroundColor: Color(0xFFF5E24D)),
             const SizedBox(height: 16),
            _neoButton("Tentang Aplikasi", backgroundColor: Color(0xFFff9ba3)),
          ],
        ),
      ),
    );
  }

  // custom button style neobrutalism
  Widget _neoButton(String label, {
    Color backgroundColor = Colors.yellow,
    double borderRadius = 14
  }) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(5, 5), // arah bayangan (kanan bawah)
            blurRadius: 0,        // biar bayangannya tajam (neobrutal)
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {
          print("$label Ditekan");
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          elevation: 0, // matikan shadow default
          backgroundColor: Colors.transparent, // biar warna ambil dari Container
          shadowColor: Colors.transparent,     // matikan shadow default
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
          textStyle: const TextStyle(
            fontSize: 18,
            // fontWeight: FontWeight.w800,
          ),
        ),
        child: Text(label),
      ),
    );
  }
}