import 'package:flutter/material.dart';
import 'package:moneymanager/constants.dart';

class AccountList extends StatelessWidget {
  AccountList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding),
      child: SizedBox(
        height: 220,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10, bottom: 2, top: 10),
              child: const Text("Карты и счета", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            accountListView,
            TextButton(
              onPressed: () => {} ,
              child: const Text("Показать еще")
            )
          ],
        ),
    ));
  }
}
