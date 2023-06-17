import 'package:flutter/material.dart';

import '../utils/routes.dart';

class DiaryHistory extends StatelessWidget {
  const DiaryHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, Routes.mainmenu);
            },
            child: const Icon(Icons.home)),
        actions: [
          InkWell(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.pushNamed(context, Routes.diaryWritingPanel);
            },
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              children:
                  List.generate(20, (index) => Slot(title: "new day", id: "1")),
            ),
          )
        ],
      ),
    );
  }
}

class Slot extends StatelessWidget {
  Slot({super.key, required this.id, required this.title});
  String id, title;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(border: Border.all(width: 1)),
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        child: Text(title));
  }
}
