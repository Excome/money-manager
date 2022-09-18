import 'package:moneymanager/domain/account/account.dart';

import 'category.dart';
import 'operation_type.dart';

class Operation {
  int id;
  Account account;
  OperationType type;
  Category category;
  double value;
  DateTime date;
  String description;

  Operation(this.id, this.account, this.type, this.category, this.value,
      this.date, this.description);
}