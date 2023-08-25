import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies/datas/movie.dart';
import 'package:movies/screens/details.dart';


class CustomCardNormal extends StatelessWidget {
  MovieModel movieModel;
     CustomCardNormal({super.key,
       required this.movieModel
   });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>   DetailsScreen()
        ));
      },
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 140,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                   image: AssetImage(movieModel.imageAsset!),
                fit: BoxFit.cover
              ),
            ),
          ),
          Positioned(
            left: 15,
              right: 15,
              bottom: 50,
              child: Row(
             children: [
               Expanded(child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(movieModel.moviename!,
                 maxLines: 1,
                 style:
                     const TextStyle(
                       color: Colors.white,
                       fontSize: 14,
                       fontWeight: FontWeight.bold,
                     ),),
                   const SizedBox(
                     height: 5,
                   ),
                   Text(movieModel.year!,
                     maxLines: 1,
                     style:
                   const TextStyle(
                     color: Colors.white54,
                     fontSize: 14,
                     fontWeight: FontWeight.w300,
                   ),),
                   const SizedBox(
                     height: 5,
                   ),

                 ],
               ),
               ),
               const SizedBox(
                 width: 20,
               ),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(movieModel.movieRating!,
                   maxLines: 1,
                   overflow: TextOverflow.clip,
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 13,
                     fontWeight: FontWeight.bold
                   ),
                   ),
                   const SizedBox(
                     width: 5,
                   ),
                   const Icon(FontAwesomeIcons.solidStar,
                     size: 15,
                     color: Colors.yellow,
                   ),
                   const SizedBox(
                     height: 5,
                   ),
                 ],
               )
             ],
          ))
        ],

      ),
    );
  }
}
