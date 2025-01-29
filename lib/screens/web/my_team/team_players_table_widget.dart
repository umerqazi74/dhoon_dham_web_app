import 'package:flutter/material.dart';

import '../../../core/consts.dart';

class TeamPlayersTable extends StatelessWidget {
  final List<String> headingList;
  final List<List<String>> valuesList;
  final bool isFirstBig;
  final Function()? onTap;

  const TeamPlayersTable({
    super.key,
    required this.headingList,
    required this.valuesList,
    required this.isFirstBig,  this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          columnWidths: {
            0: FractionColumnWidth(isFirstBig ? 0.4 : 0.2),
          },
          children: [
            // Create Heading Row
            TableRow(
              children: headingList
                  .map(
                    (heading) => Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: Text(
                    heading,
                    style: TextStyle(
                      color: whiteColor.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
            // Create Data Rows
            for (var row in valuesList)
              TableRow(
                children: [
                  // Merge the first two values in the first cell
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        row[0].contains("png")
                            ? InkWell(
                          onTap: onTap,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: Image.asset(row[0]),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    row[1],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: whiteColor.withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                            )
                            : Text(
                          "${row[0]} ${row[1]}",
                          style: TextStyle(
                            fontSize: 12,
                            color: whiteColor.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Continue with the rest of the values (skipping the second value)
                  for (var i = 2; i < row.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          row[i].contains("png")
                              ? SizedBox(
                            width: 60,
                            height: 25,
                            child: Image.asset(row[i]),
                          )
                              : Text(
                            row[i],
                            style: TextStyle(
                              fontSize: 14,
                              color: whiteColor.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}