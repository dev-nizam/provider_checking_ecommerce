import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_chacking_ecommerce/home/productfullview.dart';
import 'package:provider_chacking_ecommerce/provider/productProvider.dart';

class Screen_Home extends StatefulWidget {
  const Screen_Home({Key? key}) : super(key: key);

  @override
  State<Screen_Home> createState() => _Screen_HomeState();
}

class _Screen_HomeState extends State<Screen_Home> {
  @override
  void initState() {
    final productProvider =
        Provider.of<ProductProvider>(context, listen: false);
    productProvider.getProductPage();
    // TODO: implement initState
    super.initState();
  }

  // late Productmodel productmodel;

  @override
  Widget build(BuildContext context) {
    // productmodel = Provider.of<ProductProvider>(context).productmodel;
    final prodcutprovider = Provider.of<ProductProvider>(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Nibuy"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            ],
          ),
          body: prodcutprovider.loading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextField(
                          // obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'Search',
                              suffixIcon: Icon(Icons.keyboard_voice_outlined,
                                  color: Colors.red),
                              prefixIcon: Icon(
                                Icons.search_off,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 25,
                      width: 50,
                      child: Text(
                        "best selling",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: prodcutprovider.productmodel.data!.length,
                        itemBuilder: (BuildContext ctx, int index) {
                          return GestureDetector(
                            onTap: () {
                              // prodcutprovider.productmodel.data![index].id
                              //     .toString();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (ctx) => ProductFullView(
                                    productId: prodcutprovider.productmodel.data![index].id.toString(),
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 250,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    height: MediaQuery.of(context).size.height *
                                        .15,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "http://192.168.18.6:1338" +
                                                prodcutprovider
                                                    .productmodel
                                                    .data![index]
                                                    .attributes!
                                                    .image!
                                                    .data!
                                                    .attributes!
                                                    .url
                                                    .toString(),
                                          ),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .02,
                                      width: 100,
                                      child: Text(prodcutprovider.productmodel
                                          .data![index].attributes!.name
                                          .toString())),
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .05,
                                      width: 100,
                                      child: Text(prodcutprovider.productmodel
                                          .data![index].attributes!.price
                                          .toString())),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 25,
                      width: 50,
                      child: Text(
                        "best deal",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: prodcutprovider.productmodel.data!.length,
                        itemBuilder: (BuildContext ctx, int index) {
                          print(prodcutprovider.productmodel.data![0].attributes!.image!.data!.attributes!.url!.isEmpty);
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => ProductFullView(
                                            productId: prodcutprovider.productmodel.data![index].id.toString(),
                                          )));
                            },
                            child: Container(
                              height: 250,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    height: MediaQuery.of(context).size.height *
                                        .15,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "http://192.168.18.6:1338" +
                                                  prodcutprovider
                                                      .productmodel
                                                      .data![index]
                                                      .attributes!
                                                      .image!
                                                      .data!
                                                      .attributes!
                                                      .url
                                                      .toString(),),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .02,
                                      width: 100,
                                      child: Text(prodcutprovider.productmodel
                                          .data![index].attributes!.name
                                          .toString())),
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .05,
                                      width: 100,
                                      child: Text(prodcutprovider.productmodel
                                          .data![index].attributes!.price
                                          .toString(),),),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )),
    );
  }
}
