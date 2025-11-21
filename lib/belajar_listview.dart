import 'package:flutter/material.dart';

class CashierPage extends StatefulWidget {
  const CashierPage({super.key});

  @override
  State<CashierPage> createState() => _CashierPageState();
}

class _CashierPageState extends State<CashierPage> {
  
  List<Map<String, dynamic>> products = [
    {
      "name" : "Indomie",
      "image" : "assets/images/mie.jpg",
      "price" : 3500,
      "Stock" : 40,
      "quantity" : 0,
    },
    {
      "name" : "Aqua",
      "image" : "assets/images/aqua.jpg",
      "price" : 5000,
      "Stock" : 50,
      "quantity" : 0,
    },
    {
      "name" : "Saus Indofood",
      "image" : "assets/images/saus.jpg",
      "price" : 6000,
      "Stock" : 20,
      "quantity" : 0,
    },
    {
      "name" : "Minya Goreng",
      "image" : "assets/images/minyak.jpg",
      "price" : 10000,
      "Stock" : 40,
      "quantity" : 0,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cashier App",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      "Semoga Harimu Menyenangkan",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Cari Produk",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10);
                    },
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        height: 120, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ),
                                image: DecorationImage(image: AssetImage("${products[index]["image"]}"),
                                fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${products[index]["name"]}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "${products[index]["Stock"]}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Rp. ${products[index]["price"]}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
