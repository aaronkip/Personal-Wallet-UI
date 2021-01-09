import 'package:flutter/material.dart';
import 'package:flutter_wallet/config/data.dart';
import 'package:flutter_wallet/widgets/cardSection.dart';
import 'package:flutter_wallet/widgets/expenses.dart';
import 'package:flutter_wallet/widgets/header.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: CardSection(),
          ),
          Expanded(
            child: ExpenseSection(),
          ),
        ],
      ),
    );
  }
}
