import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomerReport extends StatelessWidget {
  const CustomerReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Change to the desired background color
      appBar: AppBar(
        backgroundColor:
            Colors.white, // Change to the desired app bar background color
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional.center,
          child: Text(
            'Report',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: 383,
                  height: 493,
                  decoration: BoxDecoration(
                    color: Colors.grey[
                        300], // Change to the desired container background color
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, -1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://www.slideteam.net/media/catalog/product/cache/1280x720/o/n/one_page_policy_sample_fact_sheet_presentation_report_infographic_ppt_pdf_document_slide01.jpg',
                        width: 336,
                        height: 474,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      // Do something when the "Back to Home" button is pressed
                    },
                    child: Text('Back to Home'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF1C4494),
                      onPrimary: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () async {
                      var confirmDialogResponse = await showDialog<bool>(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Download report as PDF?'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(
                                        alertDialogContext, false),
                                    child: Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext, true),
                                    child: Text('Confirm'),
                                  ),
                                ],
                              );
                            },
                          ) ??
                          false;
                      // Do something with the dialog response if needed
                    },
                    child: Text('Download PDF'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF1C4494),
                      onPrimary: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
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
