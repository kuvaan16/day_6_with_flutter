class datalast {
  String title;
  String img;
  String subimg;
  String desc;
  datalast(
      {required this.title,
      required this.img,
      required this.subimg,
      required this.desc});
}

List<datalast> Datalast = [
  datalast(
      title: "Chicken Burger",
      img: "assets/img/Chicken Burger.jpg",
      subimg: "assets/img/Chicken Burger.jpg",
      desc: "Double Quarter Pounder with Cheese"),
  datalast(
      title: "Cheese Pizza ",
      img: "assets/img/Cheese Pizza.jpg",
      subimg: "assets/img/Pizza.png",
      desc: "Mized Pizza with beef, Chilli and cheese"),
];
