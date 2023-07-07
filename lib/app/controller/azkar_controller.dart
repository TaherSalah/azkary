import 'package:azkary/app/shard/exports/all_exports.dart';

class AzkarProvider extends ChangeNotifier {
  AzkarRemoteServices azkarRemoteServices = AzkarRemoteServices();
  int counter = 0;

  AllAzkarModel allAzkarModel = AllAzkarModel();
  List<Content> azkarMassaList = [];
  List<Content> azkarSabahList = [];
  List<Content> azkarPostPrayerList = [];
  List<Empty> test = [];
  bool isLoading = false;

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

  ///**** counter methods ****///

  incrementCount() {
    counter++;
    notifyListeners();
  }

  restCount() {
    counter = 0;
    notifyListeners();
  }

// removeZakar(index){
//
//   azkarSabahRepate.remove(index);
//   notifyListeners();
//
// }
}
