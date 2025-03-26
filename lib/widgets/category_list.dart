//https://api.flutter.dev/flutter/material/TabController-class.html
//https://api.flutter.dev/flutter/widgets/ListView-class.html
import 'package:flutter/material.dart';
import '../screens/details_screen.dart';

class CategoryList extends StatelessWidget {
  final String category;

  CategoryList({required this.category});

  final Map<String, List<Map<String, String>>> categoryData = {
    "neighborhoods": [
      {"name": "Downtown", "image": "assets/downtown.jpeg"},
      {"name": "Hyde Park", "image": "assets/hyde_park.jpeg"},
      {"name": "Lincoln Park", "image": "assets/lincoln_park.jpeg"},
    ],
    "events": [
      {"name": "Lollapalooza", "image": "assets/lollapalooza.jpeg"},
      {"name": "Chicago Air Show", "image": "assets/air_show.jpeg"},
      {"name": "Taste of Chicago", "image": "assets/taste_chicago.jpg"},
    ],
    "sports": [
      {"name": "Chicago Bulls", "image": "assets/bulls_logo.jpeg"},
      {"name": "Chicago White Sox", "image": "assets/white_sox_logo.jpg"},
      {"name": "Chicago Fire", "image": "assets/fire_logo.jpg"},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categoryData[category]!.length,
      itemBuilder: (context, index) {
        var item = categoryData[category]![index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen(item: item)),
            );
          },
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(item["image"]!),
                radius: 30,
              ),
              title: Text(
                item["name"]!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      },
    );
  }
}
