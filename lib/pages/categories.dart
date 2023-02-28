import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

// import '../utility/title.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});
  // const CategoriesPage({super.key}) : super(title: "Categories");
  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  Color pickerColor = const Color(0xff443a49);
  Color currentColor = const Color(0xff443a49);

  void changeColor(Color col) {
    setState(() => pickerColor = col);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text('Categories'),
        ),
        body: Container(
          color: Colors.black,
          height: double.infinity,
          width: double.infinity,
          transformAlignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    ListTile(
                      title: const Text(
                        "Option1",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    Container(height: 2, color: Colors.white),
                    ListTile(
                      title: const Text(
                        "Option2",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    Container(height: 2, color: Colors.white),
                    ListTile(
                      title: const Text(
                        "Option3",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    Container(height: 2, color: Colors.white),
                    ListTile(
                      title: const Text(
                        "Option4",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: const Text('pick color'),
                                      content: SingleChildScrollView(
                                          child: ColorPicker(
                                        pickerColor: pickerColor,
                                        onColorChanged: changeColor,
                                      )),
                                      actions: [
                                        ElevatedButton(
                                          child: const Text("You gerrit now"),
                                          onPressed: () {
                                            setState(() =>
                                                currentColor = pickerColor);
                                            Navigator.of(context).pop();
                                          },
                                        )
                                      ],
                                    ));
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: pickerColor,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 6,
                                strokeAlign: BorderSide.strokeAlignOutside
                              )
                            ),
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            controller: ,
                            tex
                          )
                        ),
                        const Text("stuff",
                            style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.green)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
