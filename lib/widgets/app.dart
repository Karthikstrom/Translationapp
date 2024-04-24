import 'package:flutter/material.dart';

class LanguageTranslationPage extends StatefulWidget {
  const LanguageTranslationPage({super.key});

  @override
  State<LanguageTranslationPage> createState() =>
      _LanguageTranslationPageState();
}

class _LanguageTranslationPageState extends State<LanguageTranslationPage> {
  var languages = ['Hindi', 'Tamil', 'English'];
  var originLanguage = "From";
  var destinationLanguage = "To";
  var output = "";

  TextEditingController languageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Language Translator'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    width: 150,
                    child: DropdownButton(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        //dropdownColor: Colors.white,
                        iconDisabledColor: Colors.white,
                        iconEnabledColor: Colors.white,
                        alignment: AlignmentDirectional.centerEnd,
                        hint: Text(originLanguage,
                            style: const TextStyle(color: Colors.black)),
                        focusColor: Colors.white,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: languages.map((String dropDownStringItem) {
                          return DropdownMenuItem(
                            child: Text(dropDownStringItem),
                            value: dropDownStringItem,
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            originLanguage = value!;
                          });
                        }),
                  ),
                  const SizedBox(width: 30),
                  const Icon(Icons.arrow_right_alt_outlined,
                      color: Colors.white, size: 30),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    width: 150,
                    child: DropdownButton(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        //dropdownColor: Colors.white,
                        iconDisabledColor: Colors.white,
                        iconEnabledColor: Colors.white,
                        alignment: AlignmentDirectional.centerEnd,
                        hint: Text(destinationLanguage,
                            style: const TextStyle(color: Colors.black)),
                        focusColor: Colors.white,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: languages.map((String dropDownStringItem) {
                          return DropdownMenuItem(
                            child: Text(dropDownStringItem),
                            value: dropDownStringItem,
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            destinationLanguage = value!;
                          });
                        }),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 500),
                child: TextFormField(
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      labelText: 'Enter your text here',
                      labelStyle: TextStyle(color: Colors.white),
                      errorStyle: TextStyle(color: Colors.red)),
                  controller: languageController,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
