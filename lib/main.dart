import 'package:flutter/material.dart';
import 'dart:math' as math;

class TapboxA extends StatefulWidget {
  @override
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Scaffold(
        backgroundColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0),
        body: Center(
          child: Text(
            'Hey there',
            style: (TextStyle(
                fontSize: 30.0, color: Colors.white, fontFamily: 'Verdana')),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: TapboxA()),
  );
}
