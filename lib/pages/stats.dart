import 'package:flutter/material.dart';
import 'package:productive_me/widgets/bottom_navigator.dart';


class StatPanel extends StatefulWidget {
  const StatPanel({super.key});

  @override
  State<StatPanel> createState() => _StatPanelState();
}

class _StatPanelState extends State<StatPanel> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Stats")),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
