import 'package:flutter/material.dart';
import 'package:productive_me/widgets/bottom_navigator.dart';

class StatPanel extends StatefulWidget {
  const StatPanel({super.key});

  @override
  State<StatPanel> createState() => _StatPanelState();
}

class _StatPanelState extends State<StatPanel> {
  late String date = "Apr 2023";
  String dropdownValue = 'Monthly';
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
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            const Icon(Icons.arrow_back),
                            Text(date),
                            const Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.5),
                              border:
                                  Border.all(width: 0.75, color: Colors.white)),
                          child: DropdownButton<String>(
                            borderRadius: BorderRadius.circular(10),
                            underline: Container(
                              height: 0,
                            ),
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>[
                              'Monthly',
                              'Option 2',
                              'Option 3',
                              'Option 4'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ))
                    ],
                  )),
              Container(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text(
                          "Income",
                          textAlign: TextAlign.center,
                        ),
                        decoration: UnderlineTabIndicator(
                            borderRadius: BorderRadius.circular(1)),
                      ),
                      Container(
                          child: Text(
                        "Expense",
                        textAlign: TextAlign.center,
                      )),
                    ]),
              )
            ]),
      ),
      bottomNavigationBar: const BottomNavigator(index: 1),
    );
  }
}
