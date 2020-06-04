import 'package:flutter/material.dart';

final User user = User(
  creditCards: [
    CreditCard(
      debt: 1000,
      cardNum: '8361936284616396',
      sortCode: '10/20',
      cardColor: [
        Color(0xFFfe2982),
        Color(0xFFa841e3),
      ],
    ),
    CreditCard(
      debt: 1500,
      cardNum: '7351957304780153',
      sortCode: '03/19',
      cardColor: [
        Color(0xFFa841e3),
        Color(0xff5768ff),
      ],
    ),
    CreditCard(
      debt: 1250,
      cardNum: '4729461325098735',
      sortCode: '05/17',
      cardColor: [
        Color(0xff5768ff),
        Color(0xFFfe2982),
      ],
    ),
  ],
  bankAccounts: [
    BankAccount(
      bankName: 'Bank of America',
      accountBalance: 12000,
      accountType: 'Checking account',
      bankLogo: 'assets/images/boa.png',
    ),
    BankAccount(
      bankName: 'Bank of America',
      accountBalance: 30550,
      accountType: 'Savings account',
      bankLogo: 'assets/images/boa.png',
    ),
  ],
  monthlyTotalThousands: {
    1: 10.0,
    2: 15.0,
    3: 20.5,
    4: 15.0,
    5: 25.0,
    6: 25.0,
    7: 30.0,
    8: 25.0,
    9: 32.0,
    10: 35.0,
    11: 33.0,
    12: 42.55
  },
);

class User {
  final List<CreditCard> creditCards;
  final List<BankAccount> bankAccounts;
  final Map<double, double> monthlyTotalThousands;

  User({
    this.creditCards,
    this.bankAccounts,
    this.monthlyTotalThousands,
  });
}

class CreditCard {
  final int debt;
  final String cardNum;
  final String sortCode;
  final List<Color> cardColor;

  CreditCard({this.debt, this.cardNum, this.sortCode, this.cardColor});
}

class BankAccount {
  final String bankName;
  final String accountType;
  final int accountBalance;
  final String bankLogo;

  BankAccount(
      {this.bankName, this.accountType, this.accountBalance, this.bankLogo});
}
