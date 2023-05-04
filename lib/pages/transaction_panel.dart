import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';
import 'package:productive_me/pages/account.dart';
import 'package:productive_me/pages/more.dart';
import 'package:productive_me/pages/new_transaction_panel.dart';
import 'package:productive_me/pages/stats.dart';

import '../utils/routes.dart';

class TransactionPanel extends StatefulWidget {
  const TransactionPanel({super.key});

  @override
  State<TransactionPanel> createState() => _TransactionPanelState();
}

class _TransactionPanelState extends State<TransactionPanel> {
  late int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        buttonData: [
          PandaBarButtonData(id: 0, icon: Icons.book, title: 'Grey'),
          PandaBarButtonData(id: 1, icon: Icons.query_stats, title: 'Blue'),
          PandaBarButtonData(id: 2, icon: Icons.account_box, title: 'Red'),
          PandaBarButtonData(id: 3, icon: Icons.more_sharp, title: 'Yellow'),
        ],
        onChange: (id) {
          setState(() {
            index = id;
          });
        },
        onFabButtonPressed: () {
          setState(() {});
        },
      ),
      body: Builder(
        builder: (context) {
          switch (index) {
            case 0:
              return const TransactionsHistoryPanel();
            case 1:
              return const StatPanel();
            case 2:
              return const Accounts();
            case 3:
              return const More();
            default:
              return Container();
          }
        },
      ),
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

class TransactionsHistoryPanel extends StatelessWidget {
  const TransactionsHistoryPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Container(
              child: Row(
                children: [
                  const Icon(Icons.arrow_back),
                  Text("8/July/2002", textAlign: TextAlign.center),
                  const Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ],
          leading: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.mainmenu);
                },
                child: const Icon(Icons.home),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: List.generate(
                  20,
                  (index) => Slot(
                      category: "Food $index",
                      note: "Fries",
                      account: "Cash",
                      amount: "2000"),
                ),
              ),
            ),
          ],
        ),
        // bottomNavigationBar: const BottomNavigator(index: 0),
      ),
    );
  }
}

class TransactionAppbar extends StatefulWidget {
  const TransactionAppbar({super.key});

  @override
  State<TransactionAppbar> createState() => _TransactionAppbar();
}

class _TransactionAppbar extends State<TransactionAppbar> {
  late String date = "Apr 2023";
  String dropdownValue = 'Monthly';
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              const Icon(Icons.arrow_back),
              Text(date),
              const Icon(Icons.arrow_forward),
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(width: 1, color: Colors.white),
            ),
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(9),
              underline: Container(
                height: 0,
              ),
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Monthly', 'Yearly', 'Option 2', 'Option 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ))
      ],
    );
    ;
  }
}
