import 'package:flutter/material.dart';
import 'package:quiz_app/pages/continuing_page.dart';
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
          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
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
                "Let's Play",
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
              FeatureContainer(
                color: firstContainer(),
                icon: Icons.done,
                levelText: "Level 1",
                discriptionText: "Travel Newbie",
                imagePath: "assets/images/level1.png",
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
                      builder: (context) => Continuing(),
                    ),
                  );
                },
                child: FeatureContainer(
                  icon: Icons.play_arrow,
                  color: secondContainer(),
                  levelText: "Level 2",
                  discriptionText: "Continuing",
                  imagePath: "assets/images/level2.png",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              //Level 3 container
              FeatureContainer(
                icon: Icons.lock,
                color: thirdContainer(),
                levelText: "Level 3",
                discriptionText: "Experienced",
                imagePath: "assets/images/level3.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
