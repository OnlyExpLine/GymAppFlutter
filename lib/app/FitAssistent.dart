import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gym_app_project/constant.dart';
import 'package:gym_app_project/images.dart';

class FitAssistent extends StatefulWidget {
  const FitAssistent({super.key});

  @override
  State<FitAssistent> createState() => _FitAssistentState();
}

class _FitAssistentState extends State<FitAssistent> {
  late String goalTitle = 'Набрать мышечную массу';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 150,
              width: 357,
              child: Card(
                elevation: 0,
                color: deepPurple50,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: blackColor, width: 4),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(height: 90, width: 90, child: dartsImage),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 115, width: 237, child: _title()),
                        SizedBox(
                          height: 20,
                          width: 237,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _openGoals();
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: deepPurple50,
                                    elevation: 0),
                                child: Text(
                                  'подробнее...',
                                  style:
                                      TextStyle(color: deepPurpleAccentColor),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
                height: 256,
                width: 357,
                child: Card(
                  color: blackColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 128,
                              width: 237,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Гид по тренажерам',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Сложно разобраться с оборудованием? Помогу начать заниматься правильно!',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 90,
                              child: gantelImage,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            /*SizedBox(
                              height: 97,
                              width: 262,
                              child:*/ Card(
                                color: blackColor,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 94,
                                      width: 127,
                                      child: Container(
                                        child: Card(
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              Center(
                                                child: SizedBox(
                                                    height: 81,
                                                    width: 59,
                                                    child: bicycleImage),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 94,
                                      width: 127,
                                      child: Card(
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Container(
                                                  height: 81,
                                                  width: 59,
                                                  /*decoration:BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: blackColor,
                                                            blurRadius: 5,
                                                            spreadRadius: 10,
                                                            offset: Offset(0,2)
                                                        )
                                                      ]
                                                  ),*/
                                                  child: butterflyImage),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                           // ),
                            SizedBox(
                              height: 94,
                              width: 67,
                              child: Card(
                                color: deepPurpleAccentColor,
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _openGuide();
                                      });
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward_sharp,
                                      size: 35,
                                      color: Colors.black,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 187,
                  width: 177,
                  child: Card(
                      elevation: 0,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Карта клуба',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            const Text(
                              'Покажу, где найти тот самый тренажер',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            Center(
                              child: SizedBox(
                                height: 90,
                                width: 80,
                                child: Card(
                                  elevation: 0,
                                  borderOnForeground: false,
                                  child: Column(
                                    children: [domainImage],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 187,
                  width: 177,
                  child: Card(
                    elevation: 0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Подобрать',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            'персонального тренера',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          Center(
                            child: SizedBox(
                              height: 94,
                              width: 69,
                              child: Card(
                                elevation: 0,
                                borderOnForeground: false,
                                child: Column(
                                  children: [searchImage],
                                ),
                              ),
                            ),
                          )
                          //searchImage
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Цель:',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            goalTitle,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  void _openGoals() {
    showDialog(
        context: context,
        builder: (BuildContext bc) {
          return const AlertDialog(
            content: Center(
              child: Text('Здесь пока ничего нет'),
            ),
          );
        });
  }

  void _openGuide() {
    showDialog(
        context: context,
        builder: (BuildContext bc) {
          return const AlertDialog(
            content: Center(
              child: Text('Здесь пока ничего нет'),
            ),
          );
        });
  }
}
