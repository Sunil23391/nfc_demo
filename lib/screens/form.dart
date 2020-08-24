import 'package:flutter/material.dart';
import 'nfc_demo.dart';

class BasicForm extends StatefulWidget {
  @override
  _BasicFormState createState() => _BasicFormState();
}

class _BasicFormState extends State<BasicForm> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController currentController = TextEditingController();
  TextEditingController capacityController = TextEditingController();
  TextEditingController modeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            //autovalidate: autoValidate,
            child: SingleChildScrollView(
                child: Center(
                    child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10.0),
                              child: new TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.black)),
                                    hintText: 'Current',
                                    labelText: 'Current',
                                    labelStyle: TextStyle(color: Colors.black),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.black,
                                    ))),
                                // autovalidate: _validateCapacity,
                                keyboardType: TextInputType.number,
                                controller: currentController,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10.0),
                              child: new TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.black)),
                                    hintText: 'Capacity',
                                    labelText: 'Capacity',
                                    labelStyle: TextStyle(color: Colors.black),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.black,
                                    ))),
                                // autovalidate: _validateCapacity,
                                keyboardType: TextInputType.number,
                                controller: capacityController,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10.0),
                              child: new TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.black)),
                                    hintText: 'Mode',
                                    labelText: 'Mode',
                                    labelStyle: TextStyle(color: Colors.black),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.black,
                                    ))),
                                // autovalidate: _validateCapacity,
                                keyboardType: TextInputType.number,
                                controller: modeController,
                              ),
                            ),
                            RaisedButton(
                              color: Colors.blue,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Nfcdemo()));
                              },
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(0.0),
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff143b61),
                                      fontFamily: 'ScanPro',
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                          ],
                        ))))));
  }
}
