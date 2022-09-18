import 'package:flutter/material.dart';
import 'package:moneymanager/component/navigation_bar.dart';
import 'package:moneymanager/screen/home/component/account_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: const NavBar(),
      body: Column(
        children: [
          AccountList()
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
      title: const Align(
        alignment: Alignment.center,
        child: Text("Money Manager"),
      ),
    );
  }
}
