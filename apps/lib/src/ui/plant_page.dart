import 'package:flutter/material.dart';
import 'package:grow_green/src/models/plant_model.dart';

class PlantPage extends StatelessWidget {
  PlantPage({
    Key? key,
    this.plantInfo,
  }) : super(key: key);

  final PlantInfo? plantInfo;

  Widget _buildExpandableTile(Details item) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      title: Text(
        item.title!,
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item.details!,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
        title: const Text(''),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 20,
            ),
            child: const Icon(
              Icons.share,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                plantInfo!.name!,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                plantInfo!.description!,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 240,
                child: Image.network(
                  plantInfo!.picture!,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Jobs to do now",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 3.0,
                    ),
                    child: const Icon(
                      Icons.circle,
                      color: Colors.black,
                      size: 12.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: RichText(
                        text: const TextSpan(
                          text:
                              'Cut down growth when stems and foliage turn yellow',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Month by month",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black.withOpacity(
                    0.4,
                  ),
                ),
              ),
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: plantInfo!.cycle!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: index > 1 && index < 6
                        ? Colors.green.shade100
                        : Colors.white,
                    child: Column(
                      children: [
                        Text(
                          plantInfo!.cycle![index].month!,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Divider(
                          color: Colors.black.withOpacity(0.4),
                        ),
                        Text(
                          plantInfo!.cycle![index].todo!,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Details",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 500,
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: plantInfo!.details!.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildExpandableTile(plantInfo!.details![index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
