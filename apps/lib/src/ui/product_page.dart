import 'package:flutter/material.dart';
import 'package:grow_green/src/models/product_model.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    Key? key,
    this.productInfo,
  }) : super(key: key);

  final ProductInfo? productInfo;

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
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 240,
                child: Image.network(
                  productInfo!.picture!,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 240,
                child: Image.network(
                  "https://www.rhsplants.co.uk/html/plantheightspread/ImageRenderJpeg.ashx?PlantHeight=1.2&PlantSpread=0.3&Category=perennial&CanvasWidth=513&CanvasHeight=401",
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      children: [
                        Text(
                          productInfo!.brand!,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        productInfo!.name!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.circle,
                    color: Colors.black,
                    size: 12.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Position:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: ' Full sun',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.circle,
                    color: Colors.black,
                    size: 12.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Soil:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: ' humus-rich, moisture retentive soil',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        text:
                            'An outstanding variety with particularly long, elegant well-filled pods giving you a generous crop of fresh light green beans which taste superb. The vigorous plants are quick to mature, giving an early June crop from a spring sowing. Pick beans young when they are at their most tender for the best flavour. If picked very young, broad beans have the most delicate flavour and can be eaten pod and all: just top and tail and steam whole.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
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
                        textAlign: TextAlign.justify,
                        text: const TextSpan(
                          text: 'Soil:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  ' Choose a sunny spot with well-drained soil and sow seeds individually in early spring direct where they are to grow, 5cm deep and 10cm apart. Protect from mice and slugs. Support loosely with canes and string once they reach 15cm tall and pinch out the tops once pods have set to prevent blackfly.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.circle,
                    color: Colors.black,
                    size: 12.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Sow:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: ' February - April',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.circle,
                    color: Colors.black,
                    size: 12.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Harvest:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: ' June - August',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.circle,
                    color: Colors.black,
                    size: 12.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Approximate quantity:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: ' 50 seeds',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
