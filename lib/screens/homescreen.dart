import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies/datas/movie.dart';
import 'package:movies/utilss/color.dart';
import 'package:movies/widgets/buildgener.dart';
import 'package:movies/widgets/customcardthumbnail.dart';
import 'package:movies/widgets/movielistwid.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //items
  List<MovieModel> forYouImagesList = List.of(forYouImages);
  List<MovieModel> popularItemList = List.of(popularImages);
  List<MovieModel> genersList = List.of(genresList);
  List<MovieModel> legendaryItemList = List.of(legendaryImages);

  PageController pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.9,
  );

  int currentPage = 0;

  List tabBarIcons =[
    FontAwesomeIcons.house,
    FontAwesomeIcons.compass,
    FontAwesomeIcons.video,
    FontAwesomeIcons.user,
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30,
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Hi Arshag!",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 30),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/avengers.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 2,
                              right: 2,
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kButtonColor,
                                ),
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //search bar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: kSearchbarColor,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Row(
                        children: [
                          Icon(FontAwesomeIcons.magnifyingGlass,
                            color: Colors.white30,),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Search",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white30
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 5,
                    ),
                    child: Text("For you",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  foryoucardsLayout(forYouImages),
                 Align(
                   alignment: Alignment.center,
                   child: Container(
                     padding: const EdgeInsets.all(8.0),
                     decoration: BoxDecoration(
                       color: kSearchbarColor,
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: Row(
                       mainAxisSize:MainAxisSize.min ,
                       children:
                         PageIndicator(),
                     ),
                   ),
                 ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 20,
                  horizontal: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Popular",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 20,
                              fontWeight :FontWeight.w200,
                            ),
                            ),
                            Text("See All",
                              style: TextStyle(
                                color: kButtonColor,
                                fontSize: 17,
                                fontWeight :FontWeight.w200,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                   movieListBuilder(popularItemList),
                  const Padding(
                    padding:  EdgeInsets.symmetric(vertical: 0,
                        horizontal: 30
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Genres",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontWeight :FontWeight.w200,
                              ),
                            ),
                            Text("See All",
                              style: TextStyle(
                                color: kButtonColor,
                                fontSize: 17,
                                fontWeight :FontWeight.w200,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                   genersBuilder(genersList),
                  const Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10,
                        horizontal: 20
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Legendary Movies",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontWeight :FontWeight.w200,
                              ),
                            ),
                            Text("See All",
                              style: TextStyle(
                                color: kButtonColor,
                                fontSize: 17,
                                fontWeight :FontWeight.w200,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  movieListBuilder(legendaryItemList),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
          left: 25,
         right: 25,

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 25.0,
                  sigmaY: 25.0,
                ),
                child: Container(
                  color: kSearchbarColor.withOpacity(0.6),
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...tabBarIcons.map((e) => Icon(e,color: e == FontAwesomeIcons.house? Colors.white: Colors.white54 ,
                        size:25 ,),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget foryoucardsLayout(List<MovieModel> movieList) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.49,
      child: PageView.builder(
        physics: const ClampingScrollPhysics(),
        controller: pageController,
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return CustomCardThumb(
            imageAsset: movieList[index].imageAsset.toString()
          );
        },
        onPageChanged: (int page) {
          setState(() {
            currentPage = page;
          });
        },
      ),
    );
  }
  
  //indicator
  List<Widget> PageIndicator(){
    List<Widget> list =[];
    for (int i=0; i<forYouImagesList.length;i++){
      list.add(i==currentPage ? _indicator(true): _indicator(false));
    }
     return list;
    }
  Widget _indicator(bool isActive){
    return AnimatedContainer(duration: const Duration(milliseconds: 150),
    margin:const EdgeInsets.symmetric(horizontal:8.0),
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
      color: isActive ? Colors.white: Colors.white54,
        borderRadius: BorderRadius.circular(20),

    ) ,
    );
  }
  @override
  void dispose(){
    pageController.dispose();
    super.dispose();
  }
}
