import 'package:flutter/material.dart';
import 'package:hotel_booking_flutter_app/pages/room_page.dart';

Widget createRoom({context, image, title, price, rate}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RoomPage(
            image: image,
            title: title,
            price: price,
            rate: rate,
          ),
        ),
      );
    },
    child: Container(
      width: 190,
      margin: EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Hero(
            tag: title,
            child: Material(
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    '\$ ' + price,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '/night',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.yellow[900],
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      rate,
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
