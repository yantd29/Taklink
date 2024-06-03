import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'views/homePage.dart';
import 'views/collectionsPage.dart';
import 'views/interviewsPage.dart';
import 'views/employeesPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    CollectionsPage(),
    const InterviewsPage(),
    const EmployeesPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Set this to fixed
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('icones/home2.png',
                color: Colors.black), // Add this line
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'icones/collection.png',
              color: Colors.black,
            ),
            label: 'Collection',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'icones/interviews.png',
              color: Colors.black,
            ),
            label: 'Interviews',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'icones/workers.png',
              color: Colors.black,
            ),
            label: 'Employees',
          ),
        ],

        unselectedItemColor: Colors.black,
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w500, fontSize: 11),
        selectedItemColor: const Color.fromRGBO(32, 92, 207, 1),
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
        backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
      ),
    );
  }
}
