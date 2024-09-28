import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  final String name;
  final String message;
  final int number;

  const Chats({
    super.key,
    required this.name,
    required this.message,
    required this.number,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9.0),
      child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.person,
                      size: 32,
                      ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0, top: 0),
                      child: Text(
                        message,
                        style: TextStyle(
                          color: Colors.grey[600]
                        ),
                      ),
                    ),
                    
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right:5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                       Text(
                        '10:00 PM',
                        style: TextStyle(
                          color: number==0 ? Colors.grey[600] : Colors.blue[700]
                        ),
                        ),
                      if (number != 0 )
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue[700]
                          ),
                          child: Padding(
                            padding:  const EdgeInsets.only(left:7.0, right: 7.0, top: 3, bottom: 3),
                            child: Text(
                              number.toString(),
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}