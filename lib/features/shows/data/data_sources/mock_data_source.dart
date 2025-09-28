
import 'package:cleanarch/features/shows/data/models/character.dart';
import 'package:cleanarch/features/shows/data/models/shows_response_model.dart';

class MockShowDataSource {

  
  Future<List<ShowResponseModel>> fetchShows({int? showId}) async {
    await Future.delayed(const Duration(milliseconds: 300)); 
    return <ShowResponseModel>[
      ShowResponseModel(
        showId: 1,
        title: "Hunter x Hunter",
        description: "Hunter × Hunter is a Japanese manga series written and illustrated by Yoshihiro Togashi. It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since March 1998, although the manga has frequently gone on extended hiatuses since 2006",
        genre: "Adventure",
        rating: 9.2,
        imageUrl: "assets/images/hunter.png",
        claps: 15000,
        seasons: 6,
        views: 25000000,
        characters: [
          Character(
            charachterId: 1,
            image: "assets/images/naruto.png",
            name: "Gon Freecss",
            showName: "Hunter x Hunter"
          ),
          Character(
            charachterId: 2,
            image: "assets/images/kilua.png",
            name: "Killua Zoldyck",
            showName: "Hunter x Hunter"
          )
        ]
      ),
      ShowResponseModel(
        showId: 2,
        title: "Detective Conan",
        description: "Detective Conan, also known officially as Detective Conan, is a Japanese manga series written and illustrated by Gosho Aoyama. It has been serialized in Shogakukan's shōnen manga magazine Weekly Shōnen Sunday since January 1994; its chapters are collected in 107 tankōbon volumes as of April 2025",
        genre: "Detective",
        rating: 8.7,
        imageUrl: "assets/images/dc.png",
        claps: 12000,
        seasons: 30,
        views: 30000000,
        characters: [
          Character(
            charachterId: 3,
            image: "assets/images/conan.png",
            name: "Shinichi Kudo",
            showName: "Detective Conan"
          )
        ]
      ),
      ShowResponseModel(
        showId: 3,
        title: "Dragon Ball",
        description: "Dragon Ball is a Japanese manga series written and illustrated by Akira Toriyama. It was originally serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump from 1984 to 1995, with the individual chapters collected into 42 tankōbon volumes.",
        genre: "Adventure",
        rating: 9.0,
        imageUrl: "assets/images/dragonball.png",
        claps: 20000,
        seasons: 9,
        views: 40000000,
        characters: [
          Character(
            charachterId: 4,
            image: "assets/images/guko.png",
            name: "Goku",
            showName: "Dragon Ball"
          ),
          Character(
            charachterId: 5,
            image: "assets/images/vegeta.png",
            name: "Vegeta",
            showName: "Dragon Ball"
          )
        ]
      ),
      ShowResponseModel(
        showId: 4,
        title: "Demon Slayer",
        description: "Demon Slayer: Kimetsu no Yaiba is a Japanese manga series written and illustrated by Koyoharu Gotouge. It follows teenage Tanjiro Kamado, who strives to become a demon slayer after his family was slaughtered and his younger sister Nezuko turned into a demon.",
        genre: "Dark Fantasy",
        rating: 8.9,
        imageUrl: "assets/images/ds.png",
        claps: 18000,
        seasons: 3,
        views: 35000000,
        characters: [
          Character(
            charachterId: 6,
            image: "assets/images/tanjiro.png",
            name: "Tanjiro Kamado",
            showName: "Demon Slayer"
          )
        ]
      )
  ,
     ShowResponseModel(
        showId: 5,
        title: "One Piece",
        description: "One Piece is a Japanese manga series written and illustrated by Eiichiro Oda. It follows the adventures of Monkey D. Luffy and his crew, the Straw Hat Pirates, as he explores the Grand Line in search of the mythical treasure known as the one piece",
        genre: "Manga",
        rating: 8.9,
        imageUrl: "assets/images/one_piece.jpg",
        claps: 18000,
        seasons: 3,
        views: 35000000,
        characters: [
          Character(
            charachterId: 7,
            image: "assets/images/lufeee.png",
            name: "Lufee",
            showName: "One Piece"
          )
        ]
      )
  
    ];
  }

}
