import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  final Key? key;
  const ConverterPage({this.key}) : super(key: key);

  @override
  State<ConverterPage> createState() => _CalculatorState();
}

class _CalculatorState extends State<ConverterPage> {
  double kilometers = 0;
  double miles = 0;

  void convertKilometersToMiles() {
    setState(() {
      miles = kilometers * 0.621371;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kilometer to Mile Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Kilometers',
              ),
              onChanged: (value) {
                setState(() {
                  kilometers = double.tryParse(value) ?? 0;
                });
              },
            ),
            const SizedBox(height: 16.0),
            Text(
              'Miles: $miles',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: convertKilometersToMiles,
              child: const Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
