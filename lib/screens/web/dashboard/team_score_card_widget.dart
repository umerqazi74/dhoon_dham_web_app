import 'package:flutter/material.dart';

import '../../../core/consts.dart';
class TeamScoreCardWidget extends StatelessWidget {
  final bool? isLast;
  const TeamScoreCardWidget({super.key, this.isLast});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      // height: 138,
      decoration: BoxDecoration(
          border: Border.all(color: whiteColor.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(16),
          color: Colors.black54
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ASIA CUP 2023',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '9th Match, Super Four (D/L), Colombo, Se...',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 9,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Team 1 details
                Row(
                  children: [
                    SizedBox(
                        height: 40,
                        child: Image.asset("assets/main_images/t1.png")
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Text(
                          '159-8',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Overs 20',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 9,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // VS
                isLast==true?SizedBox():SizedBox(
                    height: 20,
                    child: Image.asset("assets/main_images/vs3.png")
                ),
                // Team 2 details
                isLast==true?Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ):Row(
                  children: [
                    SizedBox(
                        height: 40,
                        child: Image.asset("assets/main_images/t2.png")
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text(
                          '160-6',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Overs 20',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 9,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(height: 4),
            Text(
              'Need 24 Runs in 12 Balls',
              style: TextStyle(
                color: Colors.red,
                fontSize: 9,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
