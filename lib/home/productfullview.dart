import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/productProvider.dart';

class ProductFullView extends StatefulWidget {
  ProductFullView({Key? key, required this.productId}) : super(key: key);
  final String productId;

  @override
  State<ProductFullView> createState() => _ProductFullViewState();
}

class _ProductFullViewState extends State<ProductFullView> {
  // final List Images = [
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXZJcthtFA0lPkH0GH48uWILdaWtPd7BNu0A&usqp=CAU",
  //   "asset/productmg/green.jpg",
  //   "asset/productmg/download.png",
  // ];
  //
  // final List wColors=[
  //   "red",
  //   "green",
  //   "Black",
  // ];
  //
  // final List Price = [
  //   "3000",
  //   "4000",
  //   "5000",
  // ];

  void initState() {
    final productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    productProvider.getProductDetailsProvider(widget.productId);
    // TODO: implement initState
    super.initState();
  }

  // late String proImg = Images[0];
  //
  // late String proPrice = Price[0];

  @override
  Widget build(BuildContext context) {
    final prodcutprovider = Provider.of<ProductProvider>(context);
    return Scaffold(
      body: prodcutprovider.loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              //shrinkWrap: true,
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child:
                      // PageView.builder(
                      //   itemCount: prodcutprovider.productmodel.data!.length,
                      //   itemBuilder: (ctx, index) {
                      //     return
                            Column(
                            children: [
                              Container(
                                height: 300,
                                width: 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "http://192.168.18.6:1338" +
                                          prodcutprovider.getProductDetails.data!.attributes!.image!.data!.attributes!.url.toString(),
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      prodcutprovider.getProductDetails.data!.attributes!.name
                                          .toString(),
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.green[300],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "₹${prodcutprovider.getProductDetails.data!.attributes!.price.toString()}",
                                          style: TextStyle(fontSize: 30),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "quantity",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 40,
                                            child: ListView.builder(
                                              itemCount: 1,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (Ctx, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      // setState(() {
                                                      //   proImg = Images[index];
                                                      //   proPrice = Price[index];
                                                      // });
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Colors.green[300],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text(
                                                          "white",
                                                          style: TextStyle(
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            height: 200,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Discription",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                    height: 180,
                                                    child: Text(prodcutprovider
                                                        .getProductDetails
                                                        .data!
                                                        .attributes!
                                                        .description
                                                        .toString())),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              margin: EdgeInsets.all(50),
                                              width: 300,
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 60),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text("ADD TO CART"),
                                                    CircleAvatar(
                                                      backgroundColor:
                                                          Colors.white,
                                                      radius: 20,
                                                      child: Icon(
                                                          Icons.shopping_cart),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],


                        // scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ],
      ),
    );
  }
}