import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies/datas/movie.dart';
import 'package:movies/utilss/color.dart';

Widget buildCommentCard() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    height: 160,
    child: ListView.builder(
      itemCount: popularImages[0].comments!.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kSearchbarColor,
          ),
          margin: EdgeInsets.only(right: 15),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [ Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(popularImages[0]
                                    .comments![index]['imageUrl'].toString())
                            )
                        ),
                      ),
                      ]
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(popularImages[0].comments![index]['name'],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(
                        height: 5,
                      ),
                      Text(popularImages[0].comments![index]['date'],
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(popularImages[0].comments![index]['rating'],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    FontAwesomeIcons.solidStar, color: Colors.yellow, size: 12,)
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  popularImages[0].comments![index]['comment'],
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              )
            ],
          ),
        );
      },
    ),
  );

}