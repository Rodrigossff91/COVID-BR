import 'package:appcoronavirus/screen/dashboard/inicio.dart';
import 'package:appcoronavirus/screen/dashboard/noticias.dart';
import 'package:appcoronavirus/screen/home.dart';
import 'package:appcoronavirus/screen/dashboard/inicio.dart';
import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

import 'alerta.dart';
import 'dica.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final tabs = [Inicio(), Dicas(), Noticias(),
  Alertas()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.exit_to_app),
                color: Colors.tealAccent,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              )
            ],
            backgroundColor: Colors.transparent,
            title:  Padding(
              padding: const EdgeInsets.only(left: 95 ),
              child: Text("CoronaApp ",style: TextStyle(color: Colors.white,fontSize: 30)),
            ),
            
          ),
          body: Center(child: tabs[_currentIndex]),
          floatingActionButton: Container(
            padding: EdgeInsets.only(right: 0,bottom: 10),
            child: FloatingActionButton(
              child: Icon(Icons.question_answer),
              onPressed: () {},
            ),
          ),
          bottomNavigationBar: FFNavigationBar(
              theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.transparent,
           selectedItemBorderColor: Colors.grey[850],
          selectedItemBackgroundColor: Colors.tealAccent,
          selectedItemIconColor: Colors.black,
          selectedItemLabelColor: Colors.white,
        ),
             selectedIndex: _currentIndex,
            items: <FFNavigationBarItem>[
              FFNavigationBarItem(
                  iconData: Icons.home,
                  label: "Inicio"
              ),
                    FFNavigationBarItem(
                  iconData: Icons.widgets ,
                  label: "Dicas"
              ),
              FFNavigationBarItem(
              iconData: Icons.description,
                  label: "Noticias"
              ),
              FFNavigationBarItem(
                 iconData: Icons.notification_important  ,
                  label: "Alertas"
              )],
            onSelectTab: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ));
  }
}


