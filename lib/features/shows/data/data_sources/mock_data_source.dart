



class MockShowDataSource {
  Future<List<Map<String, dynamic>>> fetchShows() async {
    await Future.delayed(const Duration(milliseconds: 300)); 
    return [
      {
        "id": "1",
        "title": "Hunter x Hunter",
        "description": "Hunter × Hunter is a Japanese manga series written and illustrated by Yoshihiro Togashi. It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since March 1998, although the manga has frequently gone on extended hiatuses since 2006",
      },
      {
        "id": "2",
        "title": "Detective Conan",
        "description": "Detective Conan, also known officially as Detective Conan, is a Japanese manga series written and illustrated by Gosho Aoyama. It has been serialized in Shogakukan's shōnen manga magazine Weekly Shōnen Sunday since January 1994; its chapters are collected in 107 tankōbon volumes as of April 2025",
      },
    ];
  }
}
