class Diary {
  Diary({required this.title, required this.content, required this.date});
  String? id, date, title, content;
}

class DiaryManager {
  List<Diary> diaries = List.empty();
  void addDiary(Diary diary) {
    diaries.add(diary);
  }

  int getNewId() {
    return diaries.length;
  }
}
