import 'package:flutter/material.dart';

// import que ññama a la funcion miCard() que crea las tarjetas de mis blogs
import 'package:musica_historica/pages/myBlogFiles/cardsBlogs.dart';
import 'package:musica_historica/pages/myBlogFiles/infoBlogs.dart';
import 'package:musica_historica/pages/blogsList.dart';
import 'package:musica_historica/pagesDesktop/appBar.dart';
import 'package:musica_historica/pages/nameFunctionsBlogs.dart';
import 'package:musica_historica/pagesDesktop/drawer.dart';


/** Seccion de mis blogs 2  seleccionada por defecto */
class myBLogs2 extends StatelessWidget {
  int index = 1; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDesktop(context, titulos, index),
      body: myBlogsDesktop(context),
      drawer: drawerDesktop(context),
    );
  }
}

myBlogsDesktop(context){

  return Container(
    child: Column(
      
      children: <Widget>[
        SizedBox(
          height: 15.0,
        ),
            // contenedor del texto inicial
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            "En esta sección podras encontras tus blogs privados, podras crear, editar o compartir tus blogs.",
            style: TextStyle(fontSize: 12, color: Color(0xff333333)),
          ),
        ),

        SizedBox(
              height: 15.0,
        ),

        Row(
          children: [
            Expanded(child: functionsCards(context))
          ],
        )

        /*GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          children: [
            Expanded(
                child: functionsCards(context)
            )

          ],
        ),*/

        /** cards */
      ],
    ),
  );
}

functionsCards(context){
  return ListView.builder(
                    itemCount: blogs.length,
                    itemBuilder: (BuildContext context, int index) {
                      /** Funcion que llama a las tarjetas */
                      return miCard(context, index);
  });
}
