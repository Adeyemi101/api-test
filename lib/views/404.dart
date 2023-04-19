import 'package:flutter/material.dart';
import 'package:giftify/helpers/labels.dart';
import 'package:giftify/helpers/labels.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key,required this.page}) : super(key: key);

  final String page;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar:  AppBar(
        title:  Text(Labels.appTitle),
        actions: <Widget>[
           IconButton(
            icon:  Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
           IconButton(
            icon:  Icon(Icons.monetization_on),
            onPressed: () {},
          )
        ],
      ),
      body:  Container(
        color: Colors.blue,
        child: Text(Labels.pageNotFound + " " + page),
      ),
    );
  }
}
