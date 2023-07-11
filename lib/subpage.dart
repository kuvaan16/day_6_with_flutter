import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:day_6_with_flutter/SubDataModel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DataView extends StatelessWidget {
  final datalast subDataModel;

  const DataView({Key? key, required this.subDataModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.angleLeft,
                      color: Colors.black45,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                  ),
                  Text(
                    subDataModel.title,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                  ),
                  Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Color.fromARGB(255, 255, 46, 46),
                  ),
                ],
              ),
            ),
            Text(
              subDataModel.desc,
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 255, 46, 46),
                  size: 20,
                ),
                Text(
                  " 4.7",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(subDataModel.subimg),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Calories",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        "16",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.black45,
                  ),
                ),
                Container(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Valume",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        "16",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.black45,
                  ),
                ),
                Container(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Distance",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        "16",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Order",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      Container(
                        width: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              FontAwesomeIcons.circlePlus,
                              size: 14,
                              color: Colors.black45,
                            ),
                            Text(
                              "16",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              FontAwesomeIcons.circleMinus,
                              size: 14,
                              color: Colors.black45,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        "Express",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      Text(
                        "\$16.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 46, 46),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Text("Add to Cart"),
                    SizedBox(width: 7,),
                    Icon(
                      FontAwesomeIcons.plus,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
