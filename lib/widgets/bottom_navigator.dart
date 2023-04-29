
import 'dart:ui';

import 'package:flutter/material.dart';

import '../utils/routes.dart';

class BottomNavigator extends StatefulWidget {
   const BottomNavigator({Key? key,required this.index}) : super(key: key);

  final int index;

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {




  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => {
        changeTab(value),





      },
      showUnselectedLabels: true,
      currentIndex: 0,

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


    );
  }
  void changeTab(int index) {
    setState(() {


        if(index ==0){Navigator.pushNamed(context, Routes.transaction);}

        else if(index==1){Navigator.pushNamed(context, Routes.stats);}
        else if(index ==2){Navigator.pushNamed(context, Routes.accounts);}
        else if(index ==3){Navigator.pushNamed(context, Routes.more);}
    });
  }
}
