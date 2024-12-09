import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/text_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/login.png",
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: " Email ",
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
              height: 5.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "avi@gmail.com",
                hintStyle: AppTextStyle.labelStyle(),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.only(
                  top: 20.0,
                  left: 16.0,
                  right: 16.0,
                  bottom: 8.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: " Password ",
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
              height: 5.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: AppTextStyle.labelStyle(),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.only(
                  top: 20.0,
                  left: 16.0,
                  right: 16.0,
                  bottom: 8.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
