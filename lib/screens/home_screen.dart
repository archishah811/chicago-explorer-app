//https://docs.flutter.dev/ui/layout/tutorial
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart'; // Import custom AppBar widget
import '../widgets/category_list.dart'; // Import category list widget

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150), // Make AppBar larger
        child: CustomAppBar(), // Use the custom AppBar widget
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: "NEIGHBORHOODS"),
              Tab(text: "EVENTS"),
              Tab(text: "SPORTS"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                CategoryList(category: "neighborhoods"),
                CategoryList(category: "events"),
                CategoryList(category: "sports"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
