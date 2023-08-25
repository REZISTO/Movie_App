

import 'package:flutter/material.dart';
import 'package:movies/datas/movie.dart';

Widget genersBuilder(List<MovieModel> genresList) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    height: 290,
    child: ListView.builder(
        itemCount: genresList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return Stack(
            children: [
              Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(genresList[index].imageAsset.toString()
                    ),
                    fit: BoxFit.cover
                  ),
                ),
                margin:const EdgeInsets.only(
                  left: 10,
                  right: 15,
                  top: 10,
                  bottom: 70,
                ) ,

              ),
              Positioned(
                bottom: 40,
                  left: 20,
                  child: Text(
                genresList[index].moviename.toString(),
                style: TextStyle(
                  color: Colors.white,fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
              )
            ],
          );

    }),
  );
}