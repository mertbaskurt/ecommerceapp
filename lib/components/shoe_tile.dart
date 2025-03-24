import 'package:flutter/material.dart';

import '../models/shoe.dart';


class ShoeTile extends StatelessWidget {
  Shoe shoe;
   ShoeTile({super.key,required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(),
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        //shoe foto

        


        //aciklama


        //fiyat


        //karta ekle

      ),

    );
    
  }
}