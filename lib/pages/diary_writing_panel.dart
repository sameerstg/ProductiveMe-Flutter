import 'package:flutter/material.dart';

import '../utils/routes.dart';

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
          child: const Icon(Icons.home),
        ),
        actions: [
          InkWell(
            child: const Icon(Icons.cancel_sharp),
            onTap: () {
              go_to_history_panel();
            },
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            child: const Icon(Icons.check),
            onTap: () {
              go_to_history_panel();
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

  // ignore: non_constant_identifier_names
  void go_to_history_panel() {
    Navigator.pushNamed(context, Routes.diaryHistory);
  }
}
