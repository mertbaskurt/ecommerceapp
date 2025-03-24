import 'package:flutter/material.dart';

class Shop_Page extends StatelessWidget {
  const Shop_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //searchbar

        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        //message

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            'everyone flies.. some fly longer than others',
            style: TextStyle(color: Colors.grey),
          ),
        ),

        //hot pictures

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const[
              Text(
                'Hot Picks🔥',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text('See All',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
            ],
          ),
        )
      ],
    );
  }
}
