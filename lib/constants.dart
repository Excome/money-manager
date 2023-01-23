import 'package:flutter/material.dart';
import 'package:moneymanager/domain/operation/category.dart';
import 'package:moneymanager/domain/operation/operation.dart';
import 'package:moneymanager/domain/operation/operation_type.dart';

import 'domain/account/account.dart';
import 'domain/account/account_type.dart';
import 'domain/account/currency.dart';

const kPrimaryColor = Color(0xFF0C9869);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;

// TODO вынести в бд
final List<Account> accounts = [
  Account("Сбербанк VISA", AccountType.debitCard, Currency.rub, 24567),
  Account("Альфабанк MIR", AccountType.creditCard, Currency.rub, 600000),
  Account("Сбербанк Счет", AccountType.savingAccount, Currency.rub, 1200000),
];

final Category productCategory = Category("Продукты", OperationType.expense, Icons.shopping_basket_outlined);

final List<Operation> operations = [
  Operation(1, accounts.first, OperationType.expense, productCategory, 350, DateTime.now(), "Продукты1"),
  Operation(2, accounts.first, OperationType.expense, productCategory, 450, DateTime.now(), "Продукты2"),
  Operation(3, accounts.first, OperationType.expense, productCategory, 250, DateTime.now(), ""),
  Operation(4, accounts.first, OperationType.expense, productCategory, 650, DateTime.now(), "Продукты4"),
  Operation(5, accounts.first, OperationType.expense, productCategory, 1050, DateTime.now(), "Продукты5"),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
  Operation(6, accounts.first, OperationType.expense, productCategory, 180, DateTime.now(), ""),
];