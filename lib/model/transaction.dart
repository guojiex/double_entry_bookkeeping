import 'package:double_entry_bookkeeping/model/account.dart';
import 'package:json_annotation/json_annotation.dart';

/// This allows the `Transaction` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'transaction.g.dart';

enum TransactionType {
  Debit,
  Credit,
}

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
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

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$AccountFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$AccountToJson`.
  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}
