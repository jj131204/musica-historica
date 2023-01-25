import 'package:flutter/material.dart';
import 'package:musica_historica/pages/myBlogFiles/cardsBlogs.dart';
import 'package:musica_historica/pages/myBlogFiles/infoBlogs.dart';
import 'package:musica_historica/pages/blogsList.dart';
import 'package:musica_historica/pagesDesktop/appBar.dart';
import 'package:musica_historica/pages/nameFunctionsBlogs.dart';
import 'package:musica_historica/pagesDesktop/drawer.dart';


/** Seccion de mis blogs 2  seleccionada por defecto */
class publicBLogsDesktop extends StatelessWidget {
  int index = 1; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDesktop(context, titulos, index),
      body: Text("HOLA MUNDO"),
      drawer: drawerDesktop(context),
    );
  }
}