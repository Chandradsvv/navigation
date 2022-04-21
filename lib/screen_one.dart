import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/screen_two.dart';

class screenone extends StatefulWidget {
  const screenone({Key? key}) : super(key: key);

  @override
  _screenoneState createState() => _screenoneState();
}

class _screenoneState extends State<screenone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("navigation_Example"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screentwo()),
              );

            },
            child: const Text('Go back!'),
          ),
        ),
      ),
    );
  }
}
