
import 'package:final_project/Model/Product.dart';
import 'package:final_project/pages.dart/Singnup.dart';
import 'package:final_project/pages.dart/checkOut.dart';
import 'package:final_project/pages.dart/detalis.dart';
import 'package:final_project/pages.dart/home.dart';
import 'package:final_project/pages.dart/intro.dart';
import 'package:final_project/pages.dart/login.dart';
import 'package:final_project/profader.dart/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: ( context) {  
     return Cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Inteee(),

        ),
      
    );

  }
}