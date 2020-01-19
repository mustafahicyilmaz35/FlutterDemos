class Chat {
  String name;
  String message;
  String time;
  String avatarUrl;

  Chat({this.name, this.message, this.time, this.avatarUrl});

  
}
List<Chat> fakeData = [
    Chat(
        name: "Mustafa",
        message: "Merhaba Nasılsın",
        time: "13:30",
        avatarUrl:
            "https://frpnet.net/wp-content/uploads/2016/12/Assassins-Creed-Movie-Poster-Michael-Fassbender.jpg"),
            Chat(
        name: "Öznur",
        message: "Merhaba Nasıl Gidiyor",
        time: "14:30",
        avatarUrl:
            "https://wallpapersite.com/images/pages/pic_w/989.jpg"),
          Chat(
        name: "Hasan",
        message: "Eğitim Nasıl?",
        time: "15:30",
        avatarUrl:
            "http://www.eggplante.com/wp-content/uploads/2016/01/MP-Footage-2.jpg"),
  ];
