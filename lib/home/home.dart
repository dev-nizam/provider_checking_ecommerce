import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_chacking_ecommerce/home/productfullview.dart';
import 'package:provider_chacking_ecommerce/model/productmodel.dart';
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

  late Productmodel productmodel;

  @override
  Widget build(BuildContext context) {
    productmodel = Provider.of<ProductProvider>(context).productmodel;
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
        body:!prodcutprovider.loading ?ListView(
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
                itemCount: 10,
                itemBuilder: (BuildContext ctx, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => ProductFullView(),
                        ),
                      );
                    },
                    child: Container(
                      height: 250,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            height: MediaQuery.of(context).size.height * .15,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    productmodel.data![index].attributes!.image!
                                        .data!.attributes!.url
                                        .toString(),
                                  ),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Text("Prodect name"),
                          Text("₹ 12"),
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
                itemCount: 10,
                itemBuilder: (BuildContext ctx, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => ProductFullView()));
                    },
                    child: Container(
                      height: 250,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            height: MediaQuery.of(context).size.height * .15,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXZJcthtFA0lPkH0GH48uWILdaWtPd7BNu0A&usqp=CAU"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Text("Prodect name"),
                          Text("₹ 12"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ):Center(child: CircularProgressIndicator(),),
      ),
    );
  }
}
