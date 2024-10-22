import 'package:flutter/material.dart';

class CategoryProduct extends StatelessWidget {
  final VoidCallback onTapEdit;
  final VoidCallback onTapDelete;
  final String productCategory;

  const CategoryProduct(
      {super.key,
      required this.onTapEdit,
      required this.onTapDelete,
      required this.productCategory});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5, left: 5, right: 5, top: 5),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey.shade500, width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(productCategory, style: TextStyle(fontSize: 16)),
          Row(
            children: [
              GestureDetector(
                  onTap: onTapEdit,
                  child: Icon(Icons.edit, color: Colors.grey.shade500)),
              GestureDetector(
                  onTap: onTapDelete,
                  child: Icon(Icons.delete, color: Colors.grey.shade500))
            ],
          )
        ],
      ),
    );
  }
}
