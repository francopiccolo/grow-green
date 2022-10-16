import 'package:flutter/material.dart';
import 'package:grow_green/src/models/product_model.dart';
import 'package:grow_green/src/ui/product_page.dart';

class ShopPage extends StatefulWidget {
  ShopPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  TextEditingController editingController = TextEditingController();
  List<Product> items = [];
  List<Product> products = Product.products;

  @override
  void initState() {
    items.addAll(products);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<Product> dummySearchList = [];
    dummySearchList.addAll(products);
    if (query.isNotEmpty) {
      List<Product> dummyListData = [];
      for (var item in dummySearchList) {
        if (item.productName!.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      }
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(products);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // List<Product> products = Product.products;
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.green.shade900,
              title: const Text('Grow green'),
              pinned: true,
              floating: true,
              actions: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                )
              ],
              forceElevated: innerBoxIsScrolled,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 60,
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                        ),
                        onChanged: (value) {
                          filterSearchResults(value);
                        },
                        controller: editingController,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                          ),
                          labelText: "Search",
                          // hintText: "Search",
                          focusColor: Colors.green.shade900,
                          contentPadding: const EdgeInsets.all(5.0),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.green.shade900,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red.shade900),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade700),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red.shade700),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green.shade900),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green.shade900),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green.shade900),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return ProductPage(
                        productInfo: products[index].productInfo,
                      );
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 240,
                      child: Image.network(
                        items[index].productImage!,
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  items[index].productName!,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\u00A3${items[index].productPrice!.toString()}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 32,
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor: Colors.pink,
                                  primary: Colors.white,
                                ),
                                onPressed: () {},
                                child: const Text("Buy"),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Row(
                              children: const [
                                Text(
                                  "Approx.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Row(
                                  children: const [
                                    Text(
                                      "In stock",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "(Shipped within 2-3 working days)",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
