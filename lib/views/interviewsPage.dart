import 'package:flutter/material.dart';

class InterviewsPage extends StatelessWidget {
  const InterviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var platform = Theme.of(context).platform;
    print('Size: $size');
    print('Platform: $platform');

    return Scaffold(
      appBar: taklinkAppBar(),
      body: Container(
        height: size.height,
        width: size.width,
        color: const Color.fromRGBO(255, 255, 255, 0.5),
        // margin: EdgeInsets.all(10),
        padding: const EdgeInsets.only(top: 100),
        child: spanDemo(),
      ),

      // appBar: AppBar(
      //   title: const Text('Les widgets basiques', style: TextStyle(color: Colors.red)),
      // ),
    );
  }

  taklinkAppBar() {
    return AppBar(
        title: titreOngletText('My Interviews'),
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
        color: Colors.blue,
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
        simpleText('Vous etes sur la page des interviews'),
        simpleText('Hello tout le monde!'),
      ],
    );
  }
}
