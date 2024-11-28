import 'package:appmania/AppMania/detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => const HomePage(),
      "detailPage": (context) => const DetailPage(),
    },
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(Icons.location_on_rounded),
                  const SizedBox(width: 4),
                  const Text(
                    "Habiganj City",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.menu,
                      size: 35,
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(50)),
                  )
                ],
              ),
            ),
            Align(
              alignment: const Alignment(-0.6, 0.0),
              child: RichText(
                text: const TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: ("Find The"),
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      TextSpan(
                        text: (" Best"),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ("\nFood"),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: (" Around You"),
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ]),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                color: const Color(0xffF4F4F4),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Row(
                children: [
                  SizedBox(width: 15),
                  Icon(Icons.search_sharp),
                  SizedBox(width: 15),
                  Text("Search your favourit food"),
                  SizedBox(width: 50),
                  Icon(Icons.sync_alt_outlined)
                ],
              ),
            ),
            const SizedBox(height: 40),
            Align(
              alignment: const Alignment(-0.9, 0.0),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: ("Find"),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: (" 5km >"),
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 30),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Center(
                    child: Text(
                      "Salads",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Center(
                    child: Text(
                      "Hot Sale",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Center(
                    child: Text(
                      "Popularity",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: product1.map((e) {
                    return Product(
                      pro_img: e["img"],
                      pro_name: e["name"],
                      pro_min: e["min"],
                      pro_price: e["price"],
                    );
                  }).toList(),
                ),
                Row(
                  children: product2.map((e) {
                    return Product(
                      pro_img: e["img"],
                      pro_name: e["name"],
                      pro_min: e["min"],
                      pro_price: e["price"],
                    );
                  }).toList(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  String? pro_name;
  String? pro_img;
  String? pro_min;
  double? pro_price;

  Product(
      {super.key, this.pro_name, this.pro_img, this.pro_min, this.pro_price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 464,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffF4F4F4),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 120, top: 10),
                  child: Icon(Icons.favorite_border_rounded),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "detail_page");
                  },
                  child: Container(
                    height: 110,
                    width: 200,
                    child: Image.network(
                      pro_img ?? "",
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.4, -1.5),
                  child: Column(
                    children: [
                      Text(
                        pro_name ?? "",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Text(
                            pro_min ?? "",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 30),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Text(
                            "4.5",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Stack(
                        children: [
                          Align(
                            alignment: const Alignment(-0.5, 0.0),
                            child: Text(
                              "\$${pro_price}",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 43,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Color(0xff5CC24A),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  width: 200,
                  child: Image.network(
                    pro_img ?? "",
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.4, -1.5),
                  child: Column(
                    children: [
                      Text(
                        pro_name ?? "",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          Text(
                            pro_min ?? "",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 30),
                          const Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                          const Text(
                            "4.5",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Stack(
                        children: [
                          Align(
                            alignment: const Alignment(-0.5, 0.0),
                            child: Text(
                              "\$${pro_price}",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 43,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Color(0xff5CC24A),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
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
        ),
      ],
    );
  }
}

List<Map> product1 = [
  {
    "img":
        "https://i.pinimg.com/originals/5e/74/7a/5e747a359c5347e7854903bb8486ce90.png",
    "name": "Avocado salad",
    "min": "20min",
    "price": 12.00
  },
  {
    "img":
        "https://raw.githubusercontent.com/karanpadaliya/FlutterClassroom/main/Images/Fruits_salad.png",
    "name": "Fruits salad",
    "min": "25min",
    "price": 11.00
  },
];
List<Map> product2 = [
  {
    "img":
        "https://img.freepik.com/premium-photo/mexican-salad-with-quinua-top-view-isolated-background_951562-4553.jpg?w=740",
    "name": "Avocado salad",
    "min": "20min",
    "price": 12.00
  },
  {
    "img":
        "https://i.pinimg.com/originals/5e/74/7a/5e747a359c5347e7854903bb8486ce90.png",
    "name": "Fruits salad",
    "min": "25min",
    "price": 11.00
  },
];
