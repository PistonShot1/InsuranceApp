import 'package:flutter/material.dart';

class CustomerDetail extends StatefulWidget {
  const CustomerDetail({super.key});

  @override
  State<CustomerDetail> createState() => _CustomerDetailState();
}

class _CustomerDetailState extends State<CustomerDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 240,
                child: Stack(
                  alignment: const AlignmentDirectional(-0.95, -0.7),
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Image.network(
                        'https://static1.colliderimages.com/wordpress/wp-content/uploads/2023/03/kieran-culkin-succession-season-4-featured.jpg',
                        width: 600,
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1, -1),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                        child: ElevatedButton(
                          onPressed: () async {
                            Navigator.pushNamed(context, 'null');
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12, 12, 12, 12), backgroundColor: Theme.of(context).primaryColorDark,
                            minimumSize: const Size(0, 0),
                            textStyle: const TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                            ),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: Theme.of(context).colorScheme.background,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 16, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Customer Name',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Text(
                            'Roman Roy',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )]),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 12, 0, 0),
                    child: Container(
                      width: 120,
                      height: 32,
                      decoration: BoxDecoration(
                        color: const Color(0x4D91D0E8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: const Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Icon(
                              Icons.stars_rounded,
                              color: Colors
                                  .black, // Change the color to black
                              size: 24, // Change the size to 24
                            ),
                          ),
                          Text(
                            'Active',
                            style: TextStyle(
                              color: Colors
                                  .black, // Change the color to black
                              fontSize: 14, // Change the font size to 14
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 12,
                thickness: 2,
                color: Color(0xFFF1F4F8),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Text(
                        'Personal Details',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(10, 0, 5, 0),
                                  child: Text(
                                    'Full name :  Roman Roy\n\nAddress : No.123, Taman Silikon,      \n                 Serdang, \n                 Malaysia\n\nPhone No. : 012-3456789',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.edit_outlined,
                                color: Color(
                                    0xFF4B39EF), // Change the color to #4B39EF
                                size: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                child: Text(
                                  'Assigned Consultant',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Outfit',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 300,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .white, // Change the color to white
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius:
                                          BorderRadius.circular(8),
                                    ),
                                    child: const Align(
                                      alignment:
                                          AlignmentDirectional(-1, 0),
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            10, 0, 5, 0),
                                        child: Text(
                                          'Consultant Details :\n\nName : Mr Ali\n\nAgent  no : xxxxxxx\n\nContact number : +60123456711',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                child: Text(
                                  'Policies',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Outfit',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 300,
                                              height: 130,
                                              decoration: BoxDecoration(
                                                color: Colors
                                                    .white, // Change the color to white
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                    color:
                                                        Color(0x1F000000),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: Colors
                                                      .white, // Change the color to white
                                                  width: 1,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        12, 12, 12, 12),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(0, 10,
                                                              0, 0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const Text(
                                                            'Policy No',
                                                            style:
                                                                TextStyle(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize:
                                                                  12,
                                                            ),
                                                          ),
                                                          const Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    8),
                                                            child: Text(
                                                              '221105643',
                                                              style:
                                                                  TextStyle(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize:
                                                                    18,
                                                              ),
                                                            ),
                                                          ),
                                                          const Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child:
                                                                Padding(
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      0,
                                                                      5,
                                                                      0,
                                                                      0),
                                                              child:
                                                                  Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Due Date',
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          12,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.fromLTRB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child:
                                                                        Text(
                                                                      '31 Dec, 2023',
                                                                      style:
                                                                          TextStyle(
                                                                        fontFamily: 'Outfit',
                                                                        fontSize: 18,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          const Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                            child:
                                                                Padding(
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      25,
                                                                      10,
                                                                      25,
                                                                      0),
                                                              child:
                                                                  Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Policy Type',
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          12,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.fromLTRB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        8),
                                                                    child:
                                                                        Text(
                                                                      'Basic',
                                                                      style:
                                                                          TextStyle(
                                                                        fontFamily: 'Outfit',
                                                                        color: Color(0xFFEE8B60), // #EE8B60
                                                                        fontSize: 18,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment: AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          0,
                                                                          10,
                                                                          25,
                                                                          0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize: MainAxisSize.max,
                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Policy Status',
                                                                            style: TextStyle(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 12,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                                                            child: Text(
                                                                              'Active',
                                                                              style: TextStyle(
                                                                                fontFamily: 'Outfit',
                                                                                color: Color(0xFF39D2C0), // #39D2C0
                                                                                fontSize: 18,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 300,
                                                            height: 130,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors
                                                                  .white,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4,
                                                                  color: Color(
                                                                      0x1F000000),
                                                                  offset: Offset(
                                                                      0,
                                                                      2),
                                                                ),
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      10),
                                                              shape: BoxShape
                                                                  .rectangle,
                                                              border:
                                                                  Border
                                                                      .all(
                                                                color: Colors
                                                                    .white,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child:
                                                                const Padding(
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      12,
                                                                      12,
                                                                      12,
                                                                      12),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(
                                                                        0,
                                                                        10,
                                                                        0,
                                                                        0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize.max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment.start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment.start,
                                                                      children: [
                                                                        Text(
                                                                          'Policy No',
                                                                          style: TextStyle(
                                                                            fontFamily: 'Readex Pro',
                                                                            fontSize: 12,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                                                          child: Text(
                                                                            '221105643',
                                                                            style: TextStyle(
                                                                              fontFamily: 'Outfit',
                                                                              fontSize: 18,
                                                                            ),
                                                                          ),
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
                                                                                    fontFamily: 'Readex Pro',
                                                                                    fontSize: 12,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                                                                  child: Text(
                                                                                    '31 Dec, 2023',
                                                                                    style: TextStyle(
                                                                                      fontFamily: 'Outfit',
                                                                                      fontSize: 18,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment: AlignmentDirectional(
                                                                        0,
                                                                        0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          25,
                                                                          10,
                                                                          25,
                                                                          0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize: MainAxisSize.max,
                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Policy Type',
                                                                            style: TextStyle(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 12,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                                                            child: Text(
                                                                              'Basic',
                                                                              style: TextStyle(
                                                                                fontFamily: 'Outfit',
                                                                                color: Color(0xFFEE8B60),
                                                                                fontSize: 18,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment: AlignmentDirectional(0, 0),
                                                                            child: Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 25, 0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Policy Status',
                                                                                    style: TextStyle(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      fontSize: 12,
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                                                                    child: Text(
                                                                                      'Active',
                                                                                      style: TextStyle(
                                                                                        fontFamily: 'Outfit',
                                                                                        color: Color(0xFF39D2C0),
                                                                                        fontSize: 18,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
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
                                            ),
                                          ],
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
                  ],
                ),
              ),
            
        ]));
  }
}
