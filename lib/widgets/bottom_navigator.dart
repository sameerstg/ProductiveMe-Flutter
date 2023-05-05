import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';

import '../utils/routes.dart';

class BottomNavigator extends StatelessWidget {
  final int index;

  const BottomNavigator({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PandaBar(
      buttonColor: Colors.red,
      buttonData: [
        PandaBarButtonData(id: 0, icon: Icons.dashboard, title: 'Transactions'),
        PandaBarButtonData(id: 1, icon: Icons.book, title: 'Stats'),
        PandaBarButtonData(
            id: 2, icon: Icons.account_balance_wallet, title: 'Accounts'),
        PandaBarButtonData(id: 3, icon: Icons.notifications, title: 'More'),
      ],
      onChange: (id) {
        if (id != index) {
          if (id == 0) {
            Navigator.pushNamed(context, Routes.transaction);
          } else if (id == 1) {
            Navigator.pushNamed(context, Routes.stats);
          } else if (id == 2) {
            Navigator.pushNamed(context, Routes.accounts);
          } else if (id == 3) {
            Navigator.pushNamed(context, Routes.more);
          }
        }
      },
      onFabButtonPressed: () {
        Navigator.pushNamed(context, Routes.newTransaction);
      },
    );
  }
}
