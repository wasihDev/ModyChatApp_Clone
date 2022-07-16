import 'package:flutter/material.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({
    Key? key,
    required this.image,
    required this.backgroundColor,
    required this.incomeMessage,
    required this.title,
    required this.subtitle,
    required this.time,
  }) : super(key: key);
  final String image;

  final Color backgroundColor;
  final String incomeMessage;
  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Stack(children: [
        Container(
          height: height * 0.08,
          width: width * 0.18,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(height / 70),
          ),
          child: Image.asset(image, fit: BoxFit.fitHeight),
        ),
        Positioned(
            right: width / -2000,
            child: CircleAvatar(
              radius: height / 80,
              backgroundColor: Colors.red,
              child: Text(
                incomeMessage,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: height / 60),
              ),
            ))
      ]),
      Padding(
        padding: EdgeInsets.only(bottom: height / 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: height / 40),
            ),
            SizedBox(
              height: height / 120,
            ),
            Text(
              subtitle,
              style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w600,
                  fontSize: height / 60),
            ),
          ],
        ),
      ),
      SizedBox(
        height: height / 9,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            time,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: height / 60),
          ),
        ],
      ),
    ]);
  }
}
