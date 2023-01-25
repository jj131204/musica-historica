import 'package:flutter/material.dart';
import 'package:musica_historica/main.dart';
import 'package:musica_historica/pages/nameFunctionsBlogs.dart';
import 'package:musica_historica/pages/blogsList.dart';
import 'package:musica_historica/pagesDesktop/appBar.dart';
import 'package:musica_historica/pagesDesktop/drawer.dart';


class musica_historica_desktop extends StatelessWidget {
  const musica_historica_desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Musica historica",
      debugShowCheckedModeBanner: false,
      home: home_desktop(),
    );
  }
}

class home_desktop extends StatefulWidget {
  const home_desktop({super.key});

  @override
  State<home_desktop> createState() => _home_desktopState();
}

class _home_desktopState extends State<home_desktop> {


  /// The currently selected index of the bar
   int pageActual = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDesktop(context, titulos , pageActual),
      body: paginas[pageActual],
      drawer: drawerDesktop(context)
    );
  }
}