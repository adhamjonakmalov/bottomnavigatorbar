import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int current = 0;

  List<Widget> bodyPart = [
    Container(color: Colors.white, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Image.asset('img/dog.png'), const Padding(padding: EdgeInsets.only(bottom: 80, top: 20), child: Text('My Sweet Home', style: TextStyle(fontSize: 28)))])),
    Container(color: Colors.white, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Image.asset('img/hen.png'), const Padding(padding: EdgeInsets.only(bottom: 80, top: 20), child: Text('My Sweet Animal', style: TextStyle(fontSize: 28)))])),
    Container(color: Colors.white, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Image.asset('img/flower.png'), const Padding(padding: EdgeInsets.only(bottom: 80, top: 20), child: Text('My Sweet Flower', style: TextStyle(fontSize: 28)))])),
    Container(color: Colors.white, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Image.asset('img/1.png'), const Padding(padding: EdgeInsets.only(bottom: 80, top: 20), child: Text('My Profile', style: TextStyle(fontSize: 28)))])),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(elevation: 0, backgroundColor: Colors.white, title: const Text('Home', style: TextStyle(color: Color(0xFF1D1A20), fontSize: 25))),
            body: Center(child: bodyPart[current]),
            bottomNavigationBar: BottomNavigationBar(
                onTap: (value) {
                  setState(() {
                    current = value;
                  });
                },
                currentIndex: current,
                items: [
                  BottomNavigationBarItem(icon: Image.asset('img/dog-house 1 (1).png'), label: 'Home'),
                  BottomNavigationBarItem(icon: Image.asset('img/hen 1 (1).png'), label: 'Animal'),
                  BottomNavigationBarItem(icon: Image.asset('img/flower 1 (1).png'), label: 'Plants'),
                  BottomNavigationBarItem(icon: Image.asset('img/farmer (1) 1 (1).png'), label: 'Profile'),
                ])));
  }
}
