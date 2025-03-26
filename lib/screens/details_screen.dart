// https://docs.flutter.dev/ui/widgets
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Map<String, String> item;

  DetailsScreen({required this.item});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool showTrivia = false;

  final Map<String, String> trivia = {
    "Chicago Bulls": "The Bulls won 6 NBA Championships with Michael Jordan!",
    "Chicago White Sox": "The White Sox won the 2005 World Series!",
    "Chicago Fire": "The Chicago Fire Soccer Club was founded in 1997.",
    "Downtown": "Chicago’s Willis Tower was once the tallest building in the world!",
    "Hyde Park": "Home to the University of Chicago and the 1893 World’s Fair!",
    "Lincoln Park": "Features the largest park in Chicago with a free zoo!",
    "Lollapalooza": "A 4-day music festival featuring over 170 artists!",
    "Chicago Air Show": "One of the largest air shows in the U.S. since 1959!",
    "Taste of Chicago": "The world’s largest food festival held in July!"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.item["name"]!)),
      body: Column(
        children: [
          Image.asset(widget.item["image"]!, height: 250, fit: BoxFit.cover),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              showTrivia ? trivia[widget.item["name"]!]! : "Description of ${widget.item["name"]}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                showTrivia = !showTrivia;
              });
            },
            child: Icon(showTrivia ? Icons.info_outline : Icons.question_mark),
          ),
        ],
      ),
    );
  }
}
