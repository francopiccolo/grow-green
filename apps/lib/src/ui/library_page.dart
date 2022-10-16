import 'package:flutter/material.dart';
import 'package:grow_green/src/models/plant_model.dart';
import 'package:grow_green/src/ui/plant_page.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  TextEditingController editingController = TextEditingController();
  List<Plant> items = [];
  List<Plant> plants = Plant.plants;

  @override
  void initState() {
    items.addAll(plants);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<Plant> dummySearchList = [];
    dummySearchList.addAll(plants);
    if (query.isNotEmpty) {
      List<Plant> dummyListData = [];
      for (var item in dummySearchList) {
        if (item.plantName!.toLowerCase().contains(query.toLowerCase())) {
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
        items.addAll(plants);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
                      return PlantPage(
                        plantInfo: items[index].plantInfo,
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
                        items[index].plantImage!,
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.green.shade50,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    5.0,
                                  ),
                                )),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                "Grow your own",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          )
                        ],
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
                                  items[index].plantName!,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.85,
                                // height: .0,
                                child: Text(
                                  items[index]
                                      .plantInfo!
                                      .description!
                                      .toString(),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
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
