import 'package:flutter/material.dart';

void main() => runApp(const ColorTransitionApp());

class ColorTransitionApp extends StatelessWidget {
  const ColorTransitionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorTransitionPage(),
    );
  }
}

class ColorTransitionPage extends StatefulWidget {
  @override
  _ColorTransitionPageState createState() => _ColorTransitionPageState();
}

class _ColorTransitionPageState extends State<ColorTransitionPage> {
  // Define the colors for the two containers
  Color _color1 = Colors.blue;
  Color _color2 = Colors.red;

  // Duration for the animation
  final Duration _duration = const Duration(seconds: 1);

  void _changeColors() {
    setState(() {
      // Change the colors to create a transition effect
      _color1 = _color1 == Colors.blue ? Colors.green : Colors.blue;
      _color2 = _color2 == Colors.red ? Colors.orange : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Transition Example'),
      ),
      body: Row(
        children: [
          // First AnimatedContainer
          Expanded(
            child: AnimatedContainer(
              duration: _duration,
              color: _color1,
              child: Center(
                child: Text(
                  'Container 1',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
          // Second AnimatedContainer
          Expanded(
            child: AnimatedContainer(
              duration: _duration,
              color: _color2,
              child: Center(
                child: Text(
                  'Container 2',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColors,
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}