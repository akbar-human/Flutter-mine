import 'package:bwa_app/components/custom_color.dart';
import 'package:bwa_app/components/font_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bwa first',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(s
          title: Text("Mooney"),
          backgroundColor: creamChoco,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print("yakali");
              },
              icon: Icon(Icons.money),
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 25.0, top: 0, right: 25.0, bottom: 0),
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/uang.jpeg'),
                      width: 250,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        bottom: 8.0,
                      ),
                      child: Text(
                        "Get Rich Together",
                        style: mainHeader,
                      ),
                    ),
                    Text(
                      "Save your money little bit and we \nwill help to be rich",
                      style: subHeader,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
