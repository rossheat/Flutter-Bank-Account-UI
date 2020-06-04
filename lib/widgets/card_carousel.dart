import 'package:banking_ui/data/data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CardCarousel extends StatelessWidget {
  final User user;
  CardCarousel({this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Credit cards',
                style: TextStyle(
                  fontSize: 25,
                  height: 1,
                ),
              ),
              FlatButton(
                onPressed: () => 'Manage credit cards tapped',
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                child: Text(
                  'Manage',
                  style: TextStyle(
                      fontSize: 16,
                      height: 1,
                      color: Color(0xff5768ff),
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        CarouselSlider(
          height: 230,
          initialPage: 1,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          items: user.creditCards.map(
            (card) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(5, 8, 5, 30),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: card.cardColor),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: card.cardColor[1],
                          offset: Offset(0, 11),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '\$',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                card.debt.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w100,
                                  height: 1,
                                  fontSize: 55,
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 75,
                                child: Image(
                                  image: AssetImage('assets/images/visa.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            '●●●● ●●●● ●●●● ${card.cardNum.substring(card.cardNum.length - 4)}',
                            style: TextStyle(
                              height: 1,
                              color: Colors.grey[200],
                              fontSize: 15,
                              fontFamily: 'Orbitron',
                              letterSpacing: 3,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            card.sortCode,
                            style: TextStyle(
                              height: 1,
                              color: Colors.grey[400],
                              fontSize: 17,
                              fontFamily: 'Orbitron',
                              letterSpacing: 2,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
