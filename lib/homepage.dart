import 'package:day_6_with_flutter/data_model.dart';
import 'package:day_6_with_flutter/SubDataModel.dart';
import 'package:day_6_with_flutter/subpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.pink[100],
    Colors.blue[100],
    Colors.orange[100],
    Colors.purple[100]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deliver to",
                          style: TextStyle(
                              color: Color.fromARGB(95, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              letterSpacing: .2),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.locationDot,
                              color: Color.fromARGB(255, 255, 46, 46),
                              size: 19,
                            ),
                            Text(
                              "New York, USA",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              FontAwesomeIcons.caretDown,
                              size: 14,
                              color: Color.fromARGB(255, 255, 46, 46),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset("assets/img/profile.jpg",
                              width: 50, height: 50),
                        ),
                        Positioned(
                          right: -2,
                          top: 2,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: Color.fromARGB(255, 255, 46, 46),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 280,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(12, 54, 54, 54),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search your food here...',
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                      width: 50,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 46, 46),
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        FontAwesomeIcons.bars,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  child: Image.asset("assets/img/banner.jpg"),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 46, 46),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 120,
                child: ListView.builder(
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: Datalist.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index < Datalist.length - 1) {
                      return Container(
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        width: 100,
                        decoration: BoxDecoration(
                            color: colors[index],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              Datalist[index].img,
                              width: 70,
                            ),
                            Text(
                              Datalist[index].title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      );
                    }
                    return Container(
                      margin: EdgeInsets.only(
                        left: 15,
                      ),
                      width: 100,
                      decoration: BoxDecoration(
                          color: colors[index],
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            Datalist[index].img,
                            width: 50,
                          ),
                          Text(
                            Datalist[index].title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 46, 46),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 260,
                child: ListView.builder(
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: Datalast.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(left: 15),
                            height: 200,
                            width: 340,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 251, 251, 251),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  offset: Offset(0, 5),
                                  color: Color(0xFFe8e8e8),
                                ),
                                BoxShadow(
                                  blurRadius: 5.0,
                                  offset: Offset(-5, 0),
                                  color: Color(0xFFe8e8e8),
                                ),
                                BoxShadow(
                                  blurRadius: 5.0,
                                  offset: Offset(5, 0),
                                  color: Color(0xFFe8e8e8),
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    DataView(subDataModel: Datalast[index])));
                          },
                        ),
                        Positioned(
                          right: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Container(
                              height: 120,
                              width: 340,
                              child: ClipRRect(
                                child: Image.asset(
                                  Datalast[index].img,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60,
                          left: 15,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: 320,
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Datalast[index].title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Fast Food",
                                      style: TextStyle(
                                        color: Colors.black45,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 255, 46, 46),
                                          size: 20,
                                        ),
                                        Text(
                                          " 4.7",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          " (16 Ratings)",
                                          style: TextStyle(
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.locationDot,
                                            color: Color.fromARGB(
                                                255, 255, 46, 46),
                                            size: 19,
                                          ),
                                          Text(
                                            "1 KM",
                                            style: TextStyle(
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60,
                          right: -0,
                          child: Container(
                            alignment: Alignment.center,
                            width: 60,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 46, 46),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                              ),
                            ),
                            child: Text(
                              "\$16.99",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
