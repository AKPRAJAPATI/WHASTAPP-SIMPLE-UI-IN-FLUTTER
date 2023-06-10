import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatSection(),
    );
  }
}
class ChatSection extends StatefulWidget {
  const ChatSection({Key? key}) : super(key: key);

  @override
  State<ChatSection> createState() => _ChatSectionState();
}

class _ChatSectionState extends State<ChatSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: NetworkImage('https://i.pinimg.com/originals/1d/2e/bf/1d2ebf369f3c51220b84d6f960e53cdb.jpg'),
                      fit:BoxFit.cover
                    )
                  ),
                ),
                title: ListTile(
                  title:  Text("akash kumar",style: TextStyle(color: Colors.white),),
                  subtitle:  Text("Dear Author Nitin Pandey,...",style: TextStyle(color: Colors.white)),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("08:23 PM",style: TextStyle(color: Colors.white),),
                    SizedBox(height: 5),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Center(child: Text("10")),
                      ),
                    )
                  ],
                )
              ),
            );
          }
        ),
      )
    );
  }
}

