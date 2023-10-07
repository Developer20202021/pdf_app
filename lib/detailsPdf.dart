import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return  Center(


      child: TextButton(onPressed: makePdf, child: Text("click")),



    );
  }
}





class PdfPreviewPage extends StatelessWidget {
 
  const PdfPreviewPage({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (context) => makePdf(),
      ),
    );
  }
}














Future<Uint8List> makePdf() async {


final pdf = pw.Document();

pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Column(children: [


             pw.SizedBox(
                      height: 100,
                      
                
              ),






                  pw.Row(
                    
                     mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [



                          pw.Column(
                              children: [
                                pw.Text("Customer Name:Mahadi Hasan", style: const pw.TextStyle(fontSize: 13)),
                                    pw.SizedBox(
                                            height: 5,
                                           
                                    ),
                                pw.Text("Customer NID:3255252", style: const pw.TextStyle(fontSize: 13)),

                                  pw.SizedBox(
                                            height: 5,
                                           
                                    ),
                                pw.Text("Customer File No:45", style: const pw.TextStyle(fontSize: 13)),

                                  pw.SizedBox(
                                            height: 5,
                                           
                                    ),
                                pw.Text("Customer Phone No:01721315550", style: const pw.TextStyle(fontSize: 13)),
                                  pw.SizedBox(
                                            height: 5,
                                           
                                    ),
                                
                                pw.Text("Customer Address:01721315550", style: const pw.TextStyle(fontSize: 13)),
                                  pw.SizedBox(
                                            height: 5,
                                           
                                    ),


                                 
                                
                              ],
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                            ),









                             pw.Column(
                              children: [
                             


                                  pw.Text("Model:Tvs Apache Rtr 4v", style: const pw.TextStyle(fontSize: 13)),
                                  pw.SizedBox(
                                            height: 5,
                                           
                                    ),

                                  pw.Text("Made In:___________", style: const pw.TextStyle(fontSize: 13)),
                                  pw.SizedBox(
                                            height: 5,
                                           
                                    ),

                                  pw.Text("Eng No:2525425", style: const pw.TextStyle(fontSize: 13)),
                                  pw.SizedBox(
                                            height: 5,
                                           
                                    ),

                                  pw.Text("Chassis No:2525425", style: const pw.TextStyle(fontSize: 13)),
                                  pw.SizedBox(
                                            height: 5,
                                           
                                    ),
                                  
                                  pw.Text("Color:black", style: const pw.TextStyle(fontSize: 13)),
                                  pw.SizedBox(
                                            height: 5,
                                           
                                    ),

                               
                                pw.Text("Date:01/10/2023", style: const pw.TextStyle(fontSize: 13)),
                                
                              ],
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                            ),


                    
                        
                        
                        
                        ]
                  
                  
                  ),


              
              
             pw.SizedBox(
                      height: 5,
                      
                
              ),





            

                pw.Table(
                      border: pw.TableBorder.all(color: PdfColors.black),
                      children: [


                      // The first row just contains a phrase 'INVOICE FOR PAYMENT'
                        pw.TableRow(
                          children: [
                            pw.Padding(
                              child: pw.Text(
                                'MONEY RECEIPT',
                                style: pw.Theme.of(context).header4,
                                textAlign: pw.TextAlign.center,
                              ),
                              padding: pw.EdgeInsets.all(20),
                            ),
                          ],
                        ),


                      pw.TableRow(
                          children: [
                            pw.Padding(
                              child: pw.Text(
                                'Bike Price',
                                style: pw.Theme.of(context).header4,
                                textAlign: pw.TextAlign.center,
                              ),
                              padding: pw.EdgeInsets.all(20),
                            ),


                              pw.Padding(
                              child: pw.Text(
                                '1000 tk',
                                style: pw.Theme.of(context).header4,
                                textAlign: pw.TextAlign.center,
                              ),
                              padding: pw.EdgeInsets.all(20),
                            ),

                          ],
                        ),



                      pw.TableRow(
                          children: [
                            pw.Padding(
                              child: pw.Text(
                                'Cash In Amount',
                                style: pw.Theme.of(context).header4,
                                textAlign: pw.TextAlign.center,
                              ),
                              padding: pw.EdgeInsets.all(20),
                            ),


                              pw.Padding(
                              child: pw.Text(
                                '1000 tk',
                                style: pw.Theme.of(context).header4,
                                textAlign: pw.TextAlign.center,
                              ),
                              padding: pw.EdgeInsets.all(20),
                            ),




                          ],
                        ),



                        pw.TableRow(
                          children: [
                            pw.Padding(
                              child: pw.Text(
                                'Due Amount',
                                style: pw.Theme.of(context).header4,
                                textAlign: pw.TextAlign.center,
                              ),
                              padding: pw.EdgeInsets.all(20),
                            ),


                              pw.Padding(
                              child: pw.Text(
                                '1000 tk',
                                style: pw.Theme.of(context).header4,
                                textAlign: pw.TextAlign.center,
                              ),
                              padding: pw.EdgeInsets.all(20),
                            ),




                          ],
                        ),



                      


                         pw.TableRow(
                          children: [
                            pw.Padding(
                              child: pw.Text(
                                'Condition',
                                style: pw.Theme.of(context).header4,
                                textAlign: pw.TextAlign.center,
                              ),
                              padding: pw.EdgeInsets.all(20),
                            ),


                              pw.Padding(
                              child: pw.Text(
                                '7 month',
                                style: pw.Theme.of(context).header4,
                                textAlign: pw.TextAlign.center,
                              ),
                              padding: pw.EdgeInsets.all(20),
                            ),




                          ],
                        ),













          ]),




              pw.SizedBox(
                      height: 100,
                      
                
              ),



            pw.Row(

              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              
              
              
              children: [

                  pw.Column(children: [

                    pw.Text("___________________________"),

                    pw.Text("Customer Signature"),


                  ])



              ]),







        ])); // Center
      }));


return pdf.save();
}