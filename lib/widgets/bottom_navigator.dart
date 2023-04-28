
import 'dart:ui';

import 'package:flutter/material.dart';

import '../utils/routes.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  final int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,

      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Transactions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Stats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance),
          label: 'Accounts',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more),
          label: 'More',
        ),
      ],
      // currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,

      onTap: (value) => {

        changeTab(value)



        // if(value ==0){Navigator.pushNamed(context, Routes.transaction)}
        //
        // else if(value ==1){Navigator.pushNamed(context, Routes.stats)}
        // else if(value ==2){Navigator.pushNamed(context, Routes.accounts) }
        // else if(value ==3){Navigator.pushNamed(context, Routes.more)}

      },
    );
  }
  void changeTab(int index) {
    setState(() {

    });
  }
}
