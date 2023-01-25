import 'package:flutter/material.dart';

// import que ññama a la funcion miCard() que crea las tarjetas de mis blogs
import 'myBlogFiles/cardsBlogs.dart';
import 'myBlogFiles/infoBlogs.dart';
import 'package:musica_historica/pages/blogsList.dart';


/** Seccion de mis blogs 2  seleccionada por defecto */
class myBLogs extends StatelessWidget {
  const myBLogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff0f4fb),
        child: Column(
          children: [
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

            /** Funcion que contiene las tarjetas de los blogs */
            Expanded(
                child: ListView.builder(
                    itemCount: blogs.length,
                    itemBuilder: (BuildContext context, int index) {
                      /** Funcion que llama a las tarjetas */
                      return miCard(context, index);
                    })),
          ],
        ),
      ),
      /** 
       * Boton flotante */
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff005fae),
          child: Icon(Icons.add_rounded),
        
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>  newBlog())
              );
          }),
    );
  }
}