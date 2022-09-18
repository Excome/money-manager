import 'package:flutter/material.dart';
import 'package:moneymanager/constants.dart';
import 'package:moneymanager/domain/account/account_type.dart';
import 'package:moneymanager/domain/account/currency.dart';

import '../../../domain/account/account.dart';

class AccountList extends StatelessWidget {
  AccountList({Key? key}) : super(key: key);

  final List<Account> accounts = [
    Account("Сбербанк VISA", AccountType.debitCard, Currency.rub, 24567),
    Account("Альфабанк MIR", AccountType.creditCard, Currency.rub, 600000),
    Account("Сбербанк Счет", AccountType.savingAccount, Currency.rub, 1200000),
  ];

  @override
  Widget build(BuildContext context) {
/*    return Container(
      height: 100, // TODO remove
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding),
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding),
      decoration: BoxDecoration(color: Colors.white , borderRadius: BorderRadius.circular(5.0), boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset(0.0, 1.0), blurRadius: 6.0)]),
    );*/
    var accountListView = Expanded(
        child: ListView.builder(
            itemCount: accounts.length,
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                child: ListTile(
                  leading: Text(accounts[index].currency.name),
                  title: Text(accounts[index].name),
                  trailing: Text(accounts[index].balance.toString()),
                ),
              );
            }
        )
    );


    return Card(
      elevation: 5,
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding),
      child: Container(
        height: 200,
        child: Column(
          children: <Widget>[accountListView],
        ),
    ));
  }
}
