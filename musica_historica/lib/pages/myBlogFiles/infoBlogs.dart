import 'package:flutter/material.dart';
import 'package:musica_historica/home.dart';
import 'package:musica_historica/pages/myBlogFiles/cardsBlogs.dart';
import 'package:musica_historica/pages/myBlogs.dart';
import 'package:musica_historica/pages/blogsList.dart';
import '../../main.dart';

final nameInfoBlog = TextEditingController();
final imageInfoBlog = TextEditingController();
final linkInfoBlog = TextEditingController();
final descriptionInfoBlog = TextEditingController();

class newBlog extends StatelessWidget {
  const newBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff005fae),
          centerTitle: true,
          title: Text("Crear un nuevo blog"),
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
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => login())),
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

                Padding(padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                child: Text(
                  "En esta sección podras encontras tus blogs privados, podras crear, editar o compartir tus blogs.",
                  style: TextStyle(fontSize: 12, color: Color(0xff333333), )
                ),),

                nameBlog(),
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
                descriptionBlog(),
                SizedBox(
                  height: 25.0,
                ),
                guardarBlog(context),
              ],
            ),
          ),
        ));
  }
}

Widget nameBlog() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7),
    child: TextField(
      controller: nameInfoBlog,
      decoration: InputDecoration(
        hintText: "Nombre",
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
      controller: imageInfoBlog,
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
      controller: linkInfoBlog,
      decoration: InputDecoration(
        hintText: "Insertar link",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget descriptionBlog() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7),
    child: TextField(
      maxLines: null,
      controller: descriptionInfoBlog,
      decoration: InputDecoration(
        hintText: "Descripción",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

guardarBlog(context) {
  return ElevatedButton(
      child: Text("Guardar blog"),
      onPressed: () async{
      
        blogs.add(
          Blogs(nameInfoBlog.text, descriptionInfoBlog.text)
        );
        Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home() ));
                  print(myControllerUser);
      });
}
