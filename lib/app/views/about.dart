import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
              'أذكار المسلم اليوميةُ',

              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: 25, letterSpacing: 2),
            ),
            Text('version : 1.0.0',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 16.5,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.copyright_sharp, size: 20),
                Text(
                  'All Rights Reseved by Dev Taher Salah \u{1f60e}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 15),
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
                            'تواصل معنا',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        Expanded(child: myDivider()),
                      ],
                    ),
                    // Container(
                    //     decoration: BoxDecoration(
                    //         border: Border(
                    //             bottom: BorderSide(
                    //               color: Colors.grey.withOpacity(0.7),
                    //             ),
                    //             left: BorderSide(
                    //               color: Colors.grey.withOpacity(0.7),
                    //             ),
                    //             right: BorderSide(
                    //               color: Colors.grey.withOpacity(0.7),
                    //             ))),
                    //     child: Padding(
                    //       padding: const EdgeInsets.symmetric(vertical: 18.0),
                    //       child: const SocialIcons(),
                    //     )),
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
                    RetBar()
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
//     return Expanded(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           InkWell(
//             onTap: () {
//               launchUrl(facebook, mode: LaunchMode.externalApplication);
//             },
//             child: Container(
//               child: Image.asset(
//                 'assets/images/facebook.png',
//                 height: 50,
//                 width: 50,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 6,
//           ),
//           InkWell(
//             onTap: () {
//               launchUrl(linkedin, mode: LaunchMode.externalApplication);
//             },
//             child: Container(
//               child: Image.asset(
//                 'assets/images/linkedin.png',
//                 height: 50,
//                 width: 50,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 6,
//           ),
//           InkWell(
//             onTap: () {
//               launchUrl(whatsapp, mode: LaunchMode.externalApplication);
//             },
//             child: Container(
//               child: Image.asset(
//                 'assets/images/whatsapp.png',
//                 height: 50,
//                 width: 50,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 6,
//           ),
//           InkWell(
//             onTap: () {
//               launchUrl(github, mode: LaunchMode.externalApplication);
//             },
//             child: Container(
//               child: Image.asset(
//                 'assets/images/github.png',
//                 height: 50,
//                 width: 50,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 6,
//           ),
//           InkWell(
//             onTap: () {
//               launchUrl(insta, mode: LaunchMode.externalApplication);
//             },
//             child: Container(
//               child: Image.asset(
//                 'assets/images/instagram.png',
//                 height: 50,
//                 width: 50,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class RetBar extends StatelessWidget {
  const RetBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) =>
          Icon(
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
///////////  End  Divider Widget /////////////

// launchURL(String url) async {
//   final Uri uri = Uri(scheme: "https", host: url);
//   if (!await launchUrl(
//     uri,
//     mode: LaunchMode.externalApplication,
//   )) {
//     throw "Can not launch url";
//   }
// }

final Uri phoneNumber = Uri.parse('tel:+0201094529752');
final Uri whatsapp = Uri.parse('https://wa.me/01094529752');
final Uri youtube =
    Uri.parse('https://www.youtube.com/channel/UCZZMcqVVtQSsA5dnQ6xN8nQ');
final Uri facebook = Uri.parse('https://www.facebook.com/taher.salah.7927');
final Uri linkedin =
    Uri.parse('https://www.linkedin.com/in/taher-salah-1a5622134/');
final Uri github = Uri.parse('https://github.com/TaherSalah');
final Uri insta = Uri.parse('https://www.instagram.com/tahersalahm/');
