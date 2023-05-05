import 'package:belajar_navigasi/secondscreen.dart';
import 'package:belajar_navigasi/thirdscreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  Future<void> _navigateScreen(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => ThirdScreen()));

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layar Pertama"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SecondScreen(data: 'Helo from First Screen')));
                },
                child: Text("Menuju Ke Layar Kedua")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  _navigateScreen(context);
                },
                child: Text("Menuju Layar Ketiga")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/fourth'); //ssss
                },
                child: Text('Menuju Layar Keempat dengan animasi')),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/fifth',
                      arguments: 'hai apa kabar');
                },
                child: Text('Menuju Layar Kelima')),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detail/1');
                },
                child: Text('Menuju Layar Detail Id 1')),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detail/2');
                },
                child: Text('Menuju Layar Detail Id 2')),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detail/2');
                },
                child: Text('test button2'))
          ],
        ),
      ),
    );
  }
}
