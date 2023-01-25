import 'package:flutter/material.dart';
import 'package:musica_historica/pages/myBlogs.dart';
import 'package:musica_historica/pages/notices.dart';
import 'package:musica_historica/pages/publicBLogs.dart';

List<Widget> paginas = [notices(), myBLogs(), publicBLogs()];

  List<Widget> titulos = [
    Text("Noticias"),
    Text("Mis blogs"),
    Text("Blogs publicos")
  ];