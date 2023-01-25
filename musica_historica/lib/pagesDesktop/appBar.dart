import 'package:flutter/material.dart';
import 'package:musica_historica/main.dart';


appBarDesktop(context, titulos , pageActual ){
  return AppBar(
          backgroundColor: Color(0xff005fae),
          centerTitle: true,
          title: titulos[pageActual] ,
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
          ]);
}