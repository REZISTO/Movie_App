import 'package:flutter/material.dart';

class CastandCrew extends StatelessWidget {
  final List casts;
  const CastandCrew({super.key,
   required this.casts});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:EdgeInsets.symmetric(
          horizontal:20 ,vertical:10 ) ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cast"
            ,style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),),
       const SizedBox(
         height: 20,
       ),
          SizedBox(
            height: 160,
            child:  ListView.builder(
              itemCount: casts.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context , index){
                return castCard(casts[index]);
                },
                ),
          ),
        ],
      ),

    );
  }
  Widget castCard(
      final Map cast
      ){
    return Container(
      margin:EdgeInsets.only(right: 30,),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(cast['image'])
              )
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(cast['name'],maxLines: 2,textAlign:TextAlign.left,style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
