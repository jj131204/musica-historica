import 'package:flutter/material.dart';
import 'package:musica_historica/pages/myBlogFiles/editBlog.dart';
import 'package:musica_historica/pages/myBlogFiles/infoBlogs.dart';
import 'package:musica_historica/pages/publicBLogs.dart';
import 'package:musica_historica/pages/blogsList.dart';


miCard(context, index) {
  return Column(
    children: [
      SizedBox(
        height: 15.0,
      ),
      GestureDetector(
        child: Container(
          width: 768.0,
          child: Card(
          child: Column(
            
            children: [
              ListTile(
                iconColor: Color(0xff005fae),
                leading: Icon(Icons.music_note_rounded),
                title: Text(blogs[index].name),
                subtitle: Text(blogs[index].description),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: Text(
                      "Editar",
                      style: TextStyle(fontSize: 15, color: Color(0xff005fae)),
                    ),
                    onPressed: () {
                      Navigator.push(
                  context, MaterialPageRoute(builder: (context) => editBlog(context, blogs[index].name, blogs[index].description, index))
                );
                    },
                  ),
                  TextButton(
                    child: Text(
                      "Compartir",
                      style: TextStyle(fontSize: 15, color: Color(0xff005fae)),
                    ),
                    onPressed: () {
                      Navigator.push(
                  context, MaterialPageRoute(builder: (context) => publicBLogs()));
                    },
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
      ),
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
    ],
  );
}
