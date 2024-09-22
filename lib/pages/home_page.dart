import 'package:flutter/material.dart';
import 'package:quiz_app/pages/level_page.dart';
import 'package:quiz_app/widgets/feature_container.dart';
import 'package:quiz_app/widgets/gradient_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Top icon
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              //Text widgets
              Text(
                "Let's Play for English",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Be the first!",
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500),
              ),
              //Level 1 container
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Level_Page(
                        levelText: "Level 1",
                        levelName: "Basic",
                        pictureLoc: "assets/images/level1.png",
                        infoText:
                            "A basic question for users is one that is simple, direct, and focuses on obtaining straightforward information or feedback. It's usually clear and to the point, allowing users to respond easily without confusion. Are you ready?",
                        backgroundColor: firstContainer(),
                      ),
                    ),
                  );
                },
                child: FeatureContainer(
                  color: firstContainer(),
                  icon: Icons.done,
                  levelText: "Level 1",
                  discriptionText: "Basic",
                  imagePath: "assets/images/level1.png",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              //Level 2 container
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Level_Page(
                        levelText: "Level 2",
                        levelName: "Advanced",
                        pictureLoc: "assets/images/level2.png",
                        infoText:
                            "An advanced question is one that delves deeper into a topic, often requiring a more detailed or expert-level response. Are you ready?",
                        backgroundColor: secondContainer(),
                      ),
                    ),
                  );
                },
                child: FeatureContainer(
                  icon: Icons.play_arrow,
                  color: secondContainer(),
                  levelText: "Level 2",
                  discriptionText: "Advanced",
                  imagePath: "assets/images/level2.png",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              //Level 3 container
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Level_Page(
                        levelText: "Level 3",
                        levelName: "Experienced",
                        pictureLoc: "assets/images/level3.png",
                        infoText:
                            "An experienced question should reflect a deeper understanding of the topic and aim to explore more complex or nuanced aspects. Are you ready?",
                        backgroundColor: thirdContainer(),
                      ),
                    ),
                  );
                },
                child: FeatureContainer(
                  icon: Icons.lock,
                  color: thirdContainer(),
                  levelText: "Level 3",
                  discriptionText: "Experienced",
                  imagePath: "assets/images/level3.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
