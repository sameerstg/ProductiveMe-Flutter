import 'package:flutter/material.dart';
import 'package:productive_me/utils/routes.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text("Money Manager")),
                  onTap: () =>
                      {Navigator.pushNamed(context, Routes.transaction)},
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text("Write Diary")),
                  onTap: () =>
                      {Navigator.pushNamed(context, Routes.diaryWritingPanel)},
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text("Favourite Tracker")),
                  onTap: () =>
                      {Navigator.pushNamed(context, Routes.allFavourite)},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
