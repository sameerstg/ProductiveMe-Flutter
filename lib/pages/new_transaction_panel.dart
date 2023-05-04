import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewTransactionPanel extends StatefulWidget {
  const NewTransactionPanel({super.key});

  @override
  State<NewTransactionPanel> createState() => _NewTransactionPanelState();
}

class _NewTransactionPanelState extends State<NewTransactionPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("te"),
      ),
    );
  }
}
