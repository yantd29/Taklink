import 'package:flutter/material.dart';
import 'postJobCreatedPage.dart';
// import 'package:flutter/widgets.dart';
// import 'homePage.dart';

class CreateJob extends StatefulWidget {
  const CreateJob({super.key});

  @override
  _CreateJobState createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  final titrePosteController = TextEditingController();
  final postesVacantsController = TextEditingController();
  final typeTravailController = TextEditingController();
  final salaireMinimalController = TextEditingController();
  final salaireMaximalController = TextEditingController();
  bool estTempsPlein = false;
  bool estTempsPartiel = false;

  @override
  void dispose() {
    // Nettoyez les contrôleurs lorsque le widget est supprimé.
    titrePosteController.dispose();
    postesVacantsController.dispose();
    typeTravailController.dispose();
    salaireMinimalController.dispose();
    salaireMaximalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double progressDouble = 1 / 2;
    // DateTime dateCreationPoste = DateTime.now();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Column(
          children: [
            jobAppBar(context),
            jobProgressBar(progressDouble),
            Expanded(
              child: Container(
                width: size.width,
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                padding: const EdgeInsets.only(
                    top: 50.0, left: 15.0, right: 15, bottom: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Titre du poste :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        height: 30,
                        child: TextField(
                          controller: titrePosteController,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Titre du job',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 0),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30), // Add this line

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Postes vacants :',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        height: 30,
                        child: TextField(
                          controller: postesVacantsController,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: false),
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Nombre de candidats',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 0),
                          ),
                        ),
                      ),

                      const SizedBox(height: 30), // Add this line

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Salaire du poste par heure:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Min : ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                          SizedBox(
                            width: 100,
                            height: 30,
                            child: TextField(
                              controller: salaireMinimalController,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Minimum',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 0),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text('Max : ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                          SizedBox(
                            width: 100,
                            height: 35,
                            child: TextField(
                              controller: salaireMaximalController,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Maximum',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 0),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),

                      // Entrer du type de travail
                      const SizedBox(height: 30), // Add this line

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Type de travail:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: CheckboxListTile(
                              title: const Text("Temps plein",
                                  style: TextStyle(fontSize: 13)),
                              value: estTempsPlein,
                              onChanged: (newValue) {
                                setState(() {
                                  estTempsPlein = newValue!;
                                });
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  places the checkbox at the start
                            ),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                              title: const Text("Temps partiel",
                                  style: TextStyle(fontSize: 13)),
                              value: estTempsPartiel,
                              onChanged: (newValue) {
                                setState(() {
                                  estTempsPartiel = newValue!;
                                });
                              },
                              controlAffinity: ListTileControlAffinity
                                  .leading, //  places the checkbox at the start
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'icones/save.png',
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Save and',
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        Text('continue later',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => postJobCreated(
                          titrePoste: titrePosteController.text,
                          postesVacants:
                              int.parse(postesVacantsController.text),
                          salaireMinimal:
                              double.parse(salaireMinimalController.text),
                          salaireMaximal:
                              double.parse(salaireMaximalController.text),
                          tempsPlein: estTempsPlein,
                          tempsPartiel: estTempsPartiel,
                        ),
                      ),
                    );
                  },
                  icon: Image.asset(
                    'icones/next.png',
                    color: Colors.black,
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
          // retourne a la page d'accueil
          Navigator.pop(context); // Use the context parameter
        },
      ),

      // ajoute un bouton a droite pour retourner a la page d'accueil
      actions: <Widget>[
        IconButton(
          icon: Image.asset('icones/home2.png',
              width: 20, height: 20, color: Colors.white),
          onPressed: () {
            // retourne a la page d'accueil
            Navigator.pop(context); // Use the context parameter
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
