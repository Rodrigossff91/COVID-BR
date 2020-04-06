import 'package:flutter/material.dart';


class Noticias extends StatefulWidget {
  const Noticias({
    Key key,
  }) : super(key: key);

  @override
  _NoticiasState createState() => _NoticiasState();
}

class _NoticiasState extends State<Noticias> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 30.0, top: 10.0, right: 30.0, bottom: 75.0),
          child: Container(
              color: Colors.white,
              child: Center(
                  child: Text(
                "Noticias",
                style: TextStyle(color: Colors.black),
              ))),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.0),
            bottomRight: Radius.circular(25.0),
          ),
          color: Colors.white,
        ),
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}