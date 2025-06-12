import 'package:flutter/material.dart';
import 'package:myapp/constants/app_colors.dart';
import 'package:myapp/screens/test_screen.dart';
import 'components/neo_button.dart';

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
            NeoButton(
              label: "Cek Kemiripan",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TestScreen()),
                );
              },
              backgroundColor: NeoBrutalismColors.brutalGreen,
              shadowColor: Color(0xFFcdcbc4),
              strokeColor: NeoBrutalismColors.brutalBrown,
            ),

            const SizedBox(height: 16),
            NeoButton(
              label: "Riwayat Perhitungan",
              onPressed: () {
                print("Cek");
              },
              backgroundColor: NeoBrutalismColors.brutalYellow,
              shadowColor: Color(0xFFcdcbc4),
              strokeColor: NeoBrutalismColors.brutalBrown,
            ),

            const SizedBox(height: 16),
            NeoButton(
              label: "Tentang Aplikasi",
              onPressed: () {
                print("Cek");
              },
              backgroundColor: NeoBrutalismColors.brutalRed,
              shadowColor: Color(0xFFcdcbc4),
              strokeColor: NeoBrutalismColors.brutalBrown,
            ),
          ],
        ),
      ),
    );
  }
}
