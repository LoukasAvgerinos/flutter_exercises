import 'package:flutter/material.dart';

class NumberMinus extends StatefulWidget {
  const NumberMinus({super.key});

  @override
  NumberMinusState createState() => NumberMinusState();
}

class NumberMinusState extends State<NumberMinus> {
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();
  String _result = '';
  String _error = '';

  @override
  void dispose() {
    _number1Controller.dispose();
    _number2Controller.dispose();
    super.dispose();
  }

  void _subtractNumbers() {
    setState(() {
      _error = '';
      _result = '';

      try {
        final num number1 = double.parse(_number1Controller.text);
        final num number2 = double.parse(_number2Controller.text);
        final num difference = number1 - number2;

        // Format result to remove .0 for whole numbers
        _result =
            difference % 1 == 0
                ? difference.toInt().toString()
                : difference.toString();
      } catch (e) {
        _error = 'Please enter valid numbers';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _number1Controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'First Number'),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _number2Controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Second Number'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _subtractNumbers,
            child: const Text('Subtract Numbers'),
          ),
          const SizedBox(height: 16),
          if (_error.isNotEmpty)
            Text(_error, style: const TextStyle(color: Colors.red)),
          if (_result.isNotEmpty)
            Text(
              'Result: $_result',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
        ],
      ),
    );
  }
}
