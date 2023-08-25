
import 'package:flutter/material.dart';
 import 'package:movies/datas/movie.dart';
 import 'package:movies/widgets/customcards.dart';

 Widget movieListBuilder(List<MovieModel> movieList){
 return Container(
   margin:EdgeInsets.symmetric(horizontal: 10,vertical: 10) ,
   height: 300,
   child:ListView.builder(
     scrollDirection: Axis.horizontal,
       itemCount: movieList.length,
      itemBuilder: (context,index){
     return CustomCardNormal(movieModel: movieList[index],);
  },
  ),
 );
 }