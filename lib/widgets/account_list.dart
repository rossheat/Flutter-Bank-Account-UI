import 'package:banking_ui/data/data.dart';
import 'package:flutter/material.dart';

class BankAccountList extends StatelessWidget {
  final User user;
  BankAccountList({this.user});

  Column makeAccounts() {
    List<Widget> bankAccounts = [];
    user.bankAccounts.forEach(
      (account) {
        bankAccounts.add(
          Container(
            height: 75,
            child: Center(
              child: ListTile(
                leading: Image(
                  image: AssetImage(account.bankLogo),
                ),
                title: Text(
                  account.accountType,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                ),
                subtitle: Text(
                  '${account.bankName}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[400],
                    height: 1,
                  ),
                ),
                trailing: Text(
                  '\$${account.accountBalance}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
    return Column(children: bankAccounts);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Bank accounts',
                style: TextStyle(
                  fontSize: 25,
                  height: 1,
                ),
              ),
              FlatButton(
                onPressed: () => print(
                  'Manage bank accounts tapped',
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                child: Text(
                  'Manage',
                  style: TextStyle(
                    fontSize: 16,
                    height: 1,
                    color: Color(
                      0xFF5768ff,
                    ),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
        makeAccounts(),
      ],
    );
  }
}
