import 'package:flutter/material.dart';
import 'package:productive_me/widgets/bottom_navigator.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);
  // final <string> fruits = ['Apple', 'Banana', 'Orange', 'Mango'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: ThemeData.dark().canvasColor,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,
        children: List.generate(9, (index) {
          return Container(
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.black),
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.ac_unit),
                SizedBox(
                  height: 10,
                ),
                // const SizedBox(height: 20,),
                Text(MoreItem.more[index]),
              ],
            ),
          );
        }),
      ),
      bottomNavigationBar: const BottomNavigator(index: 3),
    );
  }
}

class MoreItem {
  static List<String> more = [
    'Configuration',
    'Accounts',
    'Passcode',
    'Style',
    'Pc Manager',
    'Backup',
    'Feedback',
    'Help',
    'Recommend'
  ];
}
