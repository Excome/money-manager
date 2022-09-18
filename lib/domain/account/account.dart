import 'account_type.dart';
import 'currency.dart';

class Account {
    String name;
    AccountType type;
    Currency currency;
    double balance;

    Account(this.name, this.type, this.currency, this.balance);

    Account.none(): this("", AccountType.debitCard, Currency.rub, 0);
}
