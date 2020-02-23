// 账户
import 'package:json_annotation/json_annotation.dart';

/// This allows the `Account` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'account.g.dart';

enum AccountType {
  Assets, // 资产
  Liabilities, // 负债
  Equity, // 所有者权益
  Income, // 收入
  Expenses, // 费用
}

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class Account {
  // For example "Assets:Cash"
  String name;
  AccountType type;
  int accountId;

  Account(this.name, this.type, this.accountId);

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$AccountFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$AccountToJson`.
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
