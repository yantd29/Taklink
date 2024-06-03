import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart'; // Importation d'une bibliothèque non utilisée
import 'views/homePage.dart'; // Importation de la page d'accueil
import 'views/collectionsPage.dart'; // Importation de la page des collections
import 'views/interviewsPage.dart'; // Importation de la page des entretiens
import 'views/employeesPage.dart'; // Importation de la page des employés

void main() {
  runApp(const MyApp()); // Point d'entrée de l'application
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.blue, // Thème de l'application non défini
          ),
      home: const MyHomePage(), // Page d'accueil de l'application
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
    HomePage(), // Page d'accueil
    CollectionsPage(), // Page des collections
    const InterviewsPage(), // Page des entretiens
    const EmployeesPage(), // Page des employés
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index; // Met à jour l'index de la page actuelle
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[
          _currentIndex], // Affiche la page correspondant à l'index actuel
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType
            .fixed, // Définit le type de la barre de navigation en bas de l'écran
        onTap:
            _onTabTapped, // Appelé lorsque l'utilisateur appuie sur un élément de la barre de navigation
        currentIndex: _currentIndex, // Index de la page actuelle
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('icones/home2.png',
                color: Colors.black), // Icône de la page d'accueil
            label: 'Home', // Libellé de la page d'accueil
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'icones/collection.png',
              color: Colors.black,
            ),
            label: 'Collection', // Libellé de la page des collections
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'icones/interviews.png',
              color: Colors.black,
            ),
            label: 'Interviews', // Libellé de la page des entretiens
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'icones/workers.png',
              color: Colors.black,
            ),
            label: 'Employees', // Libellé de la page des employés
          ),
        ],

        unselectedItemColor:
            Colors.black, // Couleur des éléments non sélectionnés
        unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11), // Style du libellé des éléments non sélectionnés
        selectedItemColor: const Color.fromRGBO(
            32, 92, 207, 1), // Couleur de l'élément sélectionné
        selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12), // Style du libellé de l'élément sélectionné
        backgroundColor: const Color.fromRGBO(
            244, 244, 244, 1), // Couleur de fond de la barre de navigation
      ),
    );
  }
}
