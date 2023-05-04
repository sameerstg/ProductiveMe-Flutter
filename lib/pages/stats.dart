import 'package:flutter/material.dart';
import 'package:productive_me/widgets/StatsSlot.dart';
import 'package:productive_me/widgets/bottom_navigator.dart';

class StatPanel extends StatefulWidget {
  const StatPanel({super.key});

  @override
  State<StatPanel> createState() => _StatPanelState();
}

class _StatPanelState extends State<StatPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,

      // ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            StatAppbar(),
            StatTTab(),
            StatSlot(),

            // ListView(
            //   children: List.generate(50, (index) =>  const StatSlot()),
            // )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigator(index: 1),
    );
  }
}

enum StatsTab { income, expense }

class StatTTab extends StatefulWidget {
  const StatTTab({super.key});

  @override
  State<StatTTab> createState() => _StatTTabState();
}

class _StatTTabState extends State<StatTTab> {
  late StatsTab statsTab = StatsTab.income;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                if (statsTab == StatsTab.expense) {
                  setState(() {
                    statsTab = StatsTab.income;
                  });
                }
              },
              child: Container(
                width: 100,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: UnderlineTabIndicator(
                    borderSide: BorderSide(
                        color: statsTab == StatsTab.income
                            ? Colors.red
                            : Colors.transparent,
                        width: 2),
                    borderRadius: BorderRadius.circular(1)),
                child: const Text(
                  "Income",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (statsTab == StatsTab.income) {
                  setState(() {
                    statsTab = StatsTab.expense;
                  });
                }
              },
              child: Container(
                width: 100,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: UnderlineTabIndicator(
                    borderSide: BorderSide(
                        color: statsTab == StatsTab.expense
                            ? Colors.red
                            : Colors.transparent,
                        width: 2),
                    borderRadius: BorderRadius.circular(1)),
                child: const Text(
                  "Expense",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
    );
  }
}

class StatAppbar extends StatefulWidget {
  const StatAppbar({super.key});

  @override
  State<StatAppbar> createState() => _StatAppbarState();
}

class _StatAppbarState extends State<StatAppbar> {
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
