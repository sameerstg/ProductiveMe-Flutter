import 'package:flutter/material.dart';

class DiaryWritingPanel extends StatefulWidget {
  const DiaryWritingPanel({super.key});

  @override
  State<DiaryWritingPanel> createState() => _DiaryWritingPanelState();
}

class _DiaryWritingPanelState extends State<DiaryWritingPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Column(children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter Title.....",
                contentPadding: EdgeInsets.all(20),
              ),
            ),
            TextFormField(
              maxLines: null,
              decoration: const InputDecoration(
                hintText: "Enter Title.....",
                contentPadding: EdgeInsets.all(20),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
