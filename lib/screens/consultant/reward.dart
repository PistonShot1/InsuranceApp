import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Reward extends StatefulWidget {
  const Reward({super.key});

  @override
  State<Reward> createState() => _RewardState();
}

class _RewardState extends State<Reward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          automaticallyImplyLeading: true,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('null');
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey,
              size: 24,
            ),
          ),
          title: Text(
              'Rewards Redemption',
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                color: Color(0xFF101213), 
                fontSize: 24, 
                fontWeight: FontWeight.w500, 
              ),
            ),
          actions: [],
          centerTitle: false,
          elevation: 1,
        ),

        body: SafeArea(
          top: true,
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {},
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Container(
                            width: 314,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              shape: BoxShape.rectangle,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: FaIcon(
                                        FontAwesomeIcons.crown,
                                        color: Color(0xFF856C0B),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                      child: Text(
                                        'Points',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          80, 0, 0, 0),
                                      child: Text(
                                        '25,258',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                      child: Container(
                        width: 340,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Touch_%27n_Go_eWallet_logo.svg/1200px-Touch_%27n_Go_eWallet_logo.svg.png',
                                      width: 45,
                                      height: 48,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 5),
                                    child: Text(
                                      'RM5 TouchnGo E-wallet \ntop-up',
                                      style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 15,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                   alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        var confirmDialogResponse = await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Claim this voucher with 50 pts?'),
                                              content: Text('Voucher will be added to your redeemed items automatically.'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () => Navigator.pop(alertDialogContext, false),
                                                  child: Text('Cancel'),
                                                ),
                                                TextButton(
                                                  onPressed: () => Navigator.pop(alertDialogContext, true),
                                                  child: Text('Confirm'),
                                                ),
                                              ],
                                            );
                                          },
                                        ) ?? false;
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF1C4494), // Button background color
                                        padding: EdgeInsets.zero, // No padding inside the button
                                        minimumSize: Size(73, 40), // Button minimum size
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ), // Button shape with rounded corners
                                        elevation: 3, // Button elevation (shadow)
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.crown,
                                            size: 12,
                                          ),
                                          SizedBox(width: 8), // Spacing between icon and text
                                          Text(
                                            '50',
                                            style: TextStyle(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation4']!),
                        ),
                      ),
                    ),
                  ),
                  ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation1']!),
                                  //eOnPageLoad(animationsMap['rowOnPageLoadAnimation1']!),

                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                      child: Container(
                        width: 340,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  'https://1000logos.net/wp-content/uploads/2019/07/KFC-logo-2006.png',
                                  width: 76,
                                  height: 48,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 5),
                                  child: Text(
                                    'KFC RM20 off voucher',
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 15,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                 alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      var confirmDialogResponse = await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Claim this voucher with 200 pts?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                child: Text('Confirm'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ?? false;
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF1C4494), // Button background color
                                      padding: EdgeInsets.zero, // No padding inside the button
                                      minimumSize: Size(73, 40), // Button minimum size
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ), // Button shape with rounded corners
                                      elevation: 3, // Button elevation (shadow)
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.crown,
                                          size: 12,
                                        ),
                                        SizedBox(width: 8), // Spacing between icon and text
                                        Text(
                                          '200',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation4']!),
                        ),
                      ),
                    ),
                  ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation2']!),

                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                      child: Container(
                        width: 340,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://www.sunwaymedical.com/images/uploads/layout/SUN_logo-10.png',
                                    width: 58,
                                    height: 39,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 5),
                                  child: Text(
                                    'Full Body Medical \nCheck Up',
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 15,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      var confirmDialogResponse = await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Claim this voucher with 1000 pts?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                child: Text('Confirm'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ?? false;
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF1C4494), // Button background color
                                      padding: EdgeInsets.zero, // No padding inside the button
                                      minimumSize: Size(73, 40), // Button minimum size
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ), // Button shape with rounded corners
                                      elevation: 3, // Button elevation (shadow)
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.crown,
                                          size: 12,
                                        ),
                                        SizedBox(width: 8), // Spacing between icon and text
                                        Text(
                                          '800',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation4']!),
                        ),
                      ),
                    ),
                  ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation3']!),

                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                      child: Container(
                        width: 340,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://d3cd3hu9wl72jo.cloudfront.net/1.d/preview/6/0/60d0e317_4b36c599_14ProMax-DeepPurple.png',
                                    width: 54,
                                    height: 63,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 5),
                                  child: Text(
                                    'Stand a chance to \nwin an iPhone 14 Pro',
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                 alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      var confirmDialogResponse = await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Claim this voucher with 100 pts?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                child: Text('Confirm'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ?? false;
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF1C4494), // Button background color
                                      padding: EdgeInsets.zero, // No padding inside the button
                                      minimumSize: Size(73, 40), // Button minimum size
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ), // Button shape with rounded corners
                                      elevation: 3, // Button elevation (shadow)
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.crown,
                                          size: 12,
                                        ),
                                        SizedBox(width: 8), // Spacing between icon and text
                                        Text(
                                          '100',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation4']!),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                      child: Container(
                        width: 340,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://www.watsons.com.my/assets/img/og_image.png',
                                    width: 45,
                                    height: 42,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 5),
                                  child: Text(
                                    'Watsons RM10 Cash  \nVoucher',
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                 alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      var confirmDialogResponse = await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Claim this voucher with 100 pts?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                child: Text('Confirm'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ?? false;
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF1C4494), // Button background color
                                      padding: EdgeInsets.zero, // No padding inside the button
                                      minimumSize: Size(73, 40), // Button minimum size
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ), // Button shape with rounded corners
                                      elevation: 3, // Button elevation (shadow)
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.crown,
                                          size: 12,
                                        ),
                                        SizedBox(width: 8), // Spacing between icon and text
                                        Text(
                                          '100',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation4']!),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                      child: Container(
                        width: 340,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://www.watsons.com.my/assets/img/og_image.png',
                                    width: 45,
                                    height: 42,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 5),
                                  child: Text(
                                    'Watsons RM20 Cash  \nVoucher',
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      50, 0, 0, 0),
                                  child: ElevatedButton(
                                      onPressed: () async {
                                        var confirmDialogResponse = await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Claim this voucher with 200 pts?'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () => Navigator.pop(alertDialogContext, false),
                                                  child: Text('Cancel'),
                                                ),
                                                TextButton(
                                                  onPressed: () => Navigator.pop(alertDialogContext, true),
                                                  child: Text('Confirm'),
                                                ),
                                              ],
                                            );
                                          },
                                        ) ?? false;
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF1C4494), // Button background color
                                        padding: EdgeInsets.zero, // No padding inside the button
                                        minimumSize: Size(73, 40), // Button minimum size
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ), // Button shape with rounded corners
                                        elevation: 3, // Button elevation (shadow)
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.crown,
                                            size: 12,
                                          ),
                                          SizedBox(width: 8), // Spacing between icon and text
                                          Text(
                                            '200',
                                            style: TextStyle(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation4']!),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                      child: Container(
                        width: 340,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://www.watsons.com.my/assets/img/og_image.png',
                                    width: 45,
                                    height: 42,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 5),
                                  child: Text(
                                    'Watsons RM50 Cash  \nVoucher',
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 14,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      50, 0, 0, 0),
                                  child: ElevatedButton(
                              onPressed: () async {
                                var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Claim this voucher with 500 pts?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(alertDialogContext, false),
                                          child: Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(alertDialogContext, true),
                                          child: Text('Confirm'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ?? false;
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF1C4494), // Button background color
                                padding: EdgeInsets.zero, // No padding inside the button
                                minimumSize: Size(73, 40), // Button minimum size
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ), // Button shape with rounded corners
                                elevation: 3, // Button elevation (shadow)
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.crown,
                                    size: 12,
                                  ),
                                  SizedBox(width: 8), // Spacing between icon and text
                                  Text(
                                    '500',
                                    style: TextStyle(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation4']!),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),//.animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
        ),
      );
  }
}