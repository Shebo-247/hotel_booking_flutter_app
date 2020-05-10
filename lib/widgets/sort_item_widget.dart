import 'package:flutter/material.dart';

Widget createSortItem({boxColor, icon, iconColor, title}) {
  return GestureDetector(
    onTap: (){},
    child: Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),

      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 60,
            padding: EdgeInsets.symmetric(vertical: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: boxColor
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            title,
            style: TextStyle(
                fontSize: 18,
              fontWeight: FontWeight.w400
            ),
          )
        ],
      ),
    ),
  );
}