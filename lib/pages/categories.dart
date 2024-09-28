import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  
  final String categoryName;

  const Categories({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(22)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:10.0, bottom: 10.0, left: 18, right: 18),
        child: Text(categoryName,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}