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
                          ):isValidColor(row[i])?Container(height: 24,width: 25,decoration: BoxDecoration(color: getColorFromString(row[i]),borderRadius: BorderRadius.circular(7)),)
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


  /// Check if the string represents a valid color
  bool isValidColor(String colorString) {
    try {
      // Try to parse the string into a Color object
      getColorFromString(colorString);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Convert a string into a Color object
  Color getColorFromString(String colorString) {
    // Trim the string and make it lowercase for easier comparison
    colorString = colorString.trim().toLowerCase();

    // Check for hexadecimal color codes (e.g., "#FF5733" or "#FF573388")
    if (colorString.startsWith('#')) {
      return _parseHexColor(colorString);
    }

    // Check for predefined color names (e.g., "red", "blue")
    if (_isPredefinedColorName(colorString)) {
      return _getPredefinedColor(colorString);
    }

    // Check for Flutter's Color constructor format (e.g., "Color(0xFF5733)")
    if (colorString.startsWith('color(') && colorString.endsWith(')')) {
      return _parseColorConstructor(colorString);
    }

    // If none of the above, throw an exception
    throw FormatException('Invalid color string: $colorString');
  }

  /// Parse a hexadecimal color string (e.g., "#FF5733" or "#FF573388")
  Color _parseHexColor(String hexColor) {
    hexColor = hexColor.replaceFirst('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor'; // Add opacity if not provided
    }
    if (hexColor.length != 8) {
      throw FormatException('Invalid hex color: $hexColor');
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  /// Check if the string is a predefined color name
  bool _isPredefinedColorName(String colorString) {
    final predefinedColors = {
      'red': Colors.red,
      'blue': Colors.blue,
      'green': Colors.green,
      'yellow': Colors.yellow,
      'orange': Colors.orange,
      'purple': Colors.purple,
      'pink': Colors.pink,
      'teal': Colors.teal,
      'cyan': Colors.cyan,
      'brown': Colors.brown,
      'grey': Colors.grey,
      'black': Colors.black,
      'white': Colors.white,
    };
    return predefinedColors.containsKey(colorString);
  }

  /// Get a predefined color from its name
  Color _getPredefinedColor(String colorString) {
    final predefinedColors = {
      'red': Colors.red,
      'blue': Colors.blue,
      'green': Colors.green,
      'yellow': Colors.yellow,
      'orange': Colors.orange,
      'purple': Colors.purple,
      'pink': Colors.pink,
      'teal': Colors.teal,
      'cyan': Colors.cyan,
      'brown': Colors.brown,
      'grey': Colors.grey,
      'black': Colors.black,
      'white': Colors.white,
    };
    return predefinedColors[colorString]!;
  }

  /// Parse a Flutter Color constructor string (e.g., "Color(0xFF5733)")
  Color _parseColorConstructor(String colorString) {
    final valueString = colorString.substring(6, colorString.length - 1);
    final value = int.tryParse(valueString);
    if (value == null) {
      throw FormatException('Invalid Color constructor: $colorString');
    }
    return Color(value);
  }



}