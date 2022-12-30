// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:random_words/fluttercrashpakistan/models/product_model.dart';
import 'package:random_words/fluttercrashpakistan/navigation_detail_example.dart';

enum ProductTypeEnum { Downloadable, Deliverable }

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  _NavigationExampleState() {
    _dropDownSelectedValue = _productSizeList[0];
  }

  final _productController = TextEditingController();
  final _productDescriptionController = TextEditingController();
  final bool _topProduct = false;

  ProductTypeEnum? _productTypeRadioButton;
  final _productSizeList = ['Small', 'Medium', 'Large', 'Xlarge'];
  String? _dropDownSelectedValue = '';

  final _formKey = GlobalKey<FormState>();
  ProductDetails productDetails = ProductDetails();

  /* void _updateText(value) {
    setState(() {
      _productName = value;
    });
  }
 */
  /* void _updateText() {
    setState(() {
      _productName = _productController.text;
    });
  } */

  /* @override
  void initState() {
    super.initState();
    _productController.addListener(_updateText);
  } */

  /* @override
  void dispose() {
    _productController.dispose();
    _productDescriptionController.dispose();
    super.dispose();
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text(
              'Product',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const Text('Add product details in the form below'),
            const SizedBox(
              height: 20.0,
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      /* onChanged: (value) {
                _updateText(value);
              }, */
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else {
                          null;
                        }
                      },
                      controller: _productController,
                      decoration: InputDecoration(
                          labelText: 'Product Name',
                          prefixIcon: Icon(
                            Icons.propane_outlined,
                            color: Colors.deepPurple.shade300,
                          ),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepPurple.shade300)),
                          labelStyle: TextStyle(color: Colors.deepPurple)),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      /* onChanged: (value) {
                _updateText(value);
              }, */
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else {
                          null;
                        }
                      },
                      controller: _productDescriptionController,
                      decoration: InputDecoration(
                          labelText: 'Product Description',
                          prefixIcon: Icon(
                            Icons.description_outlined,
                            color: Colors.deepPurple.shade300,
                          ),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepPurple.shade300)),
                          labelStyle: TextStyle(color: Colors.deepPurple)),
                    ),
                    //Text('Product Name is $_productName'),
                    // Text('Product Name is ${_productController.text}')
                    SizedBox(
                      height: 20,
                    ),
                    MyCheckBox(listTileCheckBox: _topProduct),

                    /* Radio(
                value: ProductTypeEnum.Deliverable,
                groupValue: _productTypeEnum,
                onChanged: (value) {
                  setState(() {
                    _productTypeEnum = value;
                  });
                }), */
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                              contentPadding: EdgeInsets.all(0.0),
                              tileColor: Colors.deepPurple.shade50,
                              value: ProductTypeEnum.Deliverable,
                              groupValue: _productTypeRadioButton,
                              dense: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              title: Text(ProductTypeEnum.Deliverable.name),
                              onChanged: (value) {
                                setState(() {
                                  _productTypeRadioButton = value;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: RadioListTile(
                              contentPadding: EdgeInsets.all(0.0),
                              value: ProductTypeEnum.Downloadable,
                              tileColor: Colors.deepPurple.shade50,
                              dense: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              groupValue: _productTypeRadioButton,
                              title: Text(ProductTypeEnum.Downloadable.name),
                              onChanged: (value) {
                                setState(() {
                                  _productTypeRadioButton = value;
                                });
                              }),
                        ),
                      ],
                    ),

                    /* DropdownButton(
                value: _selectedVal,
                items: _productSizeList
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedVal = value;
                  });
                }), */
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                        icon: const Icon(
                          Icons.arrow_drop_down_circle,
                          color: Colors.deepPurple,
                        ),
                        dropdownColor: Colors.deepPurple.shade50,
                        decoration: InputDecoration(
                          labelText: 'Product Sizes',
                          prefixIcon: Icon(
                            Icons.accessibility_new_rounded,
                            color: Colors.deepPurple,
                          ),
                          border: UnderlineInputBorder(),
                          //border: OutlineInputBorder(),
                        ),
                        value: _dropDownSelectedValue,
                        items: _productSizeList
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _dropDownSelectedValue = value;
                          });
                        }),

                    SizedBox(
                      height: 20,
                    ),
                    myBtn(
                        context: context,productDetails: productDetails)
                  ],
                )),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(
      {required BuildContext context, productDetails}) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: Size(200, 50)),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          productDetails.productName = _productController.text;
          productDetails.productDetails = _productDescriptionController.text;
          productDetails.isTopProduct = _topProduct;
          productDetails.productType = _productTypeRadioButton!;
          productDetails.productSize = _dropDownSelectedValue!;

           Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NavigationDetailExample(
           productDetails: productDetails,
          );
        }));

          /* ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Processing Data'))); */
        }
      },
      child: Text(
        'Submit Form',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class MyCheckBox extends StatefulWidget {
  MyCheckBox({Key? key, required this.listTileCheckBox}) : super(key: key);
  bool?
      listTileCheckBox; //To access this variable we use widget. in state class below
  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Align(
      //Use Align so that our Container does not get all width as it happens in ListView
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.deepPurple.shade50,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.deepPurple,
              tristate: true,
              value: widget.listTileCheckBox,
              onChanged: (val) {
                setState(() => widget.listTileCheckBox = val);
              },
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Text("Top Product"),
            ),
          ],
        ),
      ),
    );
  }
}
