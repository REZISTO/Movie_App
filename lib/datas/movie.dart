class MovieModel {
  String? imageAsset;
  String? moviename;
  String? movieRating;
  String? year;
  final List<Map>? cast;
  final List<Map>? comments;

  MovieModel({
    this.imageAsset,
    this.moviename,
    this.movieRating,
    this.year,
    this.comments,
    this.cast,
  });
}
  //dATA
   final forYouImages =[
     MovieModel(imageAsset: "assets/images/avengers.jpeg"),
     MovieModel(imageAsset: "assets/images/lucifer.jpeg"),
     MovieModel(imageAsset: "assets/images/mp.jpeg"),
     MovieModel(imageAsset: "assets/images/spiderman.jpeg"),
  ];

final popularImages = [
  MovieModel(
      imageAsset: "assets/images/open.jpeg",
       moviename: "Openhimeier",
       cast: [
         {
           "name" : "Cillian Murphy",
           "role": " J Robert",
           "image":"assets/images/opact.jpeg"
         },
         {
           "name" : "Florence pugh",
           "role": " Jean",
           "image":"assets/images/opact2.jpeg"
         },
         {
           "name" : " Robert Dwoney Jr",
           "role": " Lewis strauss",
           "image":"assets/images/opact3.jpeg"
         },
       ],
       comments: [
         {
           "name" : "Emily Blunt",
           "imageUrl": "assets/images/cmt1.jpeg",
           "date":"July 21,2023",
           "rating":"4.9",
           "comment":"Superb"
         },
         {
           "name" : "Jack Quaid",
           "imageUrl": "assets/images/cmt2.jpeg",
           "date":"July 11,2023",
           "rating":"4.8",
           "comment":"fantastic"
         },
         {
           "name" : "Matt",
           "imageUrl": "assets/images/cmt3.jpeg",
           "date":"July 21,2023",
           "rating":"4.9",
           "comment":"Mind Blowing"
         },
       ],
    year: "2023",
    movieRating: "9.9"
  ),
  MovieModel(
      imageAsset: "assets/images/bheeshma.jpeg",
    moviename: "BheeshmaParvam",
      year: "2022",
      movieRating: "9.9",
  ),
  MovieModel(imageAsset: "assets/images/pathaan.jpeg",
    moviename: "Pathan",
    year: "2022",
    movieRating: "9.9",),
  MovieModel(imageAsset: "assets/images/barbie.jpeg",
    moviename: "Barbie",
    year: "2023",
    movieRating: "9.9",),
];
final legendaryImages =[
  MovieModel(
     imageAsset: "assets/images/hangover.jpeg",
    moviename: "The Hangover ",
    year: "2009",
    movieRating: "10",
  ),
  MovieModel(
    imageAsset: "assets/images/kgf.jpeg",
    moviename: "KGF",
    year: "2002",
    movieRating: "10",
  ),
  MovieModel(
    imageAsset: "assets/images/superman.jpeg",
    moviename: "Super man Returns",
    year: "2006",
    movieRating: "8.0",
  ),
  MovieModel(
    imageAsset: "assets/images/inter.jpeg",
    moviename: "Interstellar",
    year: "2014",
    movieRating: "10",
  ),
];
final genresList = [
  MovieModel(moviename: "Sitcom",imageAsset: "assets/images/friends.jpeg"),
  MovieModel(moviename: "Fantasy",imageAsset: "assets/images/luc.jpeg"),
  MovieModel(moviename: "Zombie",imageAsset: "assets/images/wal.jpeg"),
  MovieModel(moviename: "Mystery",imageAsset: "assets/images/lost.jpeg"),
];
