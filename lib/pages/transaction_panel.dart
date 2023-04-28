
import 'package:flutter/material.dart';

import '../widgets/bottom_navigator.dart';




class TransactionPanel extends StatefulWidget {
  const TransactionPanel({super.key});

  @override
  State<TransactionPanel> createState() => _TransactionPanelState();
}

class _TransactionPanelState extends State<TransactionPanel> {
  late int index;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body:  Center(
          child: Text("Transaction Panel"),

        ),bottomNavigationBar :  BottomNavigator(),

    );
  }
}
