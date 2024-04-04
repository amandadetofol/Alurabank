import 'package:alurabank/components/sections/recent_items.dart';
import 'package:flutter/material.dart';
import '../components/sections/account_action.dart';
import '../components/sections/account_points.dart';
import '../components/sections/header.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
              Header(),
              RecentActivities(),
              AccountAction(),
              AccountPoints(),
            ],
          ),
      ),
    );
  }

}