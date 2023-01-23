import 'package:flutter/material.dart';
import 'package:moneymanager/constants.dart';
import 'package:moneymanager/screen/accounts/accounts_screen.dart';
import 'package:moneymanager/screen/operations/operations_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedScreen = 1;
  static const List<Widget> _screens = [
    AccountsScreen(),
    OperationScreen(),
    OperationScreen()
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    body: _screens[_selectedScreen],
    bottomNavigationBar: _buildBottomNavBar(context),
  );

  BottomNavigationBar _buildBottomNavBar(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _selectedScreen,
        selectedItemColor: kPrimaryColor,
        onTap: (selectedScreen) => setState(() => _selectedScreen = selectedScreen),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_outlined),
              label: "Счета"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined),
              label: "Операции"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: "Ещё"
          )
        ],
      elevation: 10,
      backgroundColor: Colors.white,
    );
  }
}
