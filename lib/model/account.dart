// 账户

enum AccountType {
  Assets, // 资产
  Liabilities, // 负债
  Equity, // 所有者权益
  Income, // 收入
  Expenses, // 费用
}

class Account {
  // For example "Assets:Cash"
  String name;
  AccountType type;
}
