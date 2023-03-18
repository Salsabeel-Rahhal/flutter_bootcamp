import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> users = List.generate(
        2,
        (index) => {
              "id": index + 1,
              "name": "Keripik Pisang ",
              "price": "30.000"
            }).toList();
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal: 1,
          vertical: 1,
        ),
        children: [
          Column(children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 15,
                      )),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    "Detail Product",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_outward,
                        size: 17,
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_checkout_sharp,
                        size: 17,
                      )),
                ),
              ],
            ),
          ]),
          Divider(
            color: Color.fromARGB(255, 99, 98, 98),
            thickness: 0.2,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  child: Image.asset("assets/images/pho1.jpeg"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "1/5 Foto",
                      style: TextStyle(
                          color: Color.fromARGB(255, 113, 112, 112),
                          fontSize: 12),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Keripik Pisang Dahlia",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Text(
                          "Rp 30.000",
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 18,
                              ),
                              Text(
                                " 4.6   86 Reviews",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 80,
                        // height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 204, 229, 205),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                //  width: 400,
                                child: Center(
                                  child: Text(
                                    "Tersedia : 250",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color:
                                            Color.fromARGB(255, 28, 131, 32)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  thickness: 0.2,
                  color: Color.fromARGB(255, 116, 113, 113),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/pho3.jpeg"),
                          ),
                        ),
                        Text(
                          "   BUMDES Desa Sidosari",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Verified ",
                          style: TextStyle(fontSize: 12),
                        ),
                        Icon(
                          Icons.verified_user,
                          color: Colors.blue,
                          size: 18,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 0.2,
                  color: Color.fromARGB(255, 116, 113, 113),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Description Product",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "Jenis tanaman pisang memang bermacam macam, namun tidak semua jenis bisa diolah menjadi kripik pisang hanya jenis jenis tertentu saja yang bagus digunakan sebagai bahan baku./nKripik pisang bisa diolah secara tradisionil atau melalui penggorengan biasa dan bisa juga diolah melalui mesin keripik buah. Kali ini kami akan memperkenalkan jenis kripik pisang yang diolah secara tradisionil, cara pengolahannya tidaklah rumit resep khususnya juga sudah diketahui umum karena cara pengolahan tradisionil keripik pisang adalah salah satu warisan yang turun temurun dikenalkan oleh generasi pendahulu kita."),
                    Divider(
                      thickness: 0.2,
                      color: Color.fromARGB(255, 116, 113, 113),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ulasan (86)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            ),
                            Text("4.6"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/pho5.jpeg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Andi",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Text(
                          "2 Minggu yang lalu",
                          style: TextStyle(
                              color: Color.fromARGB(255, 104, 104, 104),
                              fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/pho3.jpeg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Wijaya",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Text(
                          "2 Minggu yang lalu",
                          style: TextStyle(
                              color: Color.fromARGB(255, 104, 104, 104),
                              fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/pho2.jpeg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Andi",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Text(
                          "2 Minggu yang lalu",
                          style: TextStyle(
                              color: Color.fromARGB(255, 104, 104, 104),
                              fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    //height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          "Lihat Semua Ulasan ",
                          style: TextStyle(color: Color.fromARGB(255, 3, 3, 3)),
                        )),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color:
                                            Color.fromARGB(255, 4, 4, 4)))))),
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Featured Product"),
                    Text(
                      "See All",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: GridView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 1,
                        vertical: 1,
                      ),
                      itemCount: users.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300.0,
                        childAspectRatio: 1.0,
                        mainAxisSpacing: 0.0, // Horizatally.
                        crossAxisSpacing: 7.0, // Vertically
                      ),
                      itemBuilder: (context, index) => Column(
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 33, vertical: 33),
                                  child: Column(
                                    children: [
                                      Image(
                                          image: AssetImage(
                                              "assets/images/pho1.jpeg")),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                          width: 300,
                                          child: Text(
                                            users[index]["name"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )),
                                      Container(
                                        width: 300,
                                        child: Text(
                                          "RP.30.000",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 9,
                                              ),
                                              Text(
                                                "4.6",
                                                style: TextStyle(fontSize: 9),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "86 Reviews",
                                            style: TextStyle(fontSize: 9),
                                          ),
                                          Icon(
                                            Icons.power_input,
                                            size: 10,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                // Text(users[index]["name"]),
                              ),
                            ],
                          )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        //height: 45,
                        width: 150,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                "Added",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.red),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side:
                                            BorderSide(color: Colors.black))))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        //height: 45,
                        width: 150,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Center(
                                child: Text(
                              "Tambah Ke Keranjang ",
                              style: TextStyle(color: Colors.white),
                            )),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side:
                                            BorderSide(color: Colors.black))))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
