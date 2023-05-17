import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
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
  final items = [
    Icon(Icons.add, size: 30),
    Icon(
      Icons.list,
      size: 30,
    ),
    Icon(
      Icons.compare_arrows,
      size: 30,
    ),
    Icon(Icons.search_rounded),
    Icon(Icons.person)
  ];
  var index = 2;
  final itemsPage = [
    "Add",
    "List",
    "Compare",
    "Search",
    "Account"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 201, 201, 255)!, Color.fromARGB(255, 15, 13, 161)!],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$index",
                  style: TextStyle(
                      fontSize: 150,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  itemsPage[index],
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[900]),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          animationDuration: const Duration(milliseconds: 400),
          height: 55,
          backgroundColor: Colors.transparent,
          index: index,
          onTap: (index) => setState(() {
            this.index = index;
          }),
        ),
      ),
    );
  }
}
