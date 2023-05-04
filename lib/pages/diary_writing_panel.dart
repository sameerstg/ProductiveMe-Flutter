import 'package:flutter/material.dart';

import '../utils/routes.dart';
import '../widgets/bottom_navigator.dart';

class DiaryWritingPanel extends StatefulWidget {
  const DiaryWritingPanel({super.key});

  @override
  State<DiaryWritingPanel> createState() => _DiaryWritingPanelState();
}

class _DiaryWritingPanelState extends State<DiaryWritingPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.mainmenu);
          },
          child: Icon(Icons.home),
        ),
        actions: [
          InkWell(
            child: const Icon(Icons.cancel_sharp),
            onTap: () {
              GoToHistoryPanel();
            },
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            child: const Icon(Icons.check),
            onTap: () {
              GoToHistoryPanel();
            },
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Form(
          child: Column(children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Write Title.....",
                contentPadding: EdgeInsets.all(20),
              ),
            ),
            Expanded(
              child: TextFormField(
                maxLines: 20,
                decoration: const InputDecoration(
                  hintText: "Write Diary.....",
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void GoToHistoryPanel() {
    Navigator.pushNamed(context, Routes.diaryHistory);
  }
}
