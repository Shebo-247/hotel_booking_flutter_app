import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_flutter_app/pages/room_page.dart';

Widget createBestPrice({context, discount, title, roomImage}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RoomPage(
            image: roomImage,
            title: title,
          ),
        ),
      );
    },
    child: Hero(
      tag: title,
      child: Container(
        width: 200,
        margin: EdgeInsets.only(right: 10),
        child: AspectRatio(
          aspectRatio: 2 / 1.8,
          child: Material(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(roomImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.2),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            discount,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            title,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
