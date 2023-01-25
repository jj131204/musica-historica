import 'package:flutter/material.dart';
import 'package:musica_historica/pagesDesktop/pagesDesktopInfo/myBlogsDesktop.dart';
import 'package:musica_historica/pagesDesktop/pagesDesktopInfo/noticesDesktop.dart';
import 'package:musica_historica/pagesDesktop/pagesDesktopInfo/publicBlogsDesktop.dart';

int index = 1;

drawerDesktop(context){
  return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff005fae),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Icon(Icons.music_note_rounded), 
                    ),
                  SizedBox(
                    height: 30.0,
                  )
                ],
              )
          ),
          SizedBox(
            height: 30.0,
          ),
          ListTile(
              leading:Icon(Icons.newspaper_rounded) ,
              title: Text("Noticias"),
              onTap: (){
                
                Navigator.push(context, MaterialPageRoute(builder: (context) => noticesBlogsDesktop()));
              }
              ),
              SizedBox(
                    height: 30.0,
                  ),
          ListTile(
              leading:Icon(Icons.dashboard_customize_rounded) ,
              title: Text("Mis blogs"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => myBLogs2()));
              },
              ),
              SizedBox(
                    height: 30.0,
                  ),
          ListTile(
              leading:Icon(Icons.public_rounded) ,
              title: Text("Blogs publicos"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => publicBLogsDesktop()));
              },
              ),
          ],
        ),
      );
}