// ignore_for_file: file_names, camel_case_types

// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';


class title extends StatefulWidget {
  const title({super.key});

  @override
  State<title> createState() => _titleState();
}

class _titleState extends State<title> {
  int idx=0;
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
        extendBodyBehindAppBar: true,  // لدمج البادي مع ال اب بار   بتخلي البادي يدخل جوا ال اب بار
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 211, 198, 85),
            ),
          ),
          title: Text(
            'Note',
            style: TextStyle(
              color: Colors.black,
              fontSize: height / 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
           Padding(
             padding: const EdgeInsets.only(right:10.0),
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Column(
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.offline_share,
                            size: 35,
                            color: Color.fromARGB(255, 211, 198, 85),
                          ),
                         label: const Text(
                            'share offline',
                            style: TextStyle(
                              color: Colors.black,                     
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.screen_share,
                            size: 35,
                            color: Color.fromARGB(255, 211, 198, 85),
                          ),
                         label: const Text(
                            'Screen share',
                            style: TextStyle(
                              color: Colors.black,                     
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                ],
                // ignore: prefer_const_constructors
                child: Icon(
                    Icons.share,
                    size: 35,
                    color: const Color.fromARGB(255, 211, 198, 85),
                  ),
                
              ),
            ),
            
            Padding(
             padding: const EdgeInsets.only(right:10.0),
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Column(
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
                            size: 35,
                            color: Color.fromARGB(255, 211, 198, 85),
                          ),
                         label: const Text(
                            'Delete',
                            style: TextStyle(
                              color: Colors.black,                     
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.save,
                            size: 35,
                            color: Color.fromARGB(255, 211, 198, 85),
                          ),
                         label: const Text(
                            'Save',
                            style: TextStyle(
                              color: Colors.black,                     
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                ],
                // ignore: prefer_const_constructors
                child: Icon(
                    Icons.menu,
                    size: 35,
                    color: const Color.fromARGB(255, 211, 198, 85),
                  ),
                
              ),
            ),
            
        

          ],
        ),
        body: Column(
          children:  [
             SizedBox(
                height:height*0.1,
                ),
               const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("June 26,2022 08:05",style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
          
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Title",style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 113, 112, 112),
                  fontWeight: FontWeight.w400,
                ),),
              ),
            ),
        
          ],
        ),
       bottomNavigationBar: NavigationBar( 
        selectedIndex: idx,
        onDestinationSelected: (int index) {
          setState(() {
            idx = index;
          });
        },
       backgroundColor: Colors.grey,
        destinations: const [  //list of destinations
        
          NavigationDestination( //each destination is a button
             icon: Icon(Icons.photo_album),  //قبل ما تدوس عليه
            label: 'albums',   //عنوان الزرار
            selectedIcon: Icon(Icons.photo_album), //لما تدوس عليه  بتظهر
          ),


          NavigationDestination(
            icon: Icon(Icons.my_library_books_outlined),
            label: 'To-do-list',
            selectedIcon: Icon(Icons.my_library_books_outlined),
          ),


          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Reminder',
            selectedIcon: Icon(Icons.notifications),
          ),


        ],
        
       ),

     
    ),
    );
  }
}
