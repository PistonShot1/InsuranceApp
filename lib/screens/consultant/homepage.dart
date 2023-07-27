import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ConsultantHomePage extends StatefulWidget {
  const ConsultantHomePage({super.key});

  @override
  State<ConsultantHomePage> createState() => _ConsultantHomePageState();
}

class _ConsultantHomePageState extends State<ConsultantHomePage> {
  @override
  Widget build(BuildContext context) {
       return  Scaffold(
        backgroundColor: Color(0xFFF1F4F8),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 10,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // if (responsiveVisibility(
                            //   context: context,
                            //   tablet: false,
                            //   tabletLandscape: false,
                            //   desktop: false,
                            // ))
                              Container(
                                width: double.infinity,
                                height: 34,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                            Container(
                              height: 95,
                              child: Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed('AuthPage');
                                                },
                                                child: Icon(
                                                  Icons.logout,
                                                  color: Colors.grey,
                                                  size: 24,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 16, 0, 8),
                                                  child: Text(
                                                    'Hi, Nanda',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontFamily: 'Outfit',
                                                      fontSize: 28,
                                                      // You can also add other properties like color, fontWeight, etc., if needed
                                                    ),
                                                    //animation: animationsMap['textOnPageLoadAnimation1']!,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 75, 0, 0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1, -1),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(40, 0, 20, 0),
                                              child: Text(
                                                'Below is a summary of your activity.',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 12,
                                                ),
                                                //animation: animationsMap['textOnPageLoadAnimation2']!,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.81, -0.6),
                                    child: Container(
                                      width: 105,
                                      height: 68,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('null');
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Text(
                                                  'Points\n25,258 ',
                                                  style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 24, // Change to your desired font size
                                                    color: Colors.black, // Change to your desired text color
                                                    // You can add other properties like fontWeight, letterSpacing, etc., if needed
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(3, 18, 0, 0),
                                                child: FaIcon(
                                                    FontAwesomeIcons.star, // Change to the desired FontAwesomeIcons icon
                                                    color: Colors.yellow, // Change to your desired icon color
                                                    size: 24, // Change to your desired icon size
                                                  ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  'https://i.pinimg.com/564x/29/0d/27/290d27e1c3a83e815b24c6813159a998.jpg',
                                  width: 351,
                                  height: 112,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                              child: Text(
                                'Services',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black, // Change to your desired text color
                                  // You can add other properties like fontSize, fontWeight, etc., if needed
                                ),
                               // animation: animationsMap['textOnPageLoadAnimation3']!,
                              ),
                            ),
                            // if (responsiveVisibility(
                            //   context: context,
                            //   phone: false,
                            //   tablet: false,
                            // ))
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 0),
                                  child: Wrap(
                                    spacing: 12,
                                    runSpacing: 12,
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.center,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [],
                                  ),
                                ),
                              ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 12, 16, 0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('ConsultantCustomerList');
                                  },
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.851,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1C4494),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x1F000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 12, 12, 12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 8),
                                                child: Text(
                                                      'My Customers',
                                                      style: TextStyle(
                                                        fontFamily: 'Outfit',
                                                        color: Colors.white, // Change to your desired text color
                                                        fontSize: 20, // Change to your desired font size
                                                        // You can add other properties like fontWeight, letterSpacing, etc., if needed
                                                      ),
                                                      //animation: animationsMap['textOnPageLoadAnimation4']!,
                                                    ),
                                              ),
                                              Text(
                                                  'Stay connected with your customers',
                                                  style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0x9AFFFFFF),
                                                    fontSize: 12,
                                                    // You can add other properties like fontWeight, letterSpacing, etc., if needed
                                                  ),
                                                  //animation: animationsMap['textOnPageLoadAnimation5']!,
                                                ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  50, 0, 0, 0),
                                          child: Icon(
                                            Icons.face,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                          //.animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
                                        ),
                                      ],
                                    ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
                                  ),
                                ),//.animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 12, 16, 0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        'ConsultantListOldPoliciesAssigned');
                                  },
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.851,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1F79BA),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x1F000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 12, 12, 12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 8),
                                                child: Text(
                                                      'List of Assigned Old Policies',
                                                      style: TextStyle(
                                                        fontFamily: 'Outfit',
                                                        color: Colors.white, // Change to your desired text color
                                                        fontSize: 20, // Change to your desired font size
                                                        // You can add other properties like fontWeight, letterSpacing, etc., if needed
                                                      ),
                                                      //animation: animationsMap['textOnPageLoadAnimation4']!,
                                                    ),
                                              ),
                                              Text(
                                                  'View all old policies assigned to customers',
                                                  style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0x9AFFFFFF),
                                                    fontSize: 12,
                                                    // You can add other properties like fontWeight, letterSpacing, etc., if needed
                                                  ),
                                                  //animation: animationsMap['textOnPageLoadAnimation5']!,
                                                ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  50, 0, 0, 0),
                                          child: Icon(
                                            Icons.document_scanner,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                          //.animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
                                        ),
                                      ],
                                    ),//.animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
                                  ),
                                ),//.animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 12, 16, 0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                        'ReviewedPoliciesConsultatnt');
                                  },
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.852,
                                    height: 86,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1C4494),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x1F000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 0, 12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 8),
                                                  child: Text(
                                                      'Reviewed policies',
                                                      style: TextStyle(
                                                        fontFamily: 'Outfit',
                                                        color: Colors.white, // Change to your desired text color
                                                        fontSize: 20, // Change to your desired font size
                                                        // You can add other properties like fontWeight, letterSpacing, etc., if needed
                                                      ),
                                                      //animation: animationsMap['textOnPageLoadAnimation4']!,
                                                    ),
                                              ),
                                              Text(
                                                  'Check all reviewed policies for all customers',
                                                  style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0x9AFFFFFF),
                                                    fontSize: 12,
                                                  ),
                                                  //animation: animationsMap['textOnPageLoadAnimation5']!,
                                                ),
                                            ],
                                          ),
                                        ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Icon(
                                            Icons.grade,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),//.animateOnPageLoad(animationsMap['containerOnPageLoadAnimation3']!),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 12, 16, 0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('Reward');
                                  },
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.852,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1F79BA),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x1F000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 8),
                                                  child: Text(
                                                      'Rewards Redemption',
                                                      style: TextStyle(
                                                        fontFamily: 'Outfit',
                                                        color: Colors.white, // Change to your desired text color
                                                        fontSize: 20, // Change to your desired font size
                                                        // You can add other properties like fontWeight, letterSpacing, etc., if needed
                                                      ),
                                                      //animation: animationsMap['textOnPageLoadAnimation4']!,
                                                    ),
                                              ),
                                              Text(
                                                  'Tap here to redeem exclusive benefits.',
                                                  style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0x9AFFFFFF),
                                                    fontSize: 12,
                                                  ),
                                                  //animation: animationsMap['textOnPageLoadAnimation5']!,
                                                ),
                                            ],
                                          ),
                                        ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Icon(
                                            Icons.card_giftcard,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),//.animateOnPageLoad(animationsMap['containerOnPageLoadAnimation3']!),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 12, 16, 0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('SharePage');
                                  },
                                  child: Container(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.852,
                                    height: 86,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1C4494),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x1F000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 12, 12, 12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 8),
                                                  child: Text(
                                                      'Invite friends',
                                                      style: TextStyle(
                                                        fontFamily: 'Outfit',
                                                        color: Colors.white, // Change to your desired text color
                                                        fontSize: 20, // Change to your desired font size
                                                        // You can add other properties like fontWeight, letterSpacing, etc., if needed
                                                      ),
                                                      //animation: animationsMap['textOnPageLoadAnimation4']!,
                                                    ),
                                              ),
                                              Text(
                                                  'Share this app to your connections and redeem rewards !',
                                                  style: TextStyle(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0x9AFFFFFF),
                                                    fontSize: 12,
                                                  ),
                                                  //animation: animationsMap['textOnPageLoadAnimation5']!,
                                                ),
                                            ],
                                          ),
                                        ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Icon(
                                            Icons.ios_share,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),//.animateOnPageLoad(animationsMap['containerOnPageLoadAnimation3']!),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}
