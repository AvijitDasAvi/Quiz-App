import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/services/database.dart';

class Question extends StatefulWidget {
  final String pictureLoc;
  String category;
  final LinearGradient backgroundColor;
  Question(
      {required this.pictureLoc,
      required this.backgroundColor,
      required this.category});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  bool show = false;
  getontheload() async {
    QuizStream = await Database().getCategoryQuiz(widget.category);
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Stream? QuizStream;
  PageController controller = PageController();

  Widget allQuiz() {
    return StreamBuilder(
      stream: QuizStream,
      builder: (context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? PageView.builder(
                controller: controller,
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot ds = snapshot.data.docs[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                            ),
                            border: Border.symmetric(
                              vertical: BorderSide(
                                color: Colors.black,
                                width: 4.0,
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Center(
                            child: Text(
                              ds["question"],
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      //Option container
                      InkWell(
                        onTap: () {
                          show = true;
                          setState(() {});
                        },
                        child: show
                            ? Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: ds["correct"] == ds["option1"]
                                          ? Colors.green
                                          : Colors.red,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Text(
                                      ds["option1"],
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 255, 94, 0),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Text(
                                      ds["option1"],
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 255, 94, 0),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () {
                          show = true;
                          setState(() {});
                        },
                        child: show
                            ? Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: ds["correct"] == ds["option2"]
                                          ? Colors.green
                                          : Colors.red,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Text(
                                      ds["option2"],
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 255, 94, 0),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Text(
                                      ds["option2"],
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 255, 94, 0),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () {
                          show = true;
                          setState(() {});
                        },
                        child: show
                            ? Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: ds["correct"] == ds["option3"]
                                          ? Colors.green
                                          : Colors.red,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Text(
                                      ds["option3"],
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 255, 94, 0),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Text(
                                      ds["option3"],
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 255, 94, 0),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () {
                          show = true;
                          setState(() {});
                        },
                        child: show
                            ? Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: ds["correct"] == ds["option4"]
                                          ? Colors.green
                                          : Colors.red,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Text(
                                      ds["option4"],
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 255, 94, 0),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(15.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Text(
                                      ds["option4"],
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Color.fromARGB(255, 255, 94, 0),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ),
                    ],
                  );
                },
              )
            : Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: widget.backgroundColor,
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
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        widget.category,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
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
                  widget.pictureLoc,
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
              allQuiz(),
            ],
          ),
        ),
      ),
    );
  }
}
