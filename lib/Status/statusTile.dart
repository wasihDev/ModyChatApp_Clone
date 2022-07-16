import 'package:flutter/material.dart';

class StatusTile extends StatelessWidget {
  const StatusTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: ((context, index) {
          return (ListTile(
            onTap: () {},
            leading: Stack(clipBehavior: Clip.none, children: [
              Container(
                height: height * 0.09,
                width: width * 0.17,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(height / 70),
                ),
                child: Image.asset(
                  'images/pic3.png',
                ),
              ),
              Positioned(
                  top: 40,
                  left: 45,
                  child: Container(
                      height: height * 0.030,
                      width: width * 0.060,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(height / 150),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: height / 40,
                      )))
            ]),
            title: Text(
              "Steven Smith",
              style:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: height / 40),
            ),
            subtitle: Text(
              "Tap to add status",
              style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w600,
                  fontSize: height / 60),
            ),
            trailing: Text(
              '2:45',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: height / 60),
            ),
          ));
        }));
  }
}
