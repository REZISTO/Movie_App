import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies/datas/movie.dart';
import 'package:movies/utilss/color.dart';
import 'package:movies/widgets/buildtags.dart';
import 'package:movies/widgets/cast.dart';
import 'package:movies/widgets/comment.dart';
import 'package:readmore/readmore.dart';

class DetailsScreen  extends StatefulWidget {
  DetailsScreen ({super.key});

  @override
  State<DetailsScreen> createState() => DetailsScreen_State();
}

class DetailsScreen_State extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [

                //background image
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height *0.57,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(popularImages[0].imageAsset.toString()),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Openhiemier",style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("2023 , Christopher Nolan",
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),)
                            ],
                          ),
                          Row(
                            children: [
                              Text("9.9",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                              ),),
                              Icon(
                                FontAwesomeIcons.solidStar,
                                color: Colors.yellow,
                                size: 15,
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildTag("Epic"),
                          SizedBox(
                            width: 10,
                          ),
                          buildTag("Fantasy"),
                          SizedBox(
                            width: 10,
                          ),
                          buildTag("Drama"),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10
                      ),
                      child:ReadMoreText(
                        "Oppenheimer is a 2023 epic biographical"
                            " drama film written and directed by Christopher N"
                            "olan. Based on the 2005 biography American Prometheus by Kai Bird and Martin J. Sherwin, the film chronicles the life of J. Robert Oppenheimer, a theoretical physicist who was pivotal in developing the first nuclear weapons as part of the Manhattan Project, and thereby ushering in the Atomic Age. Cillian Murphy stars as the titular character, with Emily Blunt as Oppenheimer's wife",
                         trimLines: 4,
                       trimMode: TrimMode.Line,
                       moreStyle: TextStyle(color: kButtonColor),
                        lessStyle: TextStyle(color: kButtonColor),
                       style: TextStyle(
                         color: Colors.white70,
                         height: 1.5,
                         fontWeight: FontWeight.w500
                       ),


                      ),
                      ),

                      //cast and crew
                      CastandCrew(casts:popularImages[0].cast!),
                      Padding(padding: EdgeInsets.symmetric(
                        horizontal: 10.0,

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Trailer",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400
                          ),),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                height: 100,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/openh.jpeg"),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                                ),
                                child: Icon(FontAwesomeIcons.play,
    color: kButtonColor.withOpacity(0.8),
                                size: 20,) ,

                              ),
                            ],
                          )



                        ],
                      ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Comments",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),),
                              Text("See All",style: TextStyle(
                                  color: kButtonColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),
                          buildCommentCard(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                          )
                        ],
                      ),
                      )



                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 60,
              right: 20,
              child: Container(

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white70,
            ),
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);

                  },
                  icon: Icon(
                    FontAwesomeIcons.xmark,
                    color: kSearchbarColor,
                    size: 20,
                  ),
                ),
          )),
          //watch movie
          Positioned(
              bottom: 30,
              right: 30,
              left: 30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: kButtonColor,
                  alignment: Alignment.center,
                  height: 68,
                  child: Text(
                    "Watch Movie",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ),
              )),
          
        ],
      ),
    );
  }
}
