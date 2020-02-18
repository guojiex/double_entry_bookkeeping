import 'package:double_entry_bookkeeping/model/account.dart';

enum TransactionType {
  Debit,
  Credit,
}

class Transaction extends Comparable<Transaction> {
  DateTime transactionDate;
  double amount;
  TransactionType transactionType;
  Account fromAccount;
  Account destAccount;

  Transaction(this.transactionDate, this.amount, this.transactionType,
      this.fromAccount, this.destAccount);

  @override
  int compareTo(Transaction other) {
    return this.transactionDate.compareTo(other.transactionDate);
  }
}
