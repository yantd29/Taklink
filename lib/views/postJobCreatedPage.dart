import 'package:flutter/material.dart';
import '../main.dart';
// import 'package:flutter/widgets.dart';

class postJobCreated extends StatelessWidget {
  const postJobCreated({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double progress = 1;
    String titrePoste = '';
    String postesVacants = '';
    String typeTravail = '';
    DateTime dateCreationPoste = DateTime.now();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Column(
          children: [
            jobAppBar(context),
            jobProgressBar(progress),
            Expanded(
              child: Container(
                height: size.height,
                width: size.width,
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                padding: const EdgeInsets.only(
                    top: 50.0, left: 15.0, right: 15, bottom: 15),
                child: const Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Titre du poste :',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                    Text('Développeur Flutter'),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Postes vacants :',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                    Text('2'),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Type de travail :',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                    Text('CDI'),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Date de création du poste :',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                    Text('2021-10-01'),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromRGBO(255, 255, 255, 0.5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: TextButton.icon(
                    onPressed: () {
                      // Ajoutez votre logique de sauvegarde ici...
                    },
                    icon: const Icon(Icons.save, color: Colors.white),
                    label: const Text('Post',
                        style: TextStyle(
                            color: Colors
                                .white)), // Ici, nous définissons la couleur du texte en blanc
                    style: TextButton.styleFrom(
                      backgroundColor: Colors
                          .blue, // Ici, nous définissons la couleur de fond en bleu
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Mes fonctions
  jobAppBar(BuildContext context) {
    // Add the BuildContext parameter
    return AppBar(
      title: titreOngletText('Create Job'),
      backgroundColor: const Color.fromRGBO(32, 92, 207, 1),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          // retourne a la page precedente
          Navigator.pop(context); // Use the context parameter
        },
      ),

      // ajoute un bouton a droite pour retourner a la page d'accueil
      actions: <Widget>[
        IconButton(
          icon: Image.asset('icones/home2.png',
              width: 20, height: 20, color: Colors.white),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
              (Route<dynamic> route) => false,
            );
          },
        ),
      ],
    );
  }

  jobProgressBar(double progress) {
    return LinearProgressIndicator(
      value: progress,
      backgroundColor: Colors.grey,
      valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
    );
  }

  Text titreOngletText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      textAlign: TextAlign.center,
    );
  }
}
