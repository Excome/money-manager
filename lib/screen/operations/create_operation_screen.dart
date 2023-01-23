import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneymanager/constants.dart';

class CreateOperationScreen extends StatefulWidget {
  const CreateOperationScreen({Key? key}) : super(key: key);

  @override
  State<CreateOperationScreen> createState() => _CreateOperationScreenState();
}

class _CreateOperationScreenState extends State<CreateOperationScreen> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: _buildAppBar(context),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding),
              child: TextField(
                cursorColor: kPrimaryColor,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                keyboardType: const TextInputType.numberWithOptions(),
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
                  ),
                  hintText: "0",
                  prefixIcon: Icon(Icons.remove, color: Colors.grey),
                  suffixIcon: Icon(Icons.currency_ruble, color: Colors.grey, size: 18)
                ),
              ),
            )
          ],
        ),
      );

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
      title: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () => {},
          style: const ButtonStyle(
              overlayColor: null
          ),
          child: const Text("Сохранить", style: TextStyle(color: Colors.white, fontSize: 16),),
        ),
      ),
    );
  }
}