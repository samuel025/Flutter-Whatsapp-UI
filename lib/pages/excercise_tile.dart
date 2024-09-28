// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ExcerciseTile extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final String excerciseName;
  final int numberOfExcercises;
  // ignore: prefer_typing_uninitialized_variables
  final  color;
  const ExcerciseTile({
    super.key,
    required this.icon,
    required this.excerciseName,
    required this.numberOfExcercises,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:12.0),
      child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Icon(
                                 icon,
                                color: Colors.white,
                                )
                                ),
                          SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(excerciseName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              // ignore: prefer_interpolation_to_compose_strings
                              Text(numberOfExcercises.toString() + ' exercises',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                          ],
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      )
                    ),
    );
  }
}