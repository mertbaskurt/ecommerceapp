import 'package:ecommerceapp/components/shoe_tile.dart';
import 'package:ecommerceapp/models/cart.dart';
import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop_Page extends StatefulWidget {
  const Shop_Page({super.key});

  @override
  State<Shop_Page>createState() => _ShopPageState();
  }

  class _ShopPageState extends State<Shop_Page> {
    void addShoeToCart(Shoe shoe){
      Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

      showDialog(context: context, builder:  (context) => AlertDialog(
        title: Text('Succesfully added !'),
        content: Text('Check Your Cart !'),
      ),);
    }





    @override
    Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
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
            children: const [
              Text(
                'Hot Picks🔥',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'See All',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = value.getShoeList()[index];
              return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
              );
            },
          ),
        ),

        const Padding(
          padding:  EdgeInsets.only(top: 25,left: 25,right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )


      ],
    ),);
    
  }
    
  }
  
  