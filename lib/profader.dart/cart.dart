import 'package:final_project/Model/Product.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier{
  List selectedProduct= [ ];
  double priceTotale=0;


  add(Product product){
    selectedProduct.add(product);
    priceTotale += product.priceProduct.round();
    notifyListeners();
  }
  remove(Product product){
    selectedProduct.remove(product);
     priceTotale -= product.priceProduct.round();
     notifyListeners();
  }
}