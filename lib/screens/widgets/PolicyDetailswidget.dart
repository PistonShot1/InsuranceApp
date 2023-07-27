import 'package:flutter/material.dart';

class PolicyDetailswidget extends StatelessWidget {
  const PolicyDetailswidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white, // Change to your desired background color
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 3), // horizontal, vertical offset
            blurRadius: 4, // spread radius
            spreadRadius: 0,
          ),
        ],
        borderRadius:
            BorderRadius.circular(20), // Change to your desired border radius
        shape: BoxShape.rectangle,
      ),
      child: const Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Policy No',
                  style: TextStyle(
                    // Change 'YourDesiredFontFamily' to the desired font family name
                    fontSize: 12, // Change to your desired font size
                  ),
                ),
                // ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Text(
                    '221105643',
                    style: TextStyle(
// Change 'YourDesiredFontFamily' to the desired font family name
                      fontSize: 18, // Change to your desired font size
                    ),
                  ),
                  // ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Due Date',
                          style: TextStyle(
                            // Change 'YourDesiredFontFamily' to the desired font family name
                            fontSize: 12, // Change to your desired font size
                          ),
                        ),
                        // ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation3']!),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Text(
                            '31 Dec 2023',
                            style: TextStyle(
// Change 'YourDesiredFontFamily' to the desired font family name
                              fontSize: 18, // Change to your desired font size
                            ),
                          ),
                          // ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation4']!),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Policy Type',
                  style: TextStyle(
                    // Change 'YourDesiredFontFamily' to the desired font family name
                    fontSize: 12, // Change to your desired font size
                  ),
                ),
                // ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation5']!),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Text(
                    'Basic',
                    style: TextStyle(
 // Change 'YourDesiredFontFamily' to the desired font family name
                      fontSize: 18, // Change to your desired font size
                    ),
                  ),
                  // ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation6']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 6, 25, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Policy Status',
                          style: TextStyle(
                            // Change 'YourDesiredFontFamily' to the desired font family name
                            fontSize: 12, // Change to your desired font size
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Text(
                            'Active',
                            style: TextStyle(
 // Change 'YourDesiredFontFamily' to the desired font family name
                              fontSize: 18, // Change to your desired font size
                            ),
                          ),
                          // ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation8']!),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
