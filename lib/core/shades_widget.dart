
import 'package:flutter/material.dart';

import 'consts.dart';
class WebBackgroundWidget extends StatelessWidget {
  const WebBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFB3154F),

            Color(0xFFB3154F).withOpacity(0.3),
            Color(0xFFB3154F).withOpacity(0.1),
            Color(0xFFB3154F).withOpacity(0.1),
            Color(0xFF87337E).withOpacity(0.1),
            // Color(0xFFB3154F).withOpacity(0.1),
            Colors.black.withOpacity(0.1),

          ],
        ),
      ),
      child: Stack(
        children: [
          // Spotlights
          Positioned.fill(
            child: CustomPaint(
              painter: SpotlightPainter(),
            ),
          ),

          ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.transparent],
              ).createShader(
                Rect.fromLTRB(0, 0, rect.width, rect.height),
              );
            },
            blendMode: BlendMode.dstIn,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                "assets/start_images/shd.png",
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),

        ],
      ),
    );
  }
}


class SpotlightPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.6)
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 50);

    final spotlightRects = [
      Rect.fromCenter(center: Offset(size.width * 0.1, 0), width: 30, height: 300),
      Rect.fromCenter(center: Offset(size.width * 0.35, 0), width: 30, height:300),
      Rect.fromCenter(center: Offset(size.width * 0.6, 0), width: 30, height: 300),
      Rect.fromCenter(center: Offset(size.width * 0.9, 0), width: 30, height: 300),
    ];

    for (var rect in spotlightRects) {
      canvas.drawOval(rect, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}





class LongCardBgWidget extends StatelessWidget {
  final double? borderRadius;
  const LongCardBgWidget({super.key, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius??0)
      ),
      child: Stack(
        children: <Widget>[
          ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.transparent],
              ).createShader(
                Rect.fromLTRB(0, 0, rect.width, rect.height),
              );
            },
            blendMode: BlendMode.dstIn,
            child: Opacity(
              opacity: .10,
              child: Image.asset(
                "assets/start_images/shd.png",
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius??0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFE7236A),
                  Color(0xFF87337E).withOpacity(.36),
                  Color(0xFF503C8A).withOpacity(.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




//line widget...
class LineWidget extends StatelessWidget {
  const LineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: MediaQuery.of(context).size.width/6,
      color: mainAppColor,
      margin: EdgeInsets.only(top: 26, bottom: 10),
    );
  }
}