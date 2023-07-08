import 'package:azkary/app/shard/exports/all_exports.dart';

PreferredSizeWidget mainAppBarWidget(){
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Color(0xffE1ECC8),
    ),
    title: Text(
      'أذكار المسلم اليومية',
      style: GoogleFonts.cairo(fontSize: 20.sp,fontWeight: FontWeight.bold),
    ),
    // backgroundColor: Colors.amber.withOpacity(0.8),
    backgroundColor: const Color(0xffE1ECC8),

    elevation: 8,
    centerTitle: true,
    bottom: TabBar(
        padding: const EdgeInsets.all(10),
        indicator: const BoxDecoration(
            color: Color(AppStyle.whiteColor),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(30))),
        isScrollable: true,
        physics: const BouncingScrollPhysics(),
        tabs: [
          Tab(
            child: Text('أذكار الصباح',
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text('أذكار المساء',
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text('أذكار بعد الصلاه',
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text('أذكار النوم',
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text('أذكار مختارة',
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text('الرقية الشرعية',
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text('المسبحةُ الالكترونية',
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text('عنـــــا',
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
        ]),
  );
}