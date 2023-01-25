import 'package:flutter/material.dart';
import 'package:musica_historica/home.dart';
import 'package:musica_historica/main.dart';
import 'package:musica_historica/pages/myBlogFiles/cardsBlogs.dart';
import 'package:musica_historica/pages/myBlogs.dart';
import 'package:musica_historica/pages/blogsList.dart';

final nameEditBlog = TextEditingController();
final imageEditBlog = TextEditingController();
final linkEditBlog = TextEditingController();
final descriptionEditBlog = TextEditingController();

/** 
 * Variable que almacena los valores editados del blog para cambiarlos por los valores que ya exiten en la lista
 */

editBlog(context, nameNewBLog, descriptionNewBlog, index) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff005fae),
        centerTitle: true,
        title: Text("Edita tu blog"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.logout_rounded),
              // Funcion para que aparezca el alertDialog con la confirmación de cerrar sesion
              onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Cerrar sesión'),
                      content: const Text(
                          '¿Estas seguro que quieres cerrar sesión?'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Cancelar'),
                          onPressed: () => Navigator.pop(context, 'Cancelar'),
                        ),
                        TextButton(
                          child: const Text('Salir'),
                          onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => login())),
                        ),
                      ],
                    ),
                  )),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                child: Text(
                    "En esta sección podras encontras tus blogs privados, podras crear, editar o compartir tus blogs.",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff333333),
                    )),
              ),
              nameBlog(nameNewBLog),
              SizedBox(
                height: 15.0,
              ),
              imageBLog(),
              SizedBox(
                height: 15.0,
              ),
              linkBlog(),
              SizedBox(
                height: 15.0,
              ),
              descriptionBlog(descriptionNewBlog),
              SizedBox(
                height: 25.0,
              ),
              guardarBlog(context, index),
            ],
          ),
        ),
      ));
}

Widget nameBlog(nameNewBLog) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7),
    child: TextField(
      controller: nameEditBlog,
      decoration: InputDecoration(
        counterText: nameNewBLog,
        hintText: nameNewBLog,
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

// widget imagen buscar como hacerlo
Widget imageBLog() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      controller: imageEditBlog,
      decoration: InputDecoration(
        hintText: "Insertar imagen",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget linkBlog() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      controller: linkEditBlog,
      decoration: InputDecoration(
        hintText: "Insertar link",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget descriptionBlog(descriptionNewBlog) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7),
    child: TextField(
      maxLines: null,
      controller: descriptionEditBlog,
      decoration: InputDecoration(
        hintText: descriptionNewBlog,
        fillColor: Colors.white,
        filled: true,
      ),
      onChanged: (text) {
        print(text);
      },
    ),
  );
}

guardarBlog(context, index) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff005fae),
      ),
      child: Text("Guardar blog"),
      onPressed: () async {
        final editBLog = Blogs(nameEditBlog.text, descriptionEditBlog.text);

        blogs[index] = editBLog;

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => home()));
        print(myControllerUser);
      });
}
