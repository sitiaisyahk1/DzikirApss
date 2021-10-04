class ModelDoa {
  // var utk tampilan luar (img & judul)
  String imageCover, titleCover;

  //var utk data konten doa pertama
  String arabic, title, translate, latin;

  //var data konten doa kedua
  String? arabic2, title2, translate2, latin2;

  //contractor class
  ModelDoa({
    required this.imageCover,
    required this.titleCover,
    required this.arabic,
    required this.title,
    required this.translate,
    required this.latin,

    //constructor nullable
    this.title2,
    this.arabic2,
    this.translate2,
    this.latin2

  });
}

var dataListDoa = [
  //data doa makan
  ModelDoa(
      imageCover: "assets/doa_pakaian.png",
      titleCover: "Berpakaian",
      arabic: "arabic",
      title: "Doa sebelum menggunakan pakaian",
      translate:
      "translate",
      latin: "latin",

      arabic2: "",
      latin2: "",
      translate2: "",
      title2: ""),
];