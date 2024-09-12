import 'package:flutter/material.dart';

class FeatureContainer extends StatelessWidget {
  final Gradient color;
  final IconData icon;
  final String levelText;
  final String discriptionText;
  final String imagePath;
  const FeatureContainer({
    super.key,
    required this.icon,
    required this.color,
    required this.levelText,
    required this.discriptionText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Material(
            elevation: 15.0,
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                gradient: color,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    levelText,
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0,
                    ),
                  ),
                  Text(
                    discriptionText,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset(
                imagePath,
                height: 120.0,
                width: 120.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
