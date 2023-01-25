import 'package:flutter/material.dart';
import 'package:musica_historica/main.dart';
import 'package:musica_historica/pages/nameFunctionsBlogs.dart';

class musicaHitorica extends StatelessWidget {
  const musicaHitorica({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Musica historica",
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _pageActual = 1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff005fae),
          centerTitle: true,
          title: titulos[_pageActual] ,
          // Icono de logout del appBar
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
          ]),
      body: paginas[_pageActual],

      bottomNavigationBar: BottomNavigationBar(
        
        currentIndex: _pageActual,

        // Sirve para subrayar el icono seleccionado
        // index = a la posicion que este seleccionada en los items del bottonNavigatorBar.

        fixedColor: Color(0xff005fae),

        onTap: (index) {
          setState(() {
            _pageActual = index;
          });
        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper_rounded), label: "Noticias"
              ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize_rounded),
            label: "Mis blogs",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public_rounded),
            label: "blogs publicos",
          ),
        ],
      ),
    );
  }
}

_logout(context) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('AlertDialog Title'),
      content: const Text('AlertDialog description'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text(
            'Cancel',
            style: TextStyle(color: Color(0xff005fae)),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK', style: TextStyle(color: Color(0xff005fae))),
        ),
      ],
    ),
  );
}
