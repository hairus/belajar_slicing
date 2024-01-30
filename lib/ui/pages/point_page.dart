import 'package:belajar_slicing/shared/theme.dart';
import 'package:flutter/material.dart';

class PointPage extends StatelessWidget {
  const PointPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenDarkColor,
      appBar: AppBar(
        backgroundColor: greenDarkColor,
        title: Image.asset(
          "assets/images/logo.png",
          width: 80.0,
          height: 80.0,
          fit: BoxFit.fill,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
