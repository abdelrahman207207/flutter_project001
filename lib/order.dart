import 'package:Food_Station/helper/hive_helper.dart';
import 'package:Food_Station/widgets/submit_button.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {


  OrderPage({super.key});
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int count = 0;
  int size = 11;
  bool isSelected1 = true;
  bool isSelected2 = false;
  bool isSelected3 = false;

  Color selected(bool isSelected) {
    if (isSelected) {
      return Color.fromARGB(255, 251, 180, 98);
    } else {
      return Color(0xffF0F5FA);
    }
  }
  double cost = 0;
  double totalCost = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 251, 180, 98),
        elevation: 0,
        toolbarHeight: 30,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 251, 180, 98),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(48),
                      bottomRight: Radius.circular(48))),
              width: double.infinity,
              height: 250,
              child:
              // Image(image: NetworkImage(test[0]["img"]),)
              Image.asset(
                "assets/images/pngwing.com.png",)
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            width: double.infinity,
            height: 300,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: _buildItem("Burger Bistro",
                  "making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their."),
            ),
          ),
          Container(
            height: 180,
            width: 350,
            decoration: const BoxDecoration(
                color: Color(0xffF0F5FA),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$ $totalCost",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(64)),
                          color: Colors.black),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton.small(
                              onPressed: () {
                                if (count > 0) {
                                  setState(() {
                                    count--;
                                    totalCost = totalCost - cost;
                                  });
                                }
                              },
                              backgroundColor: Colors.blueGrey,
                              child: const Icon(
                                Icons.remove,
                                size: 20,
                              )),
                          Text(
                            "$count",
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          FloatingActionButton.small(
                              onPressed: () {
                                setState(() {
                                  count++;
                                  totalCost = totalCost + cost;
                                });
                              },
                              backgroundColor: Colors.blueGrey,
                              child: const Icon(
                                Icons.add,
                                size: 20,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                SubmitButton(name: "Add to cart")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItem(String name,String describtion) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(name,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.orange,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "4.7",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.local_shipping_outlined,
                            color: Colors.orange,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Free",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.orange,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "20 min",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                 Text(describtion,
                  style: TextStyle(
                    color: Color.fromARGB(255, 180, 187, 194),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Text(
                        "Size: ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            cost = 20;
                            count = 0;
                            totalCost = 0;
                            isSelected1 = true;
                            isSelected2 = false;
                            isSelected3 = false;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selected(isSelected1),
                          ),
                          child: const Center(
                            child: Text('11"'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            cost = 30;
                            count = 0;
                            totalCost = 0;
                            isSelected2 = true;
                            isSelected1 = false;
                            isSelected3 = false;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selected(isSelected2)),
                          child: const Center(
                            child: Text('14"'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            cost = 40;

                            count = 0;
                            totalCost = 0;
                            isSelected1 = false;
                            isSelected2 = false;
                            isSelected3 = true;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selected(isSelected3)),
                          child: const Center(
                            child: Text('16"'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
  }
}