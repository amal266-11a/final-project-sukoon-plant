import 'package:final_project/Model/Product.dart';
import 'package:final_project/constans/appbar.dart';
import 'package:final_project/constans/colorsCont.dart';
import 'package:final_project/pages.dart/checkOut.dart';
import 'package:final_project/pages.dart/detalis.dart';
import 'package:final_project/pages.dart/login.dart';
import 'package:final_project/profader.dart/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final classinstans = Provider.of<Cart>(context);
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 224, 236, 231),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/hedar.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),

                  accountName: Text(
                    "Amal Al-shreif",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 129, 83, 19),
                    ),
                  ),
                  accountEmail: Text(
                    "amal_266@icloud.com",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 16, 66, 54),
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/img/download.jpg"),
                  ),
                ),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: () {
                   
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                ListTile(
                  title: Text("My Products"),
                  leading: Icon(Icons.add_shopping_cart),
                  onTap: () {
                    
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkout()));
                  },
                 
                ),
                ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help_center),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Log out"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {
                    
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()));
                  
                  },
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Text("Developed by Queen Amal Al-Shreif © 2025"),
            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Appbarr,

        title: Text("Home"),
        actions: [
        productAndPrice(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          top: 20,
          right: 20,
          bottom: 20,
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 44,
          ),
          itemCount: Products.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Projcuts_ditails(productt: Products[index]),
                  ),
                );
              },
              child: GridTile(
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      right: 12,
                      left: 12,
                      bottom: 12,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Image.asset(Products[index].imgPath),
                      ),
                    ),
                  ],
                ),
                footer: GridTileBar(
                  backgroundColor: Color.fromARGB(66, 73, 127, 110),
                  //ياخذ ودجيت وتكون على اليمين واما الليدنق تكون باليسار
                  trailing: IconButton(
                    color: Color.fromARGB(255, 62, 94, 70),
                    onPressed: () {
                      classinstans.add(Products[index]);
                    },
                    icon: Icon(Icons.add),
                  ),

                  leading: Text("\SAR 13.99"),
                  //لو حذفت التايتل رح تجي بالنص فا بخليها سترنق فاضيه
                  title: Text(""),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
