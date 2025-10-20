import 'package:final_project/constans/appbar.dart';
import 'package:final_project/constans/colorsCont.dart';
import 'package:final_project/profader.dart/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
        final classinstans = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Appbarr,
        title: Text("Check Out :"),
        actions: [
          productAndPrice(),
        ],
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(30),
          child: Column(
            
            children:[ 
               SingleChildScrollView(
              child: SizedBox(
                height: 550,
                child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  itemCount: classinstans.selectedProduct.length,
                 
              
                  itemBuilder: (BuildContext context,int index){
                    return Card(
                      
                      child: ListTile(
                        
                        title: Text(classinstans.selectedProduct[index].name),
                        leading: CircleAvatar(backgroundImage: AssetImage(classinstans.selectedProduct[index].imgPath),),
                        subtitle: Text("${classinstans.selectedProduct[index].priceProduct}- Maine branch",style: TextStyle(color: const Color.fromARGB(255, 158, 161, 158)),),
                        trailing: IconButton(onPressed: (){
                          classinstans.remove(classinstans.selectedProduct[index]);
                        },
                         icon: Icon(Icons.remove,),),
                      ),
                    );
                  }),
              ),
            ),
            ElevatedButton(onPressed: (){}
            , child: Text("Pay SAR ${classinstans.priceTotale}",style: TextStyle(fontSize: 19,color: Colors.black),),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 228, 222, 222))
            ),
            ),
            
            ]),
        ),
      ) ,
    );
  }
}