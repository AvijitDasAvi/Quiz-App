import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/gradient_color.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: firstContainer(),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Close button
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white60,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      "01",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          "3",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Center(
                child: Image.asset(
                  "assets/images/level1.png",
                  height: 300.0,
                  width: 300.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Question 5 to 10",
                style: TextStyle(
                  color: Color.fromARGB(172, 255, 255, 255),
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "In which city of Bangladesh is the largest port?",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              //Option container
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Payra",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 255, 94, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Chittagong",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 255, 94, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Mongla",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 255, 94, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Matarbari",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 255, 94, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
