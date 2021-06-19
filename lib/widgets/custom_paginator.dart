import 'package:flutter/material.dart';

class CustomPaginator extends StatelessWidget {
  int page;

  CustomPaginator({required this.page});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: List.generate(3, (index) {
              return Container(
                margin: const EdgeInsets.all(4),
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: index == page ? Color(0XFFFD5523) : Colors.grey,
                  shape: BoxShape.circle,
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
