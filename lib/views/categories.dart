import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter_colorpicker/flutter_colorpicker.dart';

// import '../utility/title.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});
  // const CategoriesPage({super.key}) : super(title: "Categories");
  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  Color colPicker = const Color(0xff443a49);
  Color currentColor = const Color(0xff443a49);
  List<CategoriesPage> cat = [];

  late TextEditingController _textCtrl;

  void changeColor(Color col) {
    setState(() => colPicker = col);
  }

  @override
  void initState() {
    super.initState();
    _textCtrl = TextEditingController(text: "");
  }

  @override
  void dispose() {
    _textCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: CupertinoColors.white,
          ),
          middle: const Text(
            "Categories",
            style: TextStyle(color: CupertinoColors.white),
          ),
          backgroundColor: CupertinoColors.black),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        // padding: const EdgeInsets.fromLTRB(5, 10, 5, 2),
        transformAlignment: Alignment.center,
        child: Column(
          children: [
            CupertinoFormSection.insetGrouped(children: [
              // ...List.generate(
              //     categories.length,
              // (index) => GestureDetector(
              GestureDetector(
                child: DecoratedBox(
                  decoration: const BoxDecoration(),
                  child: Dismissible(
                      key: const Key("some stuff"),
                      // confirmDismiss: () {
                      //   //
                      // },
                      // onDismissed: (){

                      // },
                      // background: Container(
                      //   //
                      // ),
                      child: CupertinoFormRow(
                        prefix:
                            Row(children: [Container(), const Text("data")]),
                        helper: null,
                        padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                        child: Container(),
                      )),
                ),
              )
              // )
            ]),
            Container(),
            SafeArea(
                top: true,
                bottom: true,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) => CupertinoAlertDialog(
                                  title: const Text("pick color"),
                                  content: SingleChildScrollView(
                                    child: ColorPicker(
                                      pickerColor: colPicker,
                                      onColorChanged: changeColor,
                                    ),
                                  ),
                                  actions: [
                                    CupertinoButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      child: const Text("Pretty okay"),
                                    )
                                  ],
                                ));
                      },
                      child: Container(
                          width: 20,
                          height: 20,
                          margin: const EdgeInsets.only(left: 10, right: 20),
                          decoration: BoxDecoration(
                              color: colPicker,
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: CupertinoColors.activeBlue,
                                  width: 2))),
                    ),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: CupertinoTextField(
                        placeholder: "Enter category",
                        controller: _textCtrl,
                      ),
                    )),
                    CupertinoButton(
                      onPressed: () => {
                        // somefunctionRealm
                      },
                      child: const Icon(Icons.select_all),
                    )
                  ]),
                ))
          ],
        ),
      ),
      //
    );
  }
}

// return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           leading: IconButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               icon: const Icon(Icons.arrow_back_ios)),
//           title: const Text('Categories'),
//         ),
//         body: Container(
//           color: Colors.black,
//           height: double.infinity,
//           width: double.infinity,
//           transformAlignment: Alignment.center,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               SizedBox(
//                 child: ListView(
//                   shrinkWrap: true,
//                   physics: const BouncingScrollPhysics(),
//                   children: [
//                     ListTile(
//                       title: const Text(
//                         "Option1",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       onTap: () {},
//                     ),
//                     Container(height: 2, color: Colors.white),
//                     ListTile(
//                       title: const Text(
//                         "Option2",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       onTap: () {},
//                     ),
//                     Container(height: 2, color: Colors.white),
//                     ListTile(
//                       title: const Text(
//                         "Option3",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       onTap: () {},
//                     ),
//                     Container(height: 2, color: Colors.white),
//                     ListTile(
//                       title: const Text(
//                         "Option4",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       onTap: () {},
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 color: Colors.white,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             showDialog(
//                                 context: context,
//                                 builder: (context) => AlertDialog(
//                                       title: const Text('pick color'),
//                                       content: SingleChildScrollView(
//                                           child: ColorPicker(
//                                         pickerColor: pickerColor,
//                                         onColorChanged: changeColor,
//                                       )),
//                                       actions: [
//                                         ElevatedButton(
//                                           child: const Text("You gerrit now"),
//                                           onPressed: () {
//                                             setState(() =>
//                                                 currentColor = pickerColor);
//                                             Navigator.of(context).pop();
//                                           },
//                                         )
//                                       ],
//                                     ));
//                           },
//                           child: Container(
//                             width: 20,
//                             height: 20,
//                             decoration: BoxDecoration(
//                               color: pickerColor,
//                               shape: BoxShape.circle,
//                               border: Border.all(
//                                 color: Colors.white,
//                                 width: 6,
//                                 strokeAlign: BorderSide.strokeAlignOutside
//                               )
//                             ),
//                           ),
//                         ),
//                         const Expanded(
//                           child: TextField(
//                             controller: ,
//                             tex
//                           )
//                         ),
//                         const Text("stuff",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 backgroundColor: Colors.green)),
//                       ],
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ));
