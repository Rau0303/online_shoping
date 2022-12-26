import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextFormField(
          controller: _searchController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),

            ),
            hintText: "-Поиск-",
            fillColor: Colors.white,
            filled: true,
            contentPadding:const EdgeInsets.all(12.0),
            prefixIcon: const Icon(Icons.search)

          ),
        )
      )
    );
  }
}
