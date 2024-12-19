import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/admin/add_quiz.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  TextEditingController userNameController = new TextEditingController();
  TextEditingController userPasswordController = new TextEditingController();

  bool _obsecure = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFededeb),
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            margin: EdgeInsets.only(top: height / 2),
            padding: EdgeInsets.only(
              top: 45.0,
              left: 20.0,
              right: 20.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top:
                    Radius.elliptical(MediaQuery.of(context).size.width, 110.0),
              ),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 56, 55, 55),
                Color.fromARGB(255, 34, 32, 32),
                Color.fromARGB(255, 17, 17, 17),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 30.0,
              left: 30.0,
              right: 30.0,
            ),
            child: Form(
              child: Column(
                children: [
                  Text(
                    "Let's start with Admin",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: height / 2.2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                              top: 3.0,
                            ),
                            margin: EdgeInsets.only(
                              top: 20.0,
                              bottom: 10.0,
                              left: 15.0,
                              right: 15.0,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: TextFormField(
                                controller: userNameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter the Username.";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Username",
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                              top: 3.0,
                            ),
                            margin: EdgeInsets.only(
                              top: 20.0,
                              bottom: 10.0,
                              left: 15.0,
                              right: 15.0,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: TextFormField(
                                controller: userPasswordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  }

                                  if (value.length < 6) {
                                    return 'Password must be at least 6 characters';
                                  }
                                  return null;
                                },
                                obscureText: _obsecure,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _obsecure = !_obsecure;
                                      });
                                    },
                                    icon: _obsecure
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility_off),
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              LoginAdmin();
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 10.0,
                                bottom: 10.0,
                              ),
                              margin: EdgeInsets.only(
                                top: 20.0,
                                bottom: 10.0,
                                left: 15.0,
                                right: 15.0,
                              ),
                              width: width,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void LoginAdmin() {
    String username = userNameController.text.trim();
    String password = userPasswordController.text.trim();

    if (username.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Username cannot be empty.",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      );
      return;
    }

    if (password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Password cannot be empty.",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      );
      return;
    }

    FirebaseFirestore.instance.collection("Admin").get().then((snapshot) {
      bool isUserFound = false;

      for (var result in snapshot.docs) {
        if (result.data()['id'] == username) {
          isUserFound = true;

          if (result.data()['password'] != password) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Your Password is incorrect."),
              ),
            );
          } else {
            Route route = MaterialPageRoute(builder: (context) => AddQuiz());
            Navigator.pushReplacement(context, route);
          }
          return;
        }
      }

      if (!isUserFound) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Your ID is not correct or does not exist.",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        );
      }
    }).catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "An error occurred. Please try again later.",
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      );
      print("Error fetching admin data: $error");
    });
  }
}
