import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double numSlider = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularPercentIndicator(
              radius: 130.0,
              lineWidth: 10.0,
              percent: numSlider,
              animation: true,
              animationDuration: 700,
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
             // center: Text("numberSlider: ${numSlider}"),
            ),
            Slider(
              min: 0.0,
                max: 1.0,
              divisions: 10,
                value: numSlider,
                onChanged: (val) {
                  setState(() {
                    numSlider = val;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
