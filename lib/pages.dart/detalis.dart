import 'package:final_project/Model/Product.dart';
import 'package:final_project/constans/appbar.dart';
import 'package:final_project/constans/colorsCont.dart';
import 'package:flutter/material.dart';

class Projcuts_ditails extends StatefulWidget {
  Product   productt;
  Projcuts_ditails({required this.productt});
  @override
  State<Projcuts_ditails> createState() => _Projcuts_ditailsState();
}

class _Projcuts_ditailsState extends State<Projcuts_ditails> {
  //const Projcuts_ditails({super.key});
bool is_Show_More=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appbarr,

        title: Text("Details Screen"),
        actions: [
          productAndPrice(),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.productt.imgPath),
            SizedBox(height: 11),
            Text(
              "SAR ${widget.productt.priceProduct}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 20),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("NEW"),
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 237, 136, 106),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                SizedBox(width: 20),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: const Color.fromARGB(255, 245, 221, 137),
                    ),
                    Icon(
                      Icons.star,
                      color: const Color.fromARGB(255, 245, 221, 137),
                    ),
                    Icon(
                      Icons.star,
                      color: const Color.fromARGB(255, 245, 221, 137),
                    ),
                    Icon(
                      Icons.star,
                      color: const Color.fromARGB(255, 245, 221, 137),
                    ),
                  ],
                ),
                SizedBox(width: 77),
                Row(
                  children: [
                    Icon(Icons.edit_location, size: 23, color: Colors.grey),
                    SizedBox(width: 3),
                    Text("Flower Shop", style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Details : ",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.start,
              ),
            ),

            Text(
              "This charming indoor plant boasts a serene elegance with its soft green leaves cascading gently from the ceramic pot, evoking a sense of calm and natural balance. Each leaf appears thoughtfully arranged, reflecting the harmony found in nature. The plant sits nestled in a beige, handcrafted pot with a subtle textured finish—its earthy tone blending seamlessly into modern or traditional interiors With a 4-star customer rating and a modest price of SAR 12.99, this piece is more than just décor—it’s a small slice of tranquility for any room. Whether placed on a desk, shelf, or coffee table, it brings life and a fresh atmosphere without overwhelming the space. It’s ideal for those who appreciate minimalist beauty with a touch of organic charm, making it a gentle yet meaningful addition to the Flower Shop collection.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
              maxLines:is_Show_More? 3:null,
              overflow: TextOverflow.fade,
            ),
            TextButton(onPressed: (){
              setState(() {
                is_Show_More=!is_Show_More;
              });
            },
             child: Text(is_Show_More?"Show More":"Show Less",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.blueAccent
             ),),
             ),
          ],
        ),
      ),
    );
  }
}
