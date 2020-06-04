import 'package:banking_ui/data/data.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final User user;
  Header({this.user});

  int calculateTotalDebt() {
    int totalDebt = 0;
    user.creditCards.forEach((card) {
      totalDebt += card.debt;
    });
    return totalDebt;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '\$',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  Text(
                    (user.monthlyTotalThousands[
                                user.monthlyTotalThousands.length] *
                            1000)
                        .round()
                        .toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      height: 1,
                      fontSize: 60,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                'Total debt',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  color: Colors.grey[700],
                ),
              ),
              Text(
                '\$${calculateTotalDebt().toString()}',
                style: TextStyle(
                  fontSize: 20,
                  height: 1,
                  color: Color(0xFFff2983),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
