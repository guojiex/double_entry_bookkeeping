// 账本
import 'package:double_entry_bookkeeping/model/account.dart';
import 'package:double_entry_bookkeeping/model/transaction.dart';
import 'package:collection/collection.dart';

class Ledger {
  List<Account> accounts;
  PriorityQueue<Transaction> transactions;
}
