import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static String id = "Search_View";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search City", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: TextField(
            maxLines: 3,
            decoration: InputDecoration(
              hintText: "Enter City Name",
              label: Text("Search"),
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.orange),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
