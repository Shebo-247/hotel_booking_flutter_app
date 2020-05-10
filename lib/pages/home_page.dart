import 'package:flutter/material.dart';
import 'package:hotel_booking_flutter_app/widgets/best_price_widget.dart';
import 'package:hotel_booking_flutter_app/widgets/bottom_navbar.dart';
import 'package:hotel_booking_flutter_app/widgets/room_widget.dart';
import 'package:hotel_booking_flutter_app/widgets/sort_item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.sort,
            size: 40,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              size: 40,
              color: Colors.black,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                'Find Your Room',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    createRoom(
                      context: this.context,
                      image: 'images/room1.png',
                      title: 'Bedroom in Luxory Home',
                      price: '150',
                      rate: '4.2',
                    ),
                    createRoom(
                      context: this.context,
                      image: 'images/room2.jpg',
                      title: 'Bedroom in Luxory Home 2',
                      price: '200',
                      rate: '5.0',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Sort By',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  createSortItem(
                      boxColor: Color(0xFFd9fff2),
                      icon: Icons.local_drink,
                      iconColor: Color(0xFF17a575),
                      title: 'Resto'),
                  createSortItem(
                      boxColor: Color(0xFFfff3d9),
                      icon: Icons.local_cafe,
                      iconColor: Color(0xFF785708),
                      title: 'Cafe'),
                  createSortItem(
                      boxColor: Color(0xFFfed9eb),
                      icon: Icons.local_bar,
                      iconColor: Color(0xFFa95958),
                      title: 'Bar'),
                  createSortItem(
                      boxColor: Color(0xFFd8edfe),
                      icon: Icons.more,
                      iconColor: Color(0xFF408dd1),
                      title: 'More'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Best Prices',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    createBestPrice(
                      context: this.context,
                      discount: 'Off 30%',
                      title: 'Triumph Luxory',
                      roomImage: 'images/room3.jpg'
                    ),
                    createBestPrice(
                        context: this.context,
                        discount: 'Off 20%',
                        title: 'Boutique Luxory',
                        roomImage: 'images/room4.jpg'
                    ),
                    createBestPrice(
                        context: this.context,
                        discount: 'Off 40%',
                        title: 'Sirene Luxory',
                        roomImage: 'images/room5.jpg'
                    ),
                    createBestPrice(
                        context: this.context,
                        discount: 'Off 15%',
                        title: 'Ramses Hilton',
                        roomImage: 'images/room6.jpg'
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
