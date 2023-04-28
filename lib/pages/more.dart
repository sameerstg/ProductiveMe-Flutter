import 'package:flutter/material.dart';
import 'package:productive_me/widgets/bottom_navigator.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: ThemeData.dark().canvasColor,
      ),
      body: GridView.count(

        crossAxisCount: 3,childAspectRatio: 1,

        children: List.generate(9, (index) {
          return Container(
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.black),
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.settings),
                // const SizedBox(height: 20,),
                Text(""),
              ],
            ),
          );

        }),
      ),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}
class MoreItems{
  static String GetItem(int index){
    return items[index];
  }
   static List<String> items = ['Configuration', 'Accounts', 'Passcode', 'Style','Pc Manager','Backup','Feedback','Help','Recommend'];
}
