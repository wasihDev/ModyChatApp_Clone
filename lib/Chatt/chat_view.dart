import 'package:flutter/material.dart';
import 'chats_list.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  // Friends Messgaes list

  get image => [
        'images/pic1.png',
        'images/pic2.png',
        'images/pic3.png',
      ];
  get backgroundColor => [
        const Color.fromARGB(255, 219, 138, 208),
        const Color.fromARGB(255, 137, 190, 233),
        const Color.fromARGB(255, 118, 216, 159),
      ];
  get incomeMessage => ['2', '1', '0'];
  get title => ['Joe Root', 'Navel Joard', 'Jame Anderson'];
  get subtitle =>
      ['Okay I will.', 'hehhehe thats funny', 'jame your good bowler mayt'];
  get time => ['2:50', '5:00', '9:10'];

// Group Messages Lists

  get images => [
        'images/pic4.png',
        'images/pic2.png',
      ];
  get backgroundColors => [
        const Color.fromARGB(255, 209, 182, 133),
        const Color.fromARGB(255, 226, 231, 150)
      ];
  get incomeMessages => ['2', '0'];
  get titles => ['Meetup 2020', 'dotpixel-agency'];
  get subtitles => [
        'See you all later i have some ',
        'My task is alomost done, will',
      ];
  get times => ['1:45', '5:00'];
  @override
  State<ChatView> createState() => _chatViewState();
}

class _chatViewState extends State<ChatView> {
  bool isVisible = false;
  bool pressOn = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: width / 15, horizontal: height / 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "All Chats",
              style:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: height / 35),
            ),
            Image.asset(
              "icons/filter2.png",
              color: const Color.fromARGB(255, 20, 20, 20),
              height: height / 45,
            )
          ]),
          SizedBox(
            height: height / 100,
          ),
          Text(
            'Friends',
            style: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.w600,
                fontSize: height / 45),
          ),
          SizedBox(
            height: height / 80,
          ),
          // ListView
          Column(
              children: List.generate(
            3,
            (index) => ChatsList(
              image: widget.image[index],
              backgroundColor: widget.backgroundColor[index],
              incomeMessage: widget.incomeMessage[index],
              title: widget.title[index],
              subtitle: widget.subtitle[index],
              time: widget.time[index],
            ),
          )),

          Visibility(
            visible: isVisible,
            child: Column(
                children: List.generate(
              3,
              (index) => ChatsList(
                image: widget.image[index],
                backgroundColor: widget.backgroundColor[index],
                incomeMessage: widget.incomeMessage[index],
                title: widget.title[index],
                subtitle: widget.subtitle[index],
                time: widget.time[index],
              ),
            )),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                  pressOn = !pressOn;
                });
              },
              child: pressOn
                  ? const Text(
                      "See less <",
                      style: TextStyle(color: Colors.red),
                    )
                  : const Text(
                      "See more >",
                      style: TextStyle(color: Colors.red),
                    )),
          SizedBox(height: height / 350),
          Text(
            'Group Messages',
            style: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.w600,
                fontSize: height / 45),
          ),
          SizedBox(height: height / 100),
          Column(
              children: List.generate(
            2,
            (index) => ChatsList(
              image: widget.images[index],
              backgroundColor: widget.backgroundColors[index],
              incomeMessage: widget.incomeMessages[index],
              title: widget.titles[index],
              subtitle: widget.subtitles[index],
              time: widget.time[index],
            ),
          )),
          SizedBox(height: height / 100),
          TextButton(
            onPressed: () {},
            child: const Text(
              "See more >",
              style: TextStyle(color: Colors.blue),
            ),
          )
        ]),
      ),
    );
  }
}
