import 'package:flutter/material.dart';
import 'package:quiz_app/services/database.dart';

class AddQuiz extends StatefulWidget {
  const AddQuiz({super.key});

  @override
  State<AddQuiz> createState() => _AddQuizState();
}

class _AddQuizState extends State<AddQuiz> {
  String? selectedOption;
  final List<String> questionCategories = [
    "Basic",
    "Advanced",
    "Experienced",
  ];

  uploadItem() async {
    if (questioncontroller.text != "" &&
        option1controller.text != "" &&
        option2controller.text != "" &&
        option3controller.text != "" &&
        option4controller.text != "" &&
        correctcontroller.text != "") {
      Map<String, dynamic> addQuiz = {
        "question": questioncontroller.text,
        "option1": option1controller.text,
        "option2": option2controller.text,
        "option3": option3controller.text,
        "option4": option4controller.text,
        "correct": correctcontroller.text,
      };
      await Database().addQuizCategory(addQuiz, selectedOption!).then(
            (value) => {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.orangeAccent,
                  content: Text(
                    "Quiz has been add successfully.",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
              )
            },
          );
    }
  }

  TextEditingController questioncontroller = new TextEditingController();
  TextEditingController option1controller = new TextEditingController();
  TextEditingController option2controller = new TextEditingController();
  TextEditingController option3controller = new TextEditingController();
  TextEditingController option4controller = new TextEditingController();
  TextEditingController correctcontroller = new TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Quiz",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.only(
                top: 15.0, left: 20.0, right: 20.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/what.jpg",
                    fit: BoxFit.cover,
                    height: 250,
                    width: 250,
                  ),
                ),
                // For Question
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: " Question ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "*",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    controller: questioncontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the option.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter the question",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                // For option 1
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: " Option 1 ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "*",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    controller: option1controller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the option.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter option 1",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                //For option 2
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: " Option 2 ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "*",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    controller: option2controller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the option.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter option 2",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                //For Option 3
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: " Option 3 ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "*",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    controller: option3controller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the option.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter option 3",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                //For option 4
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: " Option 4 ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "*",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    controller: option4controller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the option.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter option 4",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                //For correct answer
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: " Correct Answer ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "*",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    controller: correctcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter the correct answer.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter correct answer",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                // For categories option
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: " Question Categories ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "*",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<String>(
                      value: selectedOption,
                      hint: Text(
                        "Select a category",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      isExpanded: true,
                      items: questionCategories.map((String category) {
                        return DropdownMenuItem<String>(
                          value: category,
                          child: Text(
                            category,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedOption = newValue;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select a category';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                GestureDetector(
                  onTap: () {
                    uploadItem();
                  },
                  child: Center(
                    child: Material(
                      elevation: 4.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        width: 180.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Text(
                            "Add",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
