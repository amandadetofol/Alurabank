import 'package:alurabank/components/sections/recent_items.dart';
import 'package:flutter/material.dart';
import '../components/sections/account_action.dart';
import '../components/sections/header.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
          children: [
            Header(),
            RecentActivities(),
            AccountAction()
          ],
        ),
    );
  }

}