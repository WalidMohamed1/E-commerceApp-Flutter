import 'package:flutter/material.dart';
import '../../moduls/EcommerceScreen.dart';
import '../../moduls/ProductDetailScreen.dart';

Widget buildCategory(category,context) {
  return Card(
    elevation: 7,
    child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => EcommerceScreen()));
        },
        child: Stack(
          children: [
            Container(
                height: double.infinity,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    '${category['avatar']}',
                    fit: BoxFit.cover,
                  ),
                )),
            Center(
              child: Container(
                color: Colors.black38,
                child: Text(
                  '${category['name']}',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        )),
  );
}

Widget buildProduct(product,context) {
  return SingleChildScrollView(
    child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetailScreen()));
      },
      child: Card(
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  '${product['avatar']}',
                  fit: BoxFit.fill,
                  height: 90,
                  width: double.infinity,
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${product['title']}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis),
                        SizedBox(
                          height: 3,
                        ),
                        Text('${product['name']}',
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  iconSize: 35,
                                  icon: Icon(Icons.add_box),
                                  color: Color.fromRGBO(244,0,20,0.9),
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '${product['price_final_text']}',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(244,0,20,0.9)),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]))
            ],
          )),
    ),
  );
}

Widget buildProductDetails() {
  return Padding(
    padding: const EdgeInsets.all(30.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'http://cdn.mos.cms.futurecdn.net/s5UceHCpxUgMUm34Ph5uFQ.jpg',
              width: 270,
            ),
          ],
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Title",
                          style: TextStyle(fontSize: 20),
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 10),
                      Text("Subtitle",
                          style: TextStyle(fontSize: 15),
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 10),
                      Container(
                        height: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '200 EGP',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(244,0,20,0.9),
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                iconSize: 37,
                                icon: Icon(Icons.indeterminate_check_box),
                                color: Color.fromRGBO(244,0,20,0.9),
                                onPressed: () {},
                              ),
                              Text("1"),
                              IconButton(
                                iconSize: 37,
                                icon: Icon(Icons.add_box),
                                color: Color.fromRGBO(244,0,20,0.9),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Container(
                        height: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 10),
                      Text("Description",
                          style: TextStyle(fontSize: 15),
                          maxLines: 3,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 70),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              child: OutlinedButton(
                  onPressed: () {},
                  child:
                      const Text("Add to Cart", style: TextStyle(fontSize: 17)),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(244,0,20,0.9),
                    primary: Colors.white,
                  )),
            ),
          ],
        ),
        const SizedBox(height: 15),
      ],
    ),
  );
}

Widget buildCartProduct() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Container(
        height: 100.0,
        child: Row(
          children: [
            Container(
                height: 100.0,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.shopify.com/s/files/1/2444/2255/articles/shutterstock_476839699_800x.jpg?v=1576600655'),
                    fit: BoxFit.fill,
                  ),
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Title',
                          style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis),
                      SizedBox(
                        height: 5,
                      ),
                      Text('SubTitle',
                          style: TextStyle(fontSize: 13.0, color: Colors.grey),
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '200 EGP',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(244,0,20,0.9),
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                iconSize: 27,
                                icon: Icon(Icons.indeterminate_check_box),
                                color: Color.fromRGBO(244,0,20,0.9),
                                onPressed: () {},
                              ),
                              Text("1"),
                              IconButton(
                                iconSize: 27,
                                icon: Icon(Icons.add_box),
                                color: Color.fromRGBO(244,0,20,0.9),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
