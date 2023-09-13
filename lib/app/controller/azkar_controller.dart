import 'package:azkary/app/shard/exports/all_exports.dart';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:share_plus/share_plus.dart';

class AzkarProvider extends ChangeNotifier {
  AzkarRemoteServices azkarRemoteServices = AzkarRemoteServices();
  int counter = 0;

  AllAzkarModel allAzkarModel = AllAzkarModel();
  List<Content> azkarMassaList = [];
  List<Content> azkarSabahList = [];
  List<Content> azkarPostPrayerList = [];
  List<Empty> test = [];
  List<Color>prayerColor=[

    const Color(0xff5ACC05),
    const Color(0xffCE82FF),
    const Color(0xff1CB0F6),
    const Color(0xff5ACC05),
    const Color(0xff5ACC05),
    const Color(0xff3F2305),
  ];

  bool isLoading = false;
  double long = 0, lat = 0;

  fetchAzkarMassa() async {
    isLoading = true;
    notifyListeners();
    azkarMassaList =
        await azkarRemoteServices.fetchAzkarData('azkar_massa.json');
    isLoading = false;
    notifyListeners();
  }

  fetchAzkarSabah() async {
    isLoading = true;
    notifyListeners();
    azkarSabahList =
        await azkarRemoteServices.fetchAzkarData('azkar_sabah.json');
    isLoading = false;
    notifyListeners();
  }

  fetchAzkarPostPrayer() async {
    isLoading = true;
    notifyListeners();
    azkarPostPrayerList =
        await azkarRemoteServices.fetchAzkarData('PostPrayer_azkar.json');
    isLoading = false;
    notifyListeners();
  }

  fetchAzkar() async {
    isLoading = true;
    notifyListeners();
    test = await azkarRemoteServices.fetchAzkar();
    isLoading = false;
    notifyListeners();
  }


mouns(){
  notifyListeners();
}


  locationAccess()async {
    isLoading =true;
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('Location permissions are denied');
      }else if(permission == LocationPermission.deniedForever){
        print("'Location permissions are permanently denied");
      }else{
        print("GPS Location service is granted");
      }
    }else{
      print("GPS Location permission granted.");
    }
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    long = position.longitude;
    lat = position.latitude;
    isLoading =true;

    print(position.longitude); //Output: 80.24599079
    print(position.latitude); //Output: 29.6593457
  }





  ///**** counter methods ****///


  incrementCount() {
    counter++;

    notifyListeners();
  }

  restCount() {
    counter = 0;
    notifyListeners();
  }

  removeCount() {
    counter = 0;

    notifyListeners();
  }

  //
  // notificationPlay() async {
  //
  //   notifyListeners();
  // }

  ///******      *******//////

  Widget showDialog() {
    // if(counter ==10){
    // var count = (counter/10+1);
    if (counter == 10) {
      return alertDefDialog('10', 'تسبيحات');
    } else if (counter == 50) {
      return alertDefDialog('50', 'تسبيحة');
    } else if (counter == 100) {
      return alertDefDialog('100', 'تسبيحة');
    } else if (counter == 300) {
      return alertDefDialog('300', 'تسبيحة');
    } else if (counter == 500) {
      return alertDefDialog('500', 'تسبيحة');
    } else if (counter == 1000) {
      return alertDefDialog('1000', 'تسبيحة');
    } else if (counter == 10000) {
      return alertDefDialog('10000', 'تسبيحة');
    } else if (counter == 20000) {
      return alertDefDialog('20000', 'تسبيحة');
    }
    return const SizedBox();
    // }
  }
}

zakarShared(
    {required String azkarConten,
    required String azkarContenDes,
    required String azkarContenRepate,
    required zakarType,
    required subjectType}) {
  Share.share(
    subject: subjectType,
    ' من $zakarType \n\n${azkarConten}\n\n${azkarContenDes}  \n\nمرات التكرار:  ${azkarContenRepate}',
  );
}

Widget alertDefDialog(String number, String type) {
  return AnimatedContainer(
    duration: const Duration(seconds: 20),
    child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 20,
        title: Column(
          children: [
            Image.asset(doneGif),
            Text(
              ' رائع لقد وصلت الي $number $type ',
              style:
                  GoogleFonts.cairo(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        )),
  );
}
