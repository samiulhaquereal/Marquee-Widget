import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 30,
                    child: Center(child: Text(' সর্বশেষ খবর : ',style: TextStyle(color: Colors.white),)),
                    color: Colors.redAccent,
                  ),
                ),
                Expanded(
                  child: Marquee(
                    text: 'পাট অধিদপ্তরের উপসহকারী প্রকৌশলী পদের লিখিত পরীক্ষার সূচি প্রকাশ',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}


