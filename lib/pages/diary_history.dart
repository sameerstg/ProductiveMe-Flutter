import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
            child: Icon(Icons.home)),
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
            children: List.generate(20, (index) => const Slot(title: "title")),
          ))
        ],
      ),
    );
  }
}

class Slot extends StatelessWidget {
  final String title;

  const Slot({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 1)),
      padding: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      child: Text(title),
    );
  }
}
