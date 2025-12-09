import 'package:flutter/material.dart';

class TaskOneScreen extends StatefulWidget {
  const TaskOneScreen({super.key});

  @override
  State<TaskOneScreen> createState() => _TaskOneScreenState();
}

class _TaskOneScreenState extends State<TaskOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.center,
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.edit, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          color: Colors.grey[200],
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Stack(
                fit: StackFit.passthrough,
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 230,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1559128010-7c1ad6e1b6a5?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aXNsYW5kfGVufDB8fDB8fHww",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border()),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNbkECXtEG_6-RV7CSNgNoYUGZE-JCliYm9g&s",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  spacing: 10,
                  children: [
                    Text(
                      "Sarah Miller",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                    Text(
                      "Lead Developer",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "San Francisco, CA",
                      style: TextStyle(color: Colors.black),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      height: 40,
                      color: Colors.blue[200],
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 20,
                        children: [
                          Icon(Icons.mail),
                          Text(
                            "sarah.miller@example.com",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Divider(
                thickness: 1,
                color: Colors.grey.shade300,
                height: 30,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.center,
                width: double.infinity,
                height: 300,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      color: Colors.white,
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text("Account Setting"),
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      color: Colors.white,
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text("Notifications"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
