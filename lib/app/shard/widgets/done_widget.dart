
import '../exports/all_exports.dart';





class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:customAppBar('تهنئة لك'),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
                  doneZakar,
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
              style: GoogleFonts.cairo(color: Colors.green,fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 10.h,),
             Divider(
              color: Color(AppStyle.primaryColor),
              thickness: 2,
indent: 150,
              endIndent: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                doneText,
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
