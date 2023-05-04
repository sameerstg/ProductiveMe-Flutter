import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';
import 'package:productive_me/pages/stats.dart';
import 'package:productive_me/pages/transaction_panel.dart';

import '../utils/routes.dart';

class BottomNavigator extends StatelessWidget {
  final int index;

  const BottomNavigator({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PandaBar(
      buttonData: [
        PandaBarButtonData(id: 0, icon: Icons.dashboard, title: 'Grey'),
        PandaBarButtonData(id: 1, icon: Icons.book, title: 'Blue'),
        PandaBarButtonData(
            id: 2, icon: Icons.account_balance_wallet, title: 'Red'),
        PandaBarButtonData(id: 3, icon: Icons.notifications, title: 'Yellow'),
      ],
      onChange: (id) {
        print(id);
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
        print("s");
      },
    );
    // return BottomNavigationBar(
    //   onTap: (value) => {
    //     if (value != index)
    //       {
    //         if (value == 0)
    //           {Navigator.pushNamed(context, Routes.transaction)}
    //         else if (value == 1)
    //           {Navigator.pushNamed(context, Routes.stats)}
    //         else if (value == 2)
    //           {Navigator.pushNamed(context, Routes.accounts)}
    //         else if (value == 3)
    //           {Navigator.pushNamed(context, Routes.more)}
    //       },
    //   },
    //   showUnselectedLabels: true,
    //   currentIndex: index,

    //   items: const <BottomNavigationBarItem>[
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.home),
    //       label: 'Transactions',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.bar_chart),
    //       label: 'Stats',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.account_balance),
    //       label: 'Accounts',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.more),
    //       label: 'More',
    //     ),
    //   ],
    //   // currentIndex: _selectedIndex,

    //   selectedItemColor: Colors.blue,
    // );
  }
}

// class _BottomNavigatorState extends State<BottomNavigator> {
//   @override
//   late int index = 0;
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       bottomNavigationBar: PandaBar(
//         buttonData: [
//           PandaBarButtonData(id: 0, icon: Icons.dashboard, title: 'Grey'),
//           PandaBarButtonData(id: 1, icon: Icons.book, title: 'Blue'),
//           PandaBarButtonData(
//               id: 2, icon: Icons.account_balance_wallet, title: 'Red'),
//           PandaBarButtonData(id: 3, icon: Icons.notifications, title: 'Yellow'),
//         ],
//         onChange: (id) {
//           setState(() {
//             index = id;
//           });
//         },
//         onFabButtonPressed: () {
//           print("s");
//         },
//       ),
//     );
//     // return BottomNavigationBar(
//     //   onTap: (value) => {
//     //     if (value != index)
//     //       {
//     //         if (value == 0)
//     //           {Navigator.pushNamed(context, Routes.transaction)}
//     //         else if (value == 1)
//     //           {Navigator.pushNamed(context, Routes.stats)}
//     //         else if (value == 2)
//     //           {Navigator.pushNamed(context, Routes.accounts)}
//     //         else if (value == 3)
//     //           {Navigator.pushNamed(context, Routes.more)}
//     //       },
//     //   },
//     //   showUnselectedLabels: true,
//     //   currentIndex: index,

//     //   items: const <BottomNavigationBarItem>[
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.home),
//     //       label: 'Transactions',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.bar_chart),
//     //       label: 'Stats',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.account_balance),
//     //       label: 'Accounts',
//     //     ),
//     //     BottomNavigationBarItem(
//     //       icon: Icon(Icons.more),
//     //       label: 'More',
//     //     ),
//     //   ],
//     //   // currentIndex: _selectedIndex,

//     //   selectedItemColor: Colors.blue,
//     // );
//   }
// }
