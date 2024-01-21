import 'package:flutter/material.dart';

void main() => runApp(SliderApp());

class SliderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderExample(),
    );
  }
}

class SliderExample extends StatefulWidget {
  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _currentSliderValue = 20;
  int abc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Center(
        child: Container(
          height: 1000,
          width: 1200,
          color: Colors.purpleAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$abc",
                style: TextStyle(fontSize: 50, color: Colors.brown),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  inactiveTrackColor: Color(0xFF8D8E98),
                  activeTrackColor: Colors.white,
                  thumbColor: Color(0xFFEB1555),
                  overlayColor: Color(0xffffffff),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                ),
                child: Slider(
                  value: _currentSliderValue,
                  max: 100,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                      abc = _currentSliderValue.round();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
