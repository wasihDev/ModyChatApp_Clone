import 'package:flutter/material.dart';

import 'otherStatusTile.dart';
import 'statusTile.dart';

class StatusMain extends StatelessWidget {
  const StatusMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: height / 60),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(left: width / 30, top: height / 25),
              child: Text(
                "My Status",
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: height / 35),
              ),
            ),
            SizedBox(height: height / 50),
            const StatusTile(),
            SizedBox(height: height / 50),
            Padding(
              padding: EdgeInsets.only(left: width / 30),
              child: Text(
                "Friends",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: height / 35,
                    color: Colors.grey[500]),
              ),
            ),
            SizedBox(height: height / 50),
            const OtherStatusTile()
          ])),
    );
  }
}
