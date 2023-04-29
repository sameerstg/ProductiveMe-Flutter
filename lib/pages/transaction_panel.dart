
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
    return  Scaffold(
        body:  Column(
         children: const [
          Slot(category: "Food", note: "Fries", account: "Cash", amount: 200),
           Slot(category: "Food", note: "Fries", account: "Cash", amount: 200),
           Slot(category: "Food", note: "Fries", account: "Cash", amount: 200),
           Slot(category: "Food", note: "Fries", account: "Cash", amount: 200),
           Slot(category: "Food", note: "Fries", account: "Cash", amount: 200),
         ],

        )

      ,bottomNavigationBar :  const BottomNavigator(index: 0),

    );
  }
}
class Slot extends StatelessWidget {
  const Slot({Key? key, required this.category, required this.note, required this.account, required this.amount}) : super(key: key);
  final String category;
  final String note;
  final String account;
  final double amount;
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(5),decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(width: 1)),
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(/*color: Colors.red,*/

             child: Text(category),
          ),Container(width: 300,/*,color: Colors.blue*/alignment: Alignment.centerLeft,child: Column(

            children: [

              Container(child: Text(note)),

              Container(child: Text(account)),

            ],
          ), ),

         Container(/*color: Colors.red,*/

             child: Text("Rs $amount"),
          ),
        ],
      ),
    );
  }
}

