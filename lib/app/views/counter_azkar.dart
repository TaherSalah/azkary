import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../controller/azkar_controller.dart';
import '../model/counter_azkar_model.dart';



class AzkarCounter extends StatefulWidget {
  const AzkarCounter({super.key});

  @override
  State<AzkarCounter> createState() => _AzkarCounterState();
}

// ScrollController _scrollController = ScrollController();
//
// _scrollToBottom() {
//   _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
// }
class _AzkarCounterState extends State<AzkarCounter> {
  @override
  void initState() {
    // TODO: implement initState
    // WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AzkarController>(context);
    return Scaffold(
        body: Card(
      child: Stack(alignment: Alignment.center, children: [
        Image.asset(
          'assets/images/countBg.jpg',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView.separated(
                    reverse: true,
                    // controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    elevation: 10,
                                    titleTextStyle: TextStyle(),
                                    title: Text(
                                      textAlign: TextAlign.center,
                                        'فضل الذكر '

                                        ,style: GoogleFonts.cairo()),
                                    content: Directionality(
                                      textDirection: TextDirection.rtl,
                                        child: Text('${azkarContent[index]}',
                                            style: GoogleFonts.cairo())),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context, 'OK');
                                        },
                                        child: Text('تـــــم'),
                                      ),
                                    ],
                                  ));
                        },
                        child: Card(
                            shape: const OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.amber,
                              width: 3.5,
                            )),
                            color: Colors.black.withOpacity(0.5),
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${azkarDescription[index]}',
                                      style: GoogleFonts.cairo(
                                          fontSize: 25, color: Colors.white)),
                                  // Text('" ${azkarContent[index]} "',
                                  //     style: GoogleFonts.cairo(
                                  //         fontSize: 15,
                                  //         color: Colors.amber.shade100)),
                                  Text(
                                      '  مرات التسبيح(${azkarCount[index]})\ مرة',
                                      style: GoogleFonts.cairo(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            )),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: 10),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('المسبحةُ الالكترونية',
                style: GoogleFonts.cairo(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 35,
            ),
            Card(
              elevation: 10,
              color: Colors.black.withOpacity(0.5),
              shape: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber, width: 5)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                ),
                padding: const EdgeInsets.all(25),
                child: Text('${controller.counter}',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.amber)),
                    onPressed: () {
                      controller.incrementCount();
                    },
                    child: Text('سبٌح',
                        style: GoogleFonts.cairo(
                            fontSize: 30, color: Colors.black))),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(8),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.amber.shade100)),
                    onPressed: () {
                      controller.restCount();
                    },
                    child: Row(
                      children: [
                        Text('اعد من الصفر',
                            style: GoogleFonts.cairo(
                                fontSize: 30, color: Colors.black)),
                        const SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.restart_alt_rounded)
                      ],
                    ))
              ],
            ),
          ],
        )
      ]),
    ));
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
