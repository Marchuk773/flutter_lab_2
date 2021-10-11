import 'package:flutter/material.dart';
import 'user_feed_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Old Twitter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Old Twitter Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserFeedPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search,
              color: Colors.blueGrey,
            ),
          ),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.circle_notifications,
                color: Colors.blueGrey,
              )),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.mail,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
