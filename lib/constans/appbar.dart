import 'package:final_project/pages.dart/checkOut.dart';
import 'package:final_project/profader.dart/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class productAndPrice extends StatelessWidget {
  const productAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final classinstans = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              left: 0,
              bottom: 17,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(211, 164, 255, 193),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "${classinstans.selectedProduct.length}", // هذا الرقم يتحدث
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkout()),
                );
              },
              icon: Icon(Icons.add_shopping_cart),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(right: 11.0),
          child: Text(
            "\SAR ${classinstans.priceTotale}",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
