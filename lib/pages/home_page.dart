import 'package:ecommerceapp/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Shop_Page(),
    const cart_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Padding(
                padding:  EdgeInsets.only(left: 12),
                child: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          )),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              
            //logo buraya
            DrawerHeader(
              child: Image.asset(
                width: 168,
                'lib/images1/nike.png',
                color: Colors.white,
              ),
            ),

            //diger sayfalar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.grey[800],),
            ),


             const Padding(
              padding:  EdgeInsets.only(left:25 ),
              child: ListTile(leading: Icon(Icons.home,color: Colors.white,),
              title: Text('Home',
              style: TextStyle(color: Colors.white),),
              ),
            ),
             const Padding(
              padding:  EdgeInsets.only(left:25 ),
              child: ListTile(leading: Icon(Icons.info,color: Colors.white,),
              title: Text('About',
              style: TextStyle(color: Colors.white),),
              ),
            ),
            ],),

            const Padding(
              padding:  EdgeInsets.only(left:25 ,bottom: 25),
              child: ListTile(leading: Icon(Icons.logout,color: Colors.white,),
              title: Text('Logout',
              style: TextStyle(color: Colors.white),),
              ),
            )



          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
