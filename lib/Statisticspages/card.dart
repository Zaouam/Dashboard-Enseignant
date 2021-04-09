import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Card(
            leading: Icon(Icons.supervised_user_circle_outlined),
            number: "50",
            name: "تلميذ",
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            leading: Icon(Icons.home),
            number: "3",
            name: "أقسام",
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key key,
    this.leading,
    this.name,
    this.number,
  }) : super(key: key);

  final leading, name, number;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        margin: EdgeInsets.only(
          left: 20,
          top: 20 / 2,
          bottom: 20 * 2.5,
        ),
        width: 150,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.white.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text: number,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.red)),
                      ],
                    ),
                  ),
                  Spacer(),
                  leading
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
