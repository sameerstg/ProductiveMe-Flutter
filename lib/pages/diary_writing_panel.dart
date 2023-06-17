import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:productive_me/src/diary.dart';
import 'package:productive_me/widgets/date_picker.dart';
import '../utils/routes.dart';

class DiaryWritingPanel extends StatefulWidget {
  const DiaryWritingPanel({super.key});

  @override
  State<DiaryWritingPanel> createState() => _DiaryWritingPanelState();
}

class _DiaryWritingPanelState extends State<DiaryWritingPanel> {
  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateController.text = DateFormat('dd-MM-yyyy').format(DateTime.now());
  }

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
              if (titleController.text.isEmpty ||
                  contentController.text.isEmpty) {
                return;
              }
              Diary diary = Diary(
                  title: titleController.text,
                  content: contentController.text,
                  date: dateController.text);

              go_to_history_panel();
            },
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Form(
          child: Column(children: [
            const DatePicker(),
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: "Write Title.....",
                contentPadding: EdgeInsets.all(20),
              ),
            ),
            Expanded(
              child: TextFormField(
                controller: contentController,
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
