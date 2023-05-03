import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  final String data;
  const FifthScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layar Kelima"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(data),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Kembali"))
          ],
        ),
      ),
    );
  }
}
