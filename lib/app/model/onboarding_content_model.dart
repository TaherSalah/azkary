// ignore_for_file: file_names

class OnBoardingContents {
  final String title;
  final String image;
  final String desc;

  OnBoardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnBoardingContents> contents = [
  OnBoardingContents(
    title: "مع برنامج Notes Tasks تَستطيع تنظيم وقتك",
    image: "assets/images/image1.png",
    desc: "يُمكنك تنظيم وقتك عن طريق تدّوين مهامك داخل البرنامج.",
  ),
  OnBoardingContents(
    title: "مع برنامج Notes Tasks تَستطيع ترتيب أفكارك",
    image: "assets/images/image2.png",
    desc:
    "يُمكنك ترتيب أفكارك اليومية وتنظيمها بشكل احترافي. ",
  ),
  OnBoardingContents(
    title: " مع برنامج Notes Tasks تَستطيع تذّكر مهامك اليومية .",
    image: "assets/images/image3.png",
    desc:
    "يُمكنك تذكر مهامك اليومية والرجوع إليها في أي وقتك عند الحاجة .",
  ),
];

///This file is automatically generated. DO NOT EDIT, all your changes would be lost.
class Assets {
  Assets._();

  static const String fontsMulishLight = 'assets/fonts/Mulish-Light.ttf';
  static const String fontsMulishSemiBold = 'assets/fonts/Mulish-SemiBold.ttf';
  static const String imagesImage1 = 'assets/images/image1.png';
  static const String imagesImage2 = 'assets/images/image2.png';
  static const String imagesImage3 = 'assets/images/image3.png';

}