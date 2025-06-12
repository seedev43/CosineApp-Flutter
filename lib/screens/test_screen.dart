import 'package:flutter/material.dart';
import 'package:myapp/components/neo_button.dart';
import 'package:myapp/constants/app_colors.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int counter = 0;
  String buttonText = "Test Button";

  void _incrementCounter() {
    setState(() {
      counter++;
      buttonText = "Clicked $counter times";
    });
  }

  void _resetCounter() {
    setState(() {
      counter = 0;
      buttonText = "Test Button";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F8F9),
      appBar: AppBar(
        title: const Text(
          'TEST SCREEN',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        ),
        backgroundColor: NeoBrutalismColors.brutalGreen,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title
              Text(
                'BRUTAL TEST PAGE',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: NeoBrutalismColors.brutalBrown,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              // Counter Display
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: NeoBrutalismColors.brutalBrown,
                    width: 3,
                  ),
                ),
                child: Text(
                  'Counter: $counter',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: NeoBrutalismColors.brutalBrown,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Test Button 1
              NeoButton(
                label: buttonText,
                onPressed: _incrementCounter,
                backgroundColor: NeoBrutalismColors.brutalGreen,
                shadowColor: const Color(0xFFcdcbc4),
                strokeColor: NeoBrutalismColors.brutalBrown,
              ),

              const SizedBox(height: 16),

              // Test Button 2
              NeoButton(
                label: "Reset Counter",
                onPressed: _resetCounter,
                backgroundColor: const Color(0xFFFF6B6B),
                shadowColor: const Color(0xFFD63031),
                strokeColor: NeoBrutalismColors.brutalBrown,
              ),

              const SizedBox(height: 16),

              // Test Button 3
              NeoButton(
                label: "Back to Home",
                onPressed: () {
                  Navigator.pop(context);
                },
                backgroundColor: const Color(0xFF74B9FF),
                shadowColor: const Color(0xFF0984E3),
                strokeColor: NeoBrutalismColors.brutalBrown,
              ),

              const SizedBox(height: 30),

              // Info Text
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFDCB6E),
                  border: Border.all(
                    color: NeoBrutalismColors.brutalBrown,
                    width: 2,
                  ),
                ),
                child: Text(
                  'This is a test screen to demonstrate Neo Brutalism design with interactive buttons!',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: NeoBrutalismColors.brutalBrown,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
