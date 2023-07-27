import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminHomepage extends StatefulWidget {
  const AdminHomepage({super.key});

  @override
  State<AdminHomepage> createState() => _AdminHomepageState();
}

class _AdminHomepageState extends State<AdminHomepage> {
  @override
  late FirebaseFirestore db;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    db = FirebaseFirestore.instance;
    final user = <String, dynamic>{
      "first": "Alan",
      "middle": "Mathison",
      "last": "Turing",
      "born": 1912
    };
    db.collection("users").add(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                            SizedBox(
                              height: 240,
                              child: Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    alignment: const AlignmentDirectional(-1, 0),
                                    child: const Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 16, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 16, 0, 8),
                                              child: Text(
                                                'Dashboard',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 36,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 75, 0, 0),
                                    child: Container(
                                      height: 90,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: const Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16, 0, 0, 0),
                                            child: Text(
                                              'Below is a summary of your teams activity.',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0, 1),
                                    child: Container(
                                      width: double.infinity,
                                      height: 160,
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0, 30, 0, 0),
                                        child: ListView(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 12),
                                              child: Container(
                                                height: 120,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 4,
                                                      color: Color(0x1F000000),
                                                      offset: Offset(0, 2),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    color: Colors.white,
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 12, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 60,
                                                        height: 60,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0, 0),
                                                        child: Card(
                                                          clipBehavior: Clip
                                                              .antiAliasWithSaveLayer,
                                                          color:
                                                              const Color(0xFF23A8FF),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40),
                                                          ),
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12,
                                                                        12,
                                                                        12,
                                                                        12),
                                                            child: Icon(
                                                              Icons
                                                                  .group_outlined,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12,
                                                                    12, 12, 12),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'New Customers',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                '24',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 36,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 0, 12),
                                              child: Container(
                                                height: 120,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 4,
                                                      color: Color(0x1F000000),
                                                      offset: Offset(0, 2),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    color: Colors.white,
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 12, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 60,
                                                        height: 60,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0, 0),
                                                        child: Card(
                                                          clipBehavior: Clip
                                                              .antiAliasWithSaveLayer,
                                                          color:
                                                              const Color(0xFF23A8FF),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40),
                                                          ),
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12,
                                                                        12,
                                                                        12,
                                                                        12),
                                                            child: Icon(
                                                              Icons
                                                                  .person_search,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12,
                                                                    12, 12, 12),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'New Consultant',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                '4',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 36,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 16, 12),
                                              child: Container(
                                                height: 120,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 4,
                                                      color: Color(0x1F000000),
                                                      offset: Offset(0, 2),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    color: Colors.white,
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 12, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 60,
                                                        height: 60,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0, 0),
                                                        child: Card(
                                                          clipBehavior: Clip
                                                              .antiAliasWithSaveLayer,
                                                          color:
                                                              const Color(0xFF23A8FF),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40),
                                                          ),
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12,
                                                                        12,
                                                                        12,
                                                                        12),
                                                            child: Icon(
                                                              Icons
                                                                  .account_tree_outlined,
                                                              color:
                                                                  Colors.white,
                                                              size: 24,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12,
                                                                    12, 12, 12),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Active Consultants',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                '10',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize: 36,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 8, 0, 0),
                                  child: Text(
                                    'Edit Banner',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 20, 0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://i.pinimg.com/564x/29/0d/27/290d27e1c3a83e815b24c6813159a998.jpg',
                                              width: 351,
                                              height: 112,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 20, 0),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          alignment: const AlignmentDirectional(0, 0),
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: const Color(0xFF23A8FF),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 12),
                                              child: Icon(
                                                Icons.upload_file_rounded,
                                                color: Colors.white,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // Padding(
                            //   padding:
                            //       EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                            //   child: Text(
                            //     'Pending Tasks & User Log',
                            //     textAlign: TextAlign.start,
                            //     style: TextStyle(
                            //                       fontWeight: FontWeight.w400,
                            //                       fontSize: 12,
                            //                     ),
                            //   ),
                            // ),
                            ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {},
                                    child: Container(
                                      //here important
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x1F000000),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(12, 8, 16, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 12, 12, 12),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Unassigned Customers',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 0, 0),
                                                          child: Text(
                                                            'Below is an a summary of activity.',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 0, 0),
                                                          child: Text(
                                                            '4 New User (Submitted)',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.red),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 0, 0),
                                                          child: Text(
                                                            '20 New User (Not active)',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.red),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 60,
                                                    height: 60,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0, 0),
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: const Color(0xFF23A8FF),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      child: const Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12,
                                                                    12, 12, 12),
                                                        child: Icon(
                                                          Icons.group,
                                                          color: Colors.white,
                                                          size: 24,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                //                     Padding(
                                //                       padding: EdgeInsetsDirectional.fromSTEB(
                                //                           16, 0, 16, 0),
                                //                       child: Container(
                                //                         width: double.infinity,
                                //                         decoration: BoxDecoration(
                                //                           color: Colors.white,
                                //                           boxShadow: [
                                //                             BoxShadow(
                                //                               blurRadius: 4,
                                //                               color: Color(0x1F000000),
                                //                               offset: Offset(0, 2),
                                //                             )
                                //                           ],
                                //                           borderRadius: BorderRadius.circular(8),
                                //                           border: Border.all(
                                //                             color: Colors.white,
                                //                             width: 1,
                                //                           ),
                                //                         ),
                                //                         child: Padding(
                                //                           padding: EdgeInsetsDirectional.fromSTEB(
                                //                               0, 0, 0, 12),
                                //                           child: InkWell(
                                //                             splashColor: Colors.transparent,
                                //                             focusColor: Colors.transparent,
                                //                             hoverColor: Colors.transparent,
                                //                             highlightColor: Colors.transparent,
                                //                             onTap: () {
                                //                             },
                                //                             child: Column(
                                //                               mainAxisSize: MainAxisSize.max,
                                //                               crossAxisAlignment:
                                //                                   CrossAxisAlignment.center,
                                //                               children: [
                                //                                 Padding(
                                //                                   padding:
                                //                                       EdgeInsetsDirectional.fromSTEB(
                                //                                           12, 8, 16, 4),
                                //                                   child: Row(
                                //                                     mainAxisSize: MainAxisSize.max,
                                //                                     mainAxisAlignment:
                                //                                         MainAxisAlignment
                                //                                             .spaceBetween,
                                //                                     children: [
                                //                                       Padding(
                                //                                         padding: EdgeInsetsDirectional
                                //                                             .fromSTEB(4, 12, 12, 12),
                                //                                         child: Column(
                                //                                           mainAxisSize:
                                //                                               MainAxisSize.max,
                                //                                           mainAxisAlignment:
                                //                                               MainAxisAlignment
                                //                                                   .center,
                                //                                           crossAxisAlignment:
                                //                                               CrossAxisAlignment
                                //                                                   .start,
                                //                                           children: [
                                //                                             Text(
                                //                                               'Approve Consultant',
                                //                                               style:
                                //                                                   TextStyle(
                                //                                       fontWeight: FontWeight.w400,
                                //                                       fontSize: 12,
                                //                                       color: Colors.black
                                //                                     ),
                                //                                             ),
                                //                                             Padding(
                                //                                               padding:
                                //                                                   EdgeInsetsDirectional
                                //                                                       .fromSTEB(
                                //                                                           0, 4, 0, 0),
                                //                                               child: Text(
                                //                                                 'Below is an a summary of activity.',
                                //                                                 style: TextStyle(
                                //                                                 fontWeight: FontWeight.w400,
                                //                                                 fontSize: 12,
                                //                                               ),
                                //                                               ),
                                //                                             ),
                                //                                             Padding(
                                //                                               padding:
                                //                                                   EdgeInsetsDirectional
                                //                                                       .fromSTEB(
                                //                                                           0, 4, 0, 0),
                                //                                               child: Text(
                                //                                                 '4 Waiting Approval',
                                //                                                 style: TextStyle(
                                //                                                       fontWeight: FontWeight.w400,
                                //                                                       fontSize: 12,
                                //                                                       color:Colors.red
                                //                                                     ),
                                //                                                   ),
                                //                                             ),
                                //                                           ],
                                //                                         ),
                                //                                       ),
                                //                                       Container(
                                //                                         width: 60,
                                //                                         height: 60,
                                //                                         decoration: BoxDecoration(
                                //                                           color: Colors.white,
                                //                                           shape: BoxShape.circle,
                                //                                         ),
                                //                                         alignment:
                                //                                             AlignmentDirectional(
                                //                                                 0, 0),
                                //                                         child: Card(
                                //                                           clipBehavior: Clip
                                //                                               .antiAliasWithSaveLayer,
                                //                                           color: Colors.white,
                                //                                           shape:
                                //                                               RoundedRectangleBorder(
                                //                                             borderRadius:
                                //                                                 BorderRadius.circular(
                                //                                                     40),
                                //                                           ),
                                //                                           child: Padding(
                                //                                             padding:
                                //                                                 EdgeInsetsDirectional
                                //                                                     .fromSTEB(12, 12,
                                //                                                         12, 12),
                                //                                             child: Icon(
                                //                                               Icons.person_search,
                                //                                               color:
                                //                                                   Colors.black,
                                //                                               size: 24,
                                //                                             ),
                                //                                           ),
                                //                                         ),
                                //                                       ),
                                //                                     ],
                                //                                   ),
                                //                                 ),
                                //                               ],
                                //                             ),
                                //                           ),
                                //                         ),
                                //                       ),
                                //                     ),
                                //                     Padding(
                                //                       padding: EdgeInsetsDirectional.fromSTEB(
                                //                           16, 0, 16, 0),
                                //                       child: Container(
                                //                         width: double.infinity,
                                //                         decoration: BoxDecoration(
                                //                           color: Colors.white,
                                //                           boxShadow: [
                                //                             BoxShadow(
                                //                               blurRadius: 4,
                                //                               color: Color(0x1F000000),
                                //                               offset: Offset(0, 2),
                                //                             )
                                //                           ],
                                //                           borderRadius: BorderRadius.circular(8),
                                //                           border: Border.all(
                                //                             color: Colors.white,
                                //                             width: 1,
                                //                           ),
                                //                         ),
                                //                         child: Padding(
                                //                           padding: EdgeInsetsDirectional.fromSTEB(
                                //                               0, 0, 0, 12),
                                //                           child: InkWell(
                                //                             splashColor: Colors.transparent,
                                //                             focusColor: Colors.transparent,
                                //                             hoverColor: Colors.transparent,
                                //                             highlightColor: Colors.transparent,
                                //                             onTap: () async {
                                //                               context
                                //                                   .pushNamed('ManageRewardRequests');
                                //                             },
                                //                             child: Column(
                                //                               mainAxisSize: MainAxisSize.max,
                                //                               crossAxisAlignment:
                                //                                   CrossAxisAlignment.center,
                                //                               children: [
                                //                                 Padding(
                                //                                   padding:
                                //                                       EdgeInsetsDirectional.fromSTEB(
                                //                                           12, 8, 16, 4),
                                //                                   child: Row(
                                //                                     mainAxisSize: MainAxisSize.max,
                                //                                     mainAxisAlignment:
                                //                                         MainAxisAlignment
                                //                                             .spaceBetween,
                                //                                     children: [
                                //                                       Padding(
                                //                                         padding: EdgeInsetsDirectional
                                //                                             .fromSTEB(4, 12, 12, 12),
                                //                                         child: Column(
                                //                                           mainAxisSize:
                                //                                               MainAxisSize.max,
                                //                                           mainAxisAlignment:
                                //                                               MainAxisAlignment
                                //                                                   .center,
                                //                                           crossAxisAlignment:
                                //                                               CrossAxisAlignment
                                //                                                   .start,
                                //                                           children: [
                                //                                             Text(
                                //                                               'New Reward Requests',
                                //                                               style:
                                //                                                   TextStyle(
                                //                                       fontWeight: FontWeight.w400,
                                //                                       fontSize: 12,
                                //                                       color: Colors.black
                                //                                     ),
                                //                                             ),
                                //                                             Padding(
                                //                                               padding:
                                //                                                   EdgeInsetsDirectional
                                //                                                       .fromSTEB(
                                //                                                           0, 4, 0, 0),
                                //                                               child: Text(
                                //                                                 'Below is an a summary of activity.',
                                //                                                 style: TextStyle(
                                //                                                   fontWeight: FontWeight.w400,
                                //                                                   fontSize: 12,
                                //                                                 ),
                                //                                               ),
                                //                                             ),
                                //                                             Padding(
                                //                                               padding:
                                //                                                   EdgeInsetsDirectional
                                //                                                       .fromSTEB(
                                //                                                           0, 4, 0, 0),
                                //                                               child: Text(
                                //                                                 '15 New Requests',
                                //                                                 style: TextStyle(
                                //                                       fontWeight: FontWeight.w400,
                                //                                       fontSize: 12,
                                //                                       color: Colors.amber
                                //                                     ),
                                //                                                     ),
                                //                                               ),
                                //                                             ),
                                //                                           ],
                                //                                         ),
                                //                                       ),
                                //                                       Container(
                                //                                         width: 60,
                                //                                         height: 60,
                                //                                         decoration: BoxDecoration(
                                //                                           color: Colors.white,
                                //                                           shape: BoxShape.circle,
                                //                                         ),
                                //                                         alignment:
                                //                                             AlignmentDirectional(
                                //                                                 0, 0),
                                //                                         child: Card(
                                //                                           clipBehavior: Clip
                                //                                               .antiAliasWithSaveLayer,
                                //                                           color: FlutterFlowTheme.of(
                                //                                                   context)
                                //                                               .lineColor,
                                //                                           shape:
                                //                                               RoundedRectangleBorder(
                                //                                             borderRadius:
                                //                                                 BorderRadius.circular(
                                //                                                     40),
                                //                                           ),
                                //                                           child: Padding(
                                //                                             padding:
                                //                                                 EdgeInsetsDirectional
                                //                                                     .fromSTEB(12, 12,
                                //                                                         12, 12),
                                //                                             child: Icon(
                                //                                               Icons.star,
                                //                                               color:
                                //                                                   Colors.black,
                                //                                               size: 24,
                                //                                             ),
                                //                                           ),
                                //                                         ),
                                //                                       ),
                                //                                     ],
                                //                                   ),
                                //                                 ),
                                //             ]),

                                //       ]),
                                //                         ),
                                //                       ),
                                // ]),
                                //                     Padding(
                                //                       padding: EdgeInsetsDirectional.fromSTEB(
                                //                           16, 0, 16, 0),
                                //                       child: Container(
                                //                         width: double.infinity,
                                //                         decoration: BoxDecoration(
                                //                           color: Colors.white,
                                //                           boxShadow: [
                                //                             BoxShadow(
                                //                               blurRadius: 4,
                                //                               color: Color(0x1F000000),
                                //                               offset: Offset(0, 2),
                                //                             )
                                //                           ],
                                //                           borderRadius: BorderRadius.circular(8),
                                //                           border: Border.all(
                                //                             color: Colors.white,
                                //                             width: 1,
                                //                           ),
                                //                         ),
                                //                         child: Padding(
                                //                           padding: EdgeInsetsDirectional.fromSTEB(
                                //                               0, 0, 0, 12),
                                //                           child: InkWell(
                                //                             splashColor: Colors.transparent,
                                //                             focusColor: Colors.transparent,
                                //                             hoverColor: Colors.transparent,
                                //                             highlightColor: Colors.transparent,
                                //                             onTap: () async {
                                //                               context
                                //                                   .pushNamed('ManageRewardRequests');
                                //                             },
                                //                             child: Column(
                                //                               mainAxisSize: MainAxisSize.max,
                                //                               crossAxisAlignment:
                                //                                   CrossAxisAlignment.center,
                                //                               children: [
                                //                                 Padding(
                                //                                   padding:
                                //                                       EdgeInsetsDirectional.fromSTEB(
                                //                                           12, 8, 16, 4),
                                //                                   child: Row(
                                //                                     mainAxisSize: MainAxisSize.max,
                                //                                     mainAxisAlignment:
                                //                                         MainAxisAlignment
                                //                                             .spaceBetween,
                                //                                     children: [
                                //                                       Padding(
                                //                                         padding: EdgeInsetsDirectional
                                //                                             .fromSTEB(4, 12, 12, 12),
                                //                                         child: Column(
                                //                                           mainAxisSize:
                                //                                               MainAxisSize.max,
                                //                                           mainAxisAlignment:
                                //                                               MainAxisAlignment
                                //                                                   .center,
                                //                                           crossAxisAlignment:
                                //                                               CrossAxisAlignment
                                //                                                   .start,
                                //                                           children: [
                                //                                             Text(
                                //                                               'Review User Logs',
                                //                                               style:
                                //                                                   TextStyle(
                                //                                       fontWeight: FontWeight.w400,
                                //                                       fontSize: 12,
                                //                                       color: Colors.black
                                //                                     ),
                                //                                             ),
                                //                                             Padding(
                                //                                               padding:
                                //                                                   EdgeInsetsDirectional
                                //                                                       .fromSTEB(
                                //                                                           0, 4, 0, 0),
                                //                                               child: Text(
                                //                                                 'To view user logs , tap here',
                                //                                                   style: TextStyle(
                                //                                         fontWeight: FontWeight.w400,
                                //                                         fontSize: 12,
                                //                                       ),
                                //                                               ),
                                //                                             ),
                                //                                             Padding(
                                //                                               padding:
                                //                                                   EdgeInsetsDirectional
                                //                                                       .fromSTEB(
                                //                                                           0, 4, 0, 0),
                                //                                               child: Text(
                                //                                                 'Found no suspicious activities',
                                //                                                 style: FlutterFlowTheme
                                //                                                         .of(context)
                                //                                                     .bodySmall
                                //                                                     .override(
                                //                                                       fontFamily:
                                //                                                           'Readex Pro',
                                //                                                       color: Color(
                                //                                                           0xFF81DD96),
                                //                                                     ),
                                //                                               ),
                                //                                             ),
                                //                                           ],
                                //                                         ),
                                //                                       ),
                                //                                       Container(
                                //                                         width: 60,
                                //                                         height: 60,
                                //                                         decoration: BoxDecoration(
                                //                                           color: Colors.white,
                                //                                           shape: BoxShape.circle,
                                //                                         ),
                                //                                         alignment:
                                //                                             AlignmentDirectional(
                                //                                                 0, 0),
                                //                                         child: Card(
                                //                                           clipBehavior: Clip
                                //                                               .antiAliasWithSaveLayer,
                                //                                           color: FlutterFlowTheme.of(
                                //                                                   context)
                                //                                               .lineColor,
                                //                                           shape:
                                //                                               RoundedRectangleBorder(
                                //                                             borderRadius:
                                //                                                 BorderRadius.circular(
                                //                                                     40),
                                //                                           ),
                                //                                           child: Padding(
                                //                                             padding:
                                //                                                 EdgeInsetsDirectional
                                //                                                     .fromSTEB(12, 12,
                                //                                                         12, 12),
                                //                                             child: Icon(
                                //                                               Icons.receipt_long,
                                //                                               color:
                                //                                                   Colors.black,
                                //                                               size: 24,
                                //                                             ),
                                // ),
                                // ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ]),
    );
  }
}
