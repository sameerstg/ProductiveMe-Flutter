import 'package:flutter/material.dart';

class AllFavouriteThingPanel extends StatefulWidget {
  const AllFavouriteThingPanel({super.key});

  @override
  State<AllFavouriteThingPanel> createState() => _AllFavouriteThingPanel();
}

class _AllFavouriteThingPanel extends State<AllFavouriteThingPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: const SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
                Slot(
                  text: "Food",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Slot extends StatelessWidget {
  final String text;

  const Slot({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(text),
    );
  }
}
