// ignore_for_file: file_names

import 'package:first_app/Title.dart';
import 'package:first_app/share/comp.dart';
import 'package:flutter/material.dart';

class Notebad extends StatefulWidget {
  const Notebad({super.key});

  @override
  State<Notebad> createState() => _NotebadState();
}

class _NotebadState extends State<Notebad> {
  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height; // 0.6 means -> 60% of the screen
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.2,
              ),

              //notebad text
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.09),
                  child: const Text(
                    "Notepad",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

              //distance
              SizedBox(
                height: height * 0.1,
              ),

              //search text field✍
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search notes",
                    prefixIcon: const Icon(Icons.search),
                    // ignore: prefer_const_constructors
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, style: BorderStyle.solid),
                    ),
                  ),
                ),
              ),

              //distance
              SizedBox(
                height: height * 0.05,
              ),

              //todays grocery list button⏯
              Padding(
                padding: EdgeInsets.only(
                  bottom: height / 50,
                ),
                child: ElevatedButton(
                  onPressed: () {MyNavigator(context: context, page: const title());},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.greenAccent),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        vertical: height / 65, horizontal: width / 15)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.09),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Todays grocery list",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "June 26,2022 08:05 PM",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //distance
              SizedBox(
                height: height * 0.05,
              ),

              //rich dad poor dad quotes button⏯
              Padding(
                padding: EdgeInsets.only(
                  bottom: height / 50,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 219, 226, 32)),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        vertical: height / 60, horizontal: width / 40)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Rich dad Poor dad quotes",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "June 22,2022 05:00 PM",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),


        //floating action button
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            MyNavigator(context: context, page: const title());
          },
          backgroundColor: const Color.fromARGB(255, 203, 203, 45),
          child: const Icon(Icons.add,color: Colors.black,),
        ),
     
     
      ),
    );
  }
}
