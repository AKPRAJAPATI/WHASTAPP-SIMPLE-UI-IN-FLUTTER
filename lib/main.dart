import 'package:flutter/material.dart';

import 'Screens/SplashScreen.dart';
import 'Tabs/CallsSection.dart';
import 'Tabs/ChatSection.dart';
import 'Tabs/StatusSection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black12,
          primarySwatch: Colors.red,

      ),
      // home: DefaultTabController(
      //   length: 3,
      //   child: Scaffold(
      //
      //   ),
      // ),
      initialRoute: '/',
      routes: {
        '/' : (context) => Home(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black12,
            title: Text("Whatsapp"),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 20.0, top: 8.0, bottom: 8.0),
                child: Icon(Icons.camera_enhance_outlined),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.menu),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: 'Chats'),
                Tab(text: 'Status'),
                Tab(text: 'Calls'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Tab(
                // icon: Icon(Icons.directions_car)
                child: ChatSection(),
              ),
              Tab(
                // icon: Icon(Icons.directions_transit)
                child: StatusSection(),
              ),
              Tab(
                // icon: Icon(Icons.directions_bike)
                child: CallSections(),
              ),
            ],
          ),
        ));
  }
}
