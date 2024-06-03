import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var platform = Theme.of(context).platform;
    print('Size: $size');
    print('Platform: $platform');

    return Scaffold(
      appBar: taklinkAppBar(),
      body: Container(
        height: (size.height - 0),
        width: size.width,
        color: const Color.fromRGBO(255, 255, 255, 0.5),
        // margin: EdgeInsets.all(10),
        padding: const EdgeInsets.only(top: 100),
        child: spanDemo(),
      ),
    );
  }

  // Mes fonctions
  taklinkAppBar() {
    return AppBar(
        title: titreOngletText('My Collections'),
        backgroundColor: const Color.fromRGBO(32, 92, 207, 1),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('icones/magnifier.png'),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('icones/bell.png'),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            size: 30,
          ),
          color: Colors.white,
          onPressed: () {},
        ));
  }

  Text simpleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15,
        color: Colors.red,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
      textAlign: TextAlign.center,
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

  Column spanDemo() {
    return Column(
      children: <Widget>[
        simpleText('Salut tout le monde!'),
        simpleText('Vous etes sur la page des collections'),
        simpleText('Hello tout le monde!'),
      ],
    );
  }
}
