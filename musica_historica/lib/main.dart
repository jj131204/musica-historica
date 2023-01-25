import 'package:flutter/material.dart';
import 'package:musica_historica/home.dart';
import 'package:musica_historica/home_desktop.dart';

void main() {
  runApp(const login());
}

final user = "juan";
final password = "hola1234";

final myControllerUser = TextEditingController();

final myControllerPassw = TextEditingController();

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Musica historica",
      debugShowCheckedModeBanner: false,
      home: loginUser(),
    );
  }
}

class loginUser extends StatefulWidget {
  const loginUser({super.key});

  @override
  State<loginUser> createState() => _loginUserState();
}

class _loginUserState extends State<loginUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff005fae),
        centerTitle: true,
        title: Text("Bienvenido a musica historica"),
      ),
      body: Container(
        child: Center(
          child: newSesion(context),
        ),
      ),
    );
  }
}

newSesion(context) {
  return Container(
      child: Center(
          child: Container(
    constraints: BoxConstraints(
        minWidth: 100, maxWidth: 500, minHeight: 100, maxHeight: 400),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      nombre(),
      SizedBox(
        height: 10.0,
      ),
      campoUsuario(),
      SizedBox(
        height: 10.0,
      ),
      campoContrasena(),
      // espacio
      SizedBox(
        height: 15.0,
      ),
      //boton()]),
      boton(context),
    ]),
  )));
}

Widget nombre() {
  return Text("Iniciar sesión",
      style: TextStyle(
          color: Color(0xff005fae),
          fontSize: 40.0,
          fontFamily: 'Times New Roman'));
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7),
    child: TextField(
      controller: myControllerUser,
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena() {
  print(myControllerPassw);
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 7.0),
    child: TextField(
      controller: myControllerPassw,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
  
}

Widget boton(context) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff005fae),
      ),
      child: Text("Botton"),
      onPressed: () async {
        if (user == myControllerUser.text &&
            password == myControllerPassw.text) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => resposiveDesign(
                musicaHitorica_desktop: musica_historica_desktop(),
                musica_historica: musicaHitorica(),
              )));
        } else {
          print("incorrecto");
          print(myControllerUser);
        }}
  );
}



class  resposiveDesign extends StatelessWidget {
  const  resposiveDesign({
    Key? key,
    required  this.musica_historica,
    required this.musicaHitorica_desktop,
    }): super(key: key);

    final Widget musica_historica;

    final Widget musicaHitorica_desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        
        print(constraints);
        if(constraints.maxWidth > 1000){
          //return musica_historica_desktop();
          return musica_historica;
        }
        return musica_historica;
      },
    );
  }
}


/**
 * musicaHitorica()
*/