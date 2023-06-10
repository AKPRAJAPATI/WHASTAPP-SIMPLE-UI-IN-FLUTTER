import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: StatusSection(),
    );
  }
}

class StatusSection extends StatefulWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  State<StatusSection> createState() => _StatusSectionState();
}

class _StatusSectionState extends State<StatusSection> {
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
                            border: Border.all(width: 2,color: Colors.green),
                            image: DecorationImage(
                                image: NetworkImage('https://i.pinimg.com/originals/1d/2e/bf/1d2ebf369f3c51220b84d6f960e53cdb.jpg'),
                                fit:BoxFit.cover
                            )
                        ),
                      ),
                      title: ListTile(
                        title:  Text("akash kumar",style: TextStyle(color: Colors.white),),
                        subtitle:  Text("yesterday, 5:50 PM",style: TextStyle(color: Colors.white)),
                      ),
                  ),
                );
              }
          ),
        )
    );
  }
}
