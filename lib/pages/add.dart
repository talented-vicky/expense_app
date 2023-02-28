import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utility/title.dart';

class AddPage extends TitleWidget {
  const AddPage({super.key}) : super(title: "Add Page");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Add"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: SafeArea(
            left: true,
            top: true,
            bottom: true,
            right: true,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              transformAlignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  //remove focus from current element when gesture is absent
                },
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    //
                  ),
                  child: Column(
                    children: [
                      CupertinoFormSection.insetGrouped(
                        children: const [
                          DecoratedBox(
                            decoration: BoxDecoration(),
                            child: CupertinoFormRow(
                              prefix: Text("Amount",
                                style: TextStyle(
                                  color: Colors.amber
                                ),
                              ),
                              helper: null,
                              // padding: EdgeInsets.all(10),
                              child: CupertinoTextField.borderless(
                                placeholder: "enter amount",
                                // controller: _functionDef,
                                keyboardType: TextInputType.numberWithOptions(
                                  decimal: true
                                ),
                                textAlign: TextAlign.center,
                                textInputAction: TextInputAction.continueAction,
                                style: TextStyle(
                                  color: Colors.white,
                                  backgroundColor: Colors.black45
                                ),
                              )
                            ),
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(),
                            child: CupertinoFormRow(
                              prefix: Text("Recurrence",
                                style: TextStyle(
                                  color: Colors.amber
                                ),
                              ),
                              helper: null,
                              child: CupertinoButton(
                                onPressed: (){
                                  showPicker(
                                    context, 
                                    CupertinoPicker(
                                      scrollController: FixedExtentScrollController(
                                        // initialItem: _defineSelectIndex
                                      ),
                                      itemExtent: kItenExtent, 
                                      magnification: 1,
                                      useMagnifier: false,
                                      squeeze: 1.45,
                                      onSelectedItemChanged: (int selInd){
                                        setState(){
                                          // _selRecuInd = selInd
                                        }
                                      }, 
                                      children: List<Widget>.generate(
                                        recurrences.length, (int ind) {
                                          return Center(
                                            child: Text(recurrences[ind]),
                                          )
                                        }
                                      )
                                    )
                                  )
                                },
                                child: Text(recurrences[_selrecFunc]), 
                              )
                            ),
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(),
                            child: CupertinoFormRow(
                              prefix: Text("Date",
                                style: TextStyle(
                                  color: Colors.amber
                                ),
                              ),
                              helper: null,
                              child: CupertinoButton(
                                onPressed: (){
                                  showPicker(
                                    context,
                                    CupertinoDatePicker(
                                      initialDateTime: _currentDate,
                                      use24hFormat: true,
                                      mode: CupertinoDatePickerMode.dateAndTime,
                                      onDateTimeChanged: (DateTime new Time){
                                        setState(){
                                          _currentDate = TimeOfDay.now()
                                        }
                                      }
                                    )
                                  )
                                },
                                child: Text("select time",
                                ), 
                              )
                            ),
                          )
                        ]
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                        child: CupertinoButton(
                          onPressed: (){},
                          disabledColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10
                          ),
                          color: CupertinoTheme.of(context).primaryColor,
                          pressedOpacity: .7,
                          child: const Text("Submit expense",
                            style: TextStyle(color: Colors.amber)
                          ), 
                        ),
                      )
                    ],
                  )
                ),
              ),
            )),
      ),
    );
  }
}
