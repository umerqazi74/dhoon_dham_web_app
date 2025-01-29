import 'package:flutter/material.dart';

import '../../../core/consts.dart';

class MatchesHistoryTable extends StatelessWidget {
  final List<String> headingList;
  final List<List<String>> valuesList;
  final bool isFirstBig;
  const MatchesHistoryTable({super.key, required this.headingList, required this.valuesList,  required this.isFirstBig});

  @override
  Widget build(BuildContext context) {
    // Sample Heading List and Values List

    return Column(
      children: [
        Table(
          // border: TableBorder.all(color: Colors.grey, width: 1),
          columnWidths:  {
            0: FractionColumnWidth(isFirstBig?0.4:0.2),

          },
          children: [
            // Create Heading Row
            TableRow(
              // decoration: BoxDecoration(
              //   color: Colors.grey.shade200,
              // ),
              children: headingList
                  .map((heading) => Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: Text(
                      heading,
                      style:  TextStyle(color: whiteColor.withOpacity(0.7),fontWeight: FontWeight.bold),
                    ),
                  ))
                  .toList(),
            ),
            // Create Data Rows
            for (var row in valuesList)
              TableRow(
                children: row
                    .map((value) => Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          value.contains("png")? SizedBox(width: 60,height: 25,child: Image.asset(value),):
                          Text(value,style:  TextStyle(fontSize: 11,color: whiteColor.withOpacity(0.6)))
                        ]),
                    ))
                    .toList(),
              ),
          ],
        ),
      ],
    );
  }
}
