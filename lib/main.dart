import 'package:flutter/material.dart';
import 'package:productive_me/pages/allFavourite_thing_page.dart';
import 'package:productive_me/pages/account.dart';
import 'package:productive_me/pages/diary_writing_panel.dart';
import 'package:productive_me/pages/login.dart';
import 'package:productive_me/pages/mainmenu.dart';
import 'package:productive_me/pages/more.dart';
import 'package:productive_me/pages/new_transaction_panel.dart';
import 'package:productive_me/pages/stats.dart';
import 'package:productive_me/pages/transaction_panel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: "Productive Me",
      routes: {
        "/": (context) => const Login(),
        "transaction": (context) => const TransactionPanel(),
        "stats": (context) => const StatPanel(),
        "accounts": (context) => const Accounts(),
        "more": (context) => const More(),
        "mainmenu": (context) => const MainMenu(),
        "diaryWritingPanel": (context) => const DiaryWritingPanel(),
        "allFavourite": (context) => const AllFavouriteThingPanel(),
        "newTransaction": (context) => const NewTransactionPanel(),
      },
    );
  }
}
