import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(103, 99, 234, 1),
            Color.fromRGBO(155, 105, 254, 1),
            Color.fromRGBO(195, 107, 255, 1),
           ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.zero,
          topRight: Radius.zero,
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0)
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
            top: 80,
            left: 16,
            right: 16,
            bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                    TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                        text: "\$",
                        children: [
                          TextSpan(
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            text: "1.000"
                          )
                        ]
                    ),
                ),
                Text(
                    "Balanço disponível",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Icon(
                size: 42,
                color: Colors.white,
                Icons.account_circle),
          ],
        ),
      )
    );
  }
  
}