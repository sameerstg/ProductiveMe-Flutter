import 'package:flutter/material.dart';
import 'package:productive_me/pages/account.dart';
import 'package:productive_me/pages/all_favourite_thing_page.dart';
import 'package:productive_me/pages/diary_history.dart';
import 'package:productive_me/pages/diary_writing_panel.dart';
import 'package:productive_me/pages/login.dart';
import 'package:productive_me/pages/mainmenu.dart';
import 'package:productive_me/pages/more.dart';
import 'package:productive_me/pages/new_transaction_panel.dart';
import 'package:productive_me/pages/register.dart';
import 'package:productive_me/pages/stats.dart';
import 'package:productive_me/pages/transaction_panel.dart';

class Routes {
  static String login = "/";
  static String register = "register";
  static String transaction = "transaction";
  static String stats = "stats";
  static String accounts = "accounts";
  static String more = "more";
  static String mainmenu = "mainmenu";
  static String diaryWritingPanel = "diaryWritingPanel";
  static String allFavourite = "allFavourite";
  static String newTransaction = "newTransaction";
  static String diaryHistory = "diaryHistory";

  static Map<String, Widget Function(dynamic)> routes = {
    "/": (context) => const Login(),
    "register": (context) => const Register(),
    "transaction": (context) => const TransactionPanel(),
    "stats": (context) => const StatPanel(),
    "accounts": (context) => const Accounts(),
    "more": (context) => const More(),
    "mainmenu": (context) => const MainMenu(),
    "diaryWritingPanel": (context) => const DiaryWritingPanel(),
    "allFavourite": (context) => const AllFavouriteThingPanel(),
    "newTransaction": (context) => const NewTransactionPanel(),
    "diaryHistory": (context) => const DiaryHistory(),
  };
}
