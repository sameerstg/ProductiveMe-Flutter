import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StatSlot extends StatefulWidget {
  const StatSlot({super.key});

  @override
  State<StatSlot> createState() => _StatSlotState();
}

class _StatSlotState extends State<StatSlot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(3)),
                child: Container(child: const Text("38%"))),
            const SizedBox(
              width: 20,
            ),
            Container(child: Text("Food")),
          ]),
          Expanded(flex: 0, child: Text("Rs 214214")),
        ],
      ),
    );
  }
}
