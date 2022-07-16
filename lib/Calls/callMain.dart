import 'package:flutter/material.dart';

import 'callList.dart';

class CallMain extends StatelessWidget {
  const CallMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: width / 20,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding: EdgeInsets.only(left: height / 40),
                  child: Text(
                    "All Calls",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: height / 35),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: height / 40),
                  child: Image.asset(
                    "icons/filter2.png",
                    color: const Color.fromARGB(255, 20, 20, 20),
                    height: height / 45,
                  ),
                )
              ]),
              SizedBox(
                height: height / 100,
              ),
              Padding(
                padding: EdgeInsets.only(left: height / 40),
                child: Text(
                  'Friends',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w600,
                      fontSize: height / 45),
                ),
              ),
              SizedBox(
                height: height / 150,
              ),
              const CallList()
            ])));
  }
}
