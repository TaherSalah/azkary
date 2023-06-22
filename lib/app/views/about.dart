import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';


class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 130,
                width: 150,
                child: Image.asset('assets/images/perLogo.png'),
              ),
            ),
            Text(
              'اذكار المسلم اليوميةُ',
              style: GoogleFonts.cairo(fontWeight: FontWeight.bold,fontSize: 16),
            ),
            SizedBox(height: 10,),

            Text('version : 1.0.0',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 16.5,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey)),
            SizedBox(height: 7,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.copyright_sharp, size: 20),
                Text(
                  'All Rights Reseved by Dev Taher Salah \u{1f60e}',
                  style: GoogleFonts.cairo(),
                ),
              ],
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: myDivider()),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'عن البرنامج',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        Expanded(child: myDivider()),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      textAlign: TextAlign.justify,
                      selectionColor: Colors.amber,
                      'برنامج أذكار المسلم اليوميةُ هو رفيق كل مسلم الذي لايمكنك الاستغناء عنه في يومك حيث يذكرك بالاذكار التي يسن لكل مسلم ان يكون علي دراية بها من أذكار الصباح وأذكار المساء والاذكار المفروضة عقب كل صلاه كما يمكن التسبيح داخل البرنامج ومعرفة العدد الذي اتممتة من التسبيح .',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 16.5, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(child: myDivider()),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            'تقييم التطبيق',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        Expanded(child: myDivider()),
                      ],
                    ),
                    RetBar(),
                    Row(
                      children: [
                        Expanded(child: myDivider()),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            'صدقة جارية',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        Expanded(child: myDivider()),
                      ],
                    ),
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Text(
                        textAlign: TextAlign.justify,
                        selectionColor: Colors.amber,
                        'برنامج أذكار المسلم اليوميةُ هو صدقة جارية علي روح المغور له الاستاذ محمد ربيع ولكل اموات المسلمبن ولكل من شارك هذا التطبيق لكل من يحبة .',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16.5, fontWeight: FontWeight.normal),
                      ),
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class SocialIcons extends StatelessWidget {
//   const SocialIcons({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         InkWell(
//           onTap: () {
//             launchUrl(facebook, mode: LaunchMode.externalApplication);
//           },
//           child: Container(
//             child: Image.asset(
//               'assets/images/facebook.png',
//               height: 50,
//               width: 50,
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 6,
//         ),
//         InkWell(
//           onTap: () {
//             launchUrl(linkedin, mode: LaunchMode.externalApplication);
//           },
//           child: Container(
//             child: Image.asset(
//               'assets/images/linkedin.png',
//               height: 50,
//               width: 50,
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 6,
//         ),
//         InkWell(
//           onTap: () {
//             launchUrl(whatsapp, mode: LaunchMode.externalApplication);
//           },
//           child: Container(
//             child: Image.asset(
//               'assets/images/whatsapp.png',
//               height: 50,
//               width: 50,
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 6,
//         ),
//         InkWell(
//           onTap: () {
//             launchUrl(github, mode: LaunchMode.externalApplication);
//           },
//           child: Container(
//             child: Image.asset(
//               'assets/images/github.png',
//               height: 50,
//               width: 50,
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 6,
//         ),
//         InkWell(
//           onTap: () {
//             launchUrl(insta, mode: LaunchMode.externalApplication);
//           },
//           child: Container(
//             child: Image.asset(
//               'assets/images/instagram.png',
//               height: 50,
//               width: 50,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class RetBar extends StatelessWidget {
  const RetBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}

///////////  Start  Divider Widget /////////////
Widget myDivider() => Container(
      width: double.infinity,
      height: 1.5,
      color: Colors.grey[400],
    );
