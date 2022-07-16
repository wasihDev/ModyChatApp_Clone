import 'package:flutter/material.dart';
import 'package:modychat/Calls/callMain.dart';
import 'package:modychat/Chatt/chat_view.dart';
import 'package:modychat/Status/statusMain.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.red,
            child: const Icon(Icons.message_rounded)),
        backgroundColor: const Color(0xff333333),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.photo_camera_outlined,
            size: height / 30,
          ),
          title: Text(
            'ModyChat',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: height / 30),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.all(height / 40),
              child: Image.asset('icons/search.png'),
            )
          ],
        ),
        body: Center(
            child: Column(
          children: [
            SizedBox(height: height / 30),
            Container(
              height: height * 0.1,
              width: width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(height / 50)),
              child: Padding(
                padding: EdgeInsets.all(height / 60.0),
                child: TabBar(
                    controller: tabController,
                    indicatorWeight: 2,
                    indicator: BoxDecoration(
                        color: const Color(0xff333333),
                        borderRadius: BorderRadius.circular(height / 80)),
                    tabs: const [
                      Tab(text: 'Chats'),
                      Tab(text: 'Status'),
                      Tab(text: 'Calls'),
                    ]),
              ),
            ),
            SizedBox(height: height / 30),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 243, 243, 243),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(height * 0.04),
                    topLeft: Radius.circular(height * 0.04)),
              ),
              child: TabBarView(
                  controller: tabController,
                  children: const [ChatView(), StatusMain(), CallMain()]),
            ))
          ],
        )));
  }
}
