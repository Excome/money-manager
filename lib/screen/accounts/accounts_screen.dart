import 'package:flutter/material.dart';
import 'package:moneymanager/screen/accounts/component/account_list.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Colors.white,
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
        child: Text("Счета"),
      ),
    );
  }


}
