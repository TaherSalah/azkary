import 'package:azkary/app/shard/widgets/rate_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_divider.dart';

class AboutItemBuilder extends StatelessWidget {
  const AboutItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          style:
          GoogleFonts.cairo(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        Text('version : 1.0.0',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16.5,
                fontWeight: FontWeight.normal,
                color: Colors.grey)),
        const SizedBox(
          height: 7,
        ),
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
                const SizedBox(
                  height: 10,
                ),
                Text(
                  textAlign: TextAlign.justify,
                  selectionColor: Colors.amber,
                  'برنامج أذكار المسلم اليوميةُ هو رفيق كل مسلم الذي لايمكنك الاستغناء عنه في يومك حيث يذكرك بالاذكار التي يسن لكل مسلم ان يكون علي دراية بها من أذكار الصباح وأذكار المساء والاذكار المفروضة عقب كل صلاه كما يمكن التسبيح داخل البرنامج ومعرفة العدد الذي اتممتة من التسبيح .',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 16.5, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
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
                const RetBar(),
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
    );
  }
}
