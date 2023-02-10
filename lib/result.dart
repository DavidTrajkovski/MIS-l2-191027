import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;

  Result(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
        TextButton(
        child: Text(
          'Restart Quiz!',
          style: TextStyle(fontSize: 30),
        ),
        style: TextButton.styleFrom(
          foregroundColor: Colors.blue,
          alignment: Alignment.topCenter
        ),
        onPressed: resetHandler,
      ),
    );
  }
}
