import 'package:flutter/material.dart';
import '../contentcard.dart';

class AccountAction extends StatelessWidget {
  const AccountAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16, top: 32, left: 16),
          child: Text("Ações da conta", style: TextStyle(fontSize: 20)),
        ),
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              ContentCard(
                content: AccountActionItem(
                    title: "Depositar", icon: Icons.account_balance),
              ),
              ContentCard(
                content:
                    AccountActionItem(title: "Transferir", icon: Icons.cached),
              ),
              ContentCard(
                content: AccountActionItem(
                    title: "Ler", icon: Icons.center_focus_strong),
              ),
            ]),
          ),
        )
      ],
    );
  }
}

class AccountActionItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const AccountActionItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 3) - 48,
      height: (MediaQuery.of(context).size.width / 3) - 56,
      child: Column(
        children: [
          IconButton(iconSize: 24, onPressed: () {}, icon: Icon(icon)),
          Text(title),
        ],
      ),
    );
  }
}
