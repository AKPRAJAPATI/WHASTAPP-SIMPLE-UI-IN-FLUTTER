import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CallSections(),
    );
  }
}

class CallSections extends StatefulWidget {
  const CallSections({Key? key}) : super(key: key);

  @override
  State<CallSections> createState() => _CallSectionsState();
}

class _CallSectionsState extends State<CallSections> {
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
                      subtitle:  Text("yesterday, 5:50 PM",style: TextStyle(color: Colors.white)),
                      trailing: Icon(Icons.phone,color: Colors.white),
                    ),
                  ),
                );
              }
          ),
        )
    );
  }
}
