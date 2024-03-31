import 'package:flutter/material.dart';
import '../components/sections/header.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Header()
          ],
        ),
      )
    );
  }

}