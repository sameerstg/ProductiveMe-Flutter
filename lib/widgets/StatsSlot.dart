import 'package:flutter/material.dart';

class StatSlot extends StatefulWidget {
  const StatSlot({super.key});

  @override
  State<StatSlot> createState() => _StatSlotState();
}

class _StatSlotState extends State<StatSlot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(3)),
                child: const Text("38%")),
            const SizedBox(
              width: 20,
            ),
            const Text("Food"),
          ]),
          const Expanded(flex: 0, child: Text("Rs 214214")),
        ],
      ),
    );
  }
}
