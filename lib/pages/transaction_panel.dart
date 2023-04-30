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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: List.generate(
          500,
          (index) => Slot(
              category: "Food $index",
              note: "Fries",
              account: "Cash",
              amount: "2000"),
        ),
      ),
      bottomNavigationBar: const BottomNavigator(index: 0),
    );
  }
}

class Slot extends StatelessWidget {
  const Slot(
      {Key? key,
      required this.category,
      required this.note,
      required this.account,
      required this.amount})
      : super(key: key);
  final String category;
  final String note;
  final String account;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle, border: Border.all(width: 1)),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              width: 100,
              // color: Colors.red,
              child: Text(category),
            ),
          ),
          Expanded(
            child: Container(
              // width: 200,
              // color: Colors.cyanAccent,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Text(note),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(account),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              // color: Colors.red,
              child: Text(
                "Rs $amount",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
