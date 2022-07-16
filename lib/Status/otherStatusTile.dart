import 'package:flutter/material.dart';

class OtherStatusTile extends StatefulWidget {
  const OtherStatusTile({
    Key? key,
  }) : super(key: key);

  get bColor => [
        const Color.fromARGB(253, 118, 188, 228),
        const Color.fromARGB(255, 212, 0, 64),
        const Color.fromARGB(235, 212, 121, 148),
        const Color.fromARGB(255, 121, 212, 129)
      ];
  get bbColor => [
        const Color.fromARGB(251, 171, 209, 231),
        const Color.fromARGB(255, 216, 101, 136),
        const Color.fromARGB(235, 236, 183, 199),
        const Color.fromARGB(255, 158, 218, 163)
      ];
  get ttitle => [
        'Joe Root',
        'Navel Joard',
        'james Andrison',
        'Evena Loran',
      ];

  get ssubtitle => [
        '25 minutes ago',
        '30 minutes ago',
        '40 minutes ago',
        'Today 7:30 ago',
      ];

  get ttime => [
        '3:15',
        '4:09',
        '2:10',
        '1 days',
      ];

  @override
  State<OtherStatusTile> createState() => _OtherStatusTileState();
}

class _OtherStatusTileState extends State<OtherStatusTile> {
  @override
  Widget build(BuildContext context) {
    //var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: ((context, index) {
              return (ListTile(
                onTap: () {},
                leading: Stack(children: [
                  Positioned(
                      right: 5,
                      child: CircleAvatar(
                        radius: height / 23,
                        backgroundColor: widget.bbColor[index],
                      )),
                  CircleAvatar(
                    backgroundColor: widget.bColor[index],
                    radius: height / 20,
                    child: Image.asset(
                      'images/pic3.png',
                    ),
                  ),
                ]),
                title: Text(
                  widget.ttitle[index],
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: height / 40),
                ),
                subtitle: Text(
                  widget.ssubtitle[index],
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w600,
                      fontSize: height / 60),
                ),
                trailing: Text(
                  widget.ttime[index],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: height / 60),
                ),
              ));
            })),
      ),
    );
  }
}
