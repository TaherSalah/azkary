import '../shard/exports/all_exports.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              doneGif,
            )),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'تهانينا باتمامك وردك اليومي من الاذكار',
              style: GoogleFonts.cairo(),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'فضل الالتزام باذكار الصباح والمساء',
              style: GoogleFonts.cairo(),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'المحافظة على ذكر الله تعالى فيها خيرا كثيرا في هذه الحياة وأجرا عظيما في الآخرة، وأذكار الصباح والمساء من أهم الأذكار التي ينبغي للمسلم أن يحافظ عليها. فمن فوائدها انشراح الصدر وطمأنينة القلب ومعية الله تعالى وذكره للعبد في الملأ الأعلى قال الله تعالى: الَّذِينَ آمَنُواْ وَتَطْمَئِنُّ قُلُوبُهُم بِذِكْرِ اللّهِ أَلاَ بِذِكْرِ اللّهِ تَطْمَئِنُّ الْقُلُوبُ {الرعد:28}.\n وقال رسول الله صلى الله عليه وسلم: يقول الله عز وجل أنا عند ظن عبدي بي، وأنا معه حين يذكرني إن ذكرني في نفسه ذكرته في نفسي، وإن ذكرني في ملأ ذكرته في ملأ هم خير منهم. الحديث رواه مسلم وغيره.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: AppStyle.fontFamily,height: 1.8.h),
              ),
            )
          ],
        ),
      ),
    );
  }
}
