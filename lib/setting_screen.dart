import 'package:flutter/material.dart';

import 'constant.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Settings",
          ),
          backgroundColor: const Color.fromARGB(255, 56, 115, 59),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Arabic Font Size:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Slider(
                    value: arabicFontSize,
                    min: 20,
                    max: 40,
                    onChanged: (value){
                      setState(() {
                        arabicFontSize = value;
                      });
                    },

                  ),

                  Text(
                    "‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ‏",
                    style: TextStyle(
                        fontFamily: 'quran_font_1', fontSize: arabicFontSize),
                    textDirection: TextDirection.rtl,
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Divider(),
                  ),
                  const Text(
                    'Mushaf Mode Font Size:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Slider(
                    value: mushafFontSize,
                    min: 20,
                    max: 50,
                    onChanged: (value){
                      setState(() {
                        mushafFontSize=value;
                      });
                    },
                  ),

                  Text(
                    "‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ‏",
                    style: TextStyle(
                        fontFamily: 'quran_font_1', fontSize: mushafFontSize),
                    textDirection: TextDirection.rtl,
                  ),


                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: (){
                            setState(() {
                              arabicFontSize=28;
                              mushafFontSize=40;
                            });
                            saveSetting();
                          },
                          child: const Text('Reset')),
                      ElevatedButton(
                          onPressed: (){
                            saveSetting();
                            Navigator.of(context).pop();
                          },
                          child: const Text('Save')),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}