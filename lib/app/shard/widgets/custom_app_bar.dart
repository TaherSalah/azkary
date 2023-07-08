import '../exports/all_exports.dart';

PreferredSizeWidget customAppBar(String title){
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Color(0xffE1ECC8),
    ),
    title: Text(
      title,
      style: GoogleFonts.cairo(fontSize: 15.sp,fontWeight: FontWeight.bold),
    ),
    // backgroundColor: Colors.amber.withOpacity(0.8),
    backgroundColor: const Color(0xffE1ECC8),
    elevation: 8,
    centerTitle: true,
  );
}