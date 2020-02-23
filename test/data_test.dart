import 'package:double_entry_bookkeeping/model/account.dart';
import 'package:test/test.dart';
import 'dart:io';

void main() {
  Account account = Account("Assets:Cash", AccountType.Assets, 1);
  print(account.toJson());
}
