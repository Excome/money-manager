import 'package:flutter/material.dart';
import 'package:moneymanager/constants.dart';
import 'package:moneymanager/screen/operations/components/operation_list.dart';
import 'package:moneymanager/screen/operations/create_operation_screen.dart';

class OperationScreen extends StatefulWidget {
  const OperationScreen({Key? key}) : super(key: key);

  @override
  State<OperationScreen> createState() => _OperationScreenState();
}

class _OperationScreenState extends State<OperationScreen> {
  @override
  Widget build(BuildContext context) {
    var operationsListValue = const OperationList();

    return Scaffold(
      appBar: _buildAppBar(context),
      floatingActionButton: _buildActionButton(context),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[operationsListValue],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
      title: const Align(
        alignment: Alignment.center,
        child: Text("Операции"),
      ),
    );
  }

  FloatingActionButton _buildActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.push(context, MaterialPageRoute(
          builder: (context) => const CreateOperationScreen())),
      backgroundColor: kPrimaryColor,
      child: const Icon(Icons.add, size: 35),
    );
  }
}
