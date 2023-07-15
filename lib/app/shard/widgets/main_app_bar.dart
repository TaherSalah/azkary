import 'package:azkary/app/shard/exports/all_exports.dart';

PreferredSizeWidget mainAppBarWidget() {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Color(0xffE1ECC8),
    ),
    title: Text(
      'أذكار المسلم اليومية',
      style: GoogleFonts.cairo(fontSize: 17.sp, fontWeight: FontWeight.bold),
    ),
    // backgroundColor: Colors.amber.withOpacity(0.8),
    backgroundColor: const Color(0xffE1ECC8),

    elevation: 8,
    centerTitle: true,
    bottom: TabBar(
        padding: const EdgeInsets.all(10),
        indicator: BoxDecoration(
            color: const Color(AppStyle.whiteColor),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r))),
        isScrollable: true,
        physics: const BouncingScrollPhysics(),
        tabs: [
          Tab(
            child: Text(AppString.Ksabah,
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text(AppString.KMessa,
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text(AppString.KPrayer,
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text(AppString.KSleep,
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text(AppString.KOtherZakar,
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text(AppString.KRokia,
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text(AppString.KCounter,
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
          Tab(
            child: Text(AppString.KAbout,
                style: GoogleFonts.cairo(fontWeight: FontWeight.w700)),
          ),
        ]),
  );
}
