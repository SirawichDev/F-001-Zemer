class User {
  final String name, image;
  User({required this.name, required this.image});
}

List<User> topPlayer = [topU1, topU2, topU3, topU4];

User u1 = User(name: "Faker", image: "assets/images/faker.jpeg");
User u2 = User(name: "Panda", image: "assets/images/panda.jpeg");
User u4 = User(name: "ling", image: "assets/images/aos.jpeg");
User u5 = User(name: "long", image: "assets/images/fox.jpeg");
User u6 = User(name: "dos", image: "assets/images/pos.png");
User u7 = User(name: "pos", image: "assets/images/pos.jpeg");
User u8 = User(name: "aos", image: "assets/images/ff.png");

User topU1 = User(name: "Khan", image: "assets/images/top_khan.png");
User topU2 = User(name: "Tyler1", image: "assets/images/top_tyler1.webp");
User topU3 = User(name: "Moe", image: "assets/images/top_moe.jpeg");
User topU4 = User(name: "Pokimane", image: "assets/images/top_pokimane.jpeg");