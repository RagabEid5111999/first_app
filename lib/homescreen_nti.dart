import 'package:first_app/customcard.dart';
import 'package:flutter/material.dart';

class HomescreenNti extends StatefulWidget {
  const HomescreenNti({super.key});

  @override
  State<HomescreenNti> createState() => _HomescreenNtiState();
}

class _HomescreenNtiState extends State<HomescreenNti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // shrinkrab physics
      body: ListView(
        children: [
          Center(
            child: Stack(
              // fit: StackFit.expand,
              children: [
                Container(
                  height: 700,
                  width: double.infinity,
                  color: Colors.blue,
                ),

                Container(
                  height: 150,
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Hello, Ahmed",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 80),
                      Icon(Icons.notification_add),
                      SizedBox(width: 10),
                      Icon(Icons.badge),
                    ],
                  ),
                ),

                Positioned(
                  top: 140,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 960,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 10,
                          ),
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                spacing: 50,
                                children: [
                                  Text(
                                    "Play With Your",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 1),
                                  Icon(Icons.personal_injury_sharp),
                                  Icon(Icons.personal_injury_sharp),
                                ],
                              ),
                              Text(
                                "Friends",
                                style: TextStyle(color: Colors.white),
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Find Friend"),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("Join Quiz"),
                                  ),
                                  SizedBox(width: 50),
                                  Icon(Icons.family_restroom),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Latest Lessons",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 140,
                          width: double.infinity,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 20,
                            itemBuilder:
                                (context, index) => Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  margin: EdgeInsets.only(right: 5),
                                  width: 185,
                                  height: 100,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 185,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                              // fit: BoxFit.fill,
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlJ8O5k1LrfD9wYBVnTVajaIh3mmhKm9Dq2w&s",
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "  The First Physics",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                            "Ch $index",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "  Lessons",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.timer, size: 18),
                                          Text(
                                            "10 min",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          SizedBox(width: 20),
                                          Icon(Icons.link_sharp, size: 18),
                                          Text(
                                            "Physics",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                          ),
                        ),
                        Text(
                          "Top Ranked",
                          style: TextStyle(color: Colors.black),
                        ),
                        Container(
                          height: 100,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            spacing: 15,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
                                ),
                              ),
                              Text(
                                "Ahmed",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 90),
                              Text(
                                "98%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Latest Exam insights",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: SizedBox(
              height: 800,
              width: 600,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: List.generate(
                  4,
                  (index) => Customcard(
                    name: "name",
                    email: "email",
                    date: "date",
                    imagename: "bread.jpg",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
