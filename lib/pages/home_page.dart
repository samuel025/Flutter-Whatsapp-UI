// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:word_pair/pages/categories.dart';
import 'package:word_pair/pages/chats.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 50,
        currentIndex: 1,
        selectedIconTheme: IconThemeData(
          color: const Color.fromARGB(255, 164, 185, 201),
          size: 30
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
          size: 25
        ),
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: Colors.grey[600],
          fontWeight: FontWeight.bold,
          
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.grey[900]
        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.update_rounded),label: 'Updates' ),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Calls', ),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Communities' ),
          BottomNavigationBarItem(icon: Icon(Icons.chat_rounded),label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings' ),
        ]
        ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0, right: 10, left: 10),
        child: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.blue[700],
                  size: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:24.0),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.blue[700],
                        size: 30,
                      ),
                    ),
                    Icon(
                      Icons.add_circle,
                      color: Colors.blue[700],
                      size: 35,
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:15.0, bottom: 11),
              child: Text(
                'Chats',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
                
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(19)
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 22
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Categories(
                  categoryName : 'All'
                ),
                Categories(
                  categoryName : 'Unread'
                ),
                Categories(
                  categoryName : 'Contacts'
                ),
                Categories(
                  categoryName : 'Groups'
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Icon(
                    Icons.archive_outlined,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    'Archived',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView(
                children: [
                  Chats(
                    name: 'John Doee',
                    message: 'How far',
                    number: 2,
                  ),
                  Chats(
                    name: 'Samwell',
                    message: 'Xup',
                    number: 0,
                  ),
                  Chats(
                    name: 'David',
                    message: 'Omo',
                    number: 2,
                  ),
                  Chats(
                    name: '🏀 Baller',
                    message: 'How far',
                    number: 1,
                  ),
                  Chats(
                    name: 'John Doee',
                    message: 'How far',
                    number: 0,
                  ),
                  Chats(
                    name: 'Git Commit',
                    message: 'Succesfull',
                    number: 25,
                  ),
                  Chats(
                    name: 'Raymond Reddington',
                    message: 'How far',
                    number: 0,
                  ),
                    Chats(
                    name: 'John Doe',
                    message: 'How far',
                    number: 2,
                  ),
                  Chats(
                    name: 'Samwell',
                    message: 'I dont know',
                    number: 3,
                  ),
                  Chats(
                    name: 'Michael Scoffield',
                    message: 'Watsup',
                    number: 4
                  ),
                ]
              ),
            ),
            
          ],
        ),
        ),
      ),
    );
  }
}