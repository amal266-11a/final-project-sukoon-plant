class Product {
  //لان لكل صوره باث فا بسوي كلاس ويصير بس امرر الباث المختلف لها
  String imgPath;
  //لكل منتج له سعر فا بسوي له متغير
  double priceProduct;
  String name;
  Product({required this.name,required this.imgPath,required  this.priceProduct});
}
final List<Product> Products = [
    Product(name:"prodcut 1",imgPath: "assets/img/almfrgh.jpg", priceProduct: 13.56 ),
    Product(name:"prodcut 2",imgPath: "assets/img/alkthera.jpg", priceProduct: 13.56),
    Product(name:"prodcut 3",imgPath: "assets/img/maroja.jpg", priceProduct: 13.56),
    Product(name:"prodcut 4",imgPath: "assets/img/martba.jpg", priceProduct: 13.56),
    Product(name:"prodcut 5",imgPath: "assets/img/spatial.jpg", priceProduct: 13.56),
    Product(name:"prodcut 6",imgPath: "assets/img/tastas.jpg", priceProduct: 13.56),
    Product(name:"prodcut 7",imgPath: "assets/img/Almlsa.jpg", priceProduct: 13.56),
  ];
