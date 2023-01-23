import 'operation_type.dart';
import 'package:flutter/material.dart';

class Category {
  String name;
  OperationType type;
  IconData icon;

  Category(this.name, this.type, this.icon);
}