import 'package:flutter/material.dart';

void main() {
  runApp(CornerRadiusApp());
}

class CornerRadiusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CornerRadiusScreen(),
    );
  }
}

class CornerRadiusScreen extends StatefulWidget {
  @override
  _CornerRadiusScreenState createState() => _CornerRadiusScreenState();
}

class _CornerRadiusScreenState extends State<CornerRadiusScreen> {
  // Початкові значення радіусів для кожного з кутів
  double topLeftRadius = 0;
  double topRightRadius = 0;
  double bottomLeftRadius = 0;
  double bottomRightRadius = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Corner Radius Configurator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeftRadius),
                  topRight: Radius.circular(topRightRadius),
                  bottomLeft: Radius.circular(bottomLeftRadius),
                  bottomRight: Radius.circular(bottomRightRadius),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Top Left Radius: ${topLeftRadius.toInt()}'),
            Slider(
              value: topLeftRadius,
              min: 0,
              max: 75,
              onChanged: (value) {
                setState(() {
                  topLeftRadius = value;
                });
              },
            ),
            Text('Top Right Radius: ${topRightRadius.toInt()}'),
            Slider(
              value: topRightRadius,
              min: 0,
              max: 75,
              onChanged: (value) {
                setState(() {
                  topRightRadius = value;
                });
              },
            ),
            Text('Bottom Left Radius: ${bottomLeftRadius.toInt()}'),
            Slider(
              value: bottomLeftRadius,
              min: 0,
              max: 75,
              onChanged: (value) {
                setState(() {
                  bottomLeftRadius = value;
                });
              },
            ),
            Text('Bottom Right Radius: ${bottomRightRadius.toInt()}'),
            Slider(
              value: bottomRightRadius,
              min: 0,
              max: 75,
              onChanged: (value) {
                setState(() {
                  bottomRightRadius = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
