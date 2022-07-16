import 'package:flutter/material.dart';

class CallList extends StatelessWidget {
  const CallList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: ((context, index) {
          return (ListTile(
              onTap: () {},
              leading: Container(
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
              title: Text(
                "Steven Smith",
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: height / 40),
              ),
              subtitle: Text(
                "2:30",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w600,
                    fontSize: height / 60),
              ),
              trailing: const Icon(
                Icons.phone_callback_outlined,
                color: Colors.red,
              )));
        }));
  }
}
