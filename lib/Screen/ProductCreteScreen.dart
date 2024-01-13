import 'package:curd_project/Style/style.dart';
import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {
  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreen();
}

class _ProductCreateScreen extends State<ProductCreateScreen> {
  Map<String, String> FormValues = {
    "Img": "",
    "ProductCode": "",
    "ProductName": "",
    "Qty": "",
    "TotalPrice": "",
    "UnitPrice": ""
  };

  Inputonchange(MapKey, Textvalue) {
    setState(() {
      FormValues.update(MapKey, (value) => Textvalue);
    });
  }

  FormOnSubmit() {
    if (FormValues['Img']!.length == 0) {
      ErrorToast("Image Link Required");
    } else if (FormValues['ProductCode']!.length == 0) {
      ErrorToast("Product Code Required");
    } else if (FormValues['ProductName']!.length == 0) {
      ErrorToast("Product Name Required");
    } else if (FormValues['Qty']!.length == 0) {
      ErrorToast("Quenty Required");
    } else if (FormValues['TotalPrice']!.length == 0) {
      ErrorToast("Total Price Required");
    } else if (FormValues['UnitPrice']!.length == 0) {
      ErrorToast("Unit Price Required");
    } else {
      //Data Rest Api POSt
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Product'),
      ),
      body: Stack(
        children: [
          //Background Graphics
          ScreenBackground(context),
          Container(
            child: (SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(children: [
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (Textvalue) {
                    Inputonchange("ProductName", Textvalue);
                  },
                  decoration: AppInputDecoration('Product Name'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (Textvalue) {
                    Inputonchange("ProductCode", Textvalue);
                  },
                  decoration: AppInputDecoration('Product Code'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (Textvalue) {
                    Inputonchange("Img", Textvalue);
                  },
                  decoration: AppInputDecoration('Product Image'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (Textvalue) {
                    Inputonchange("UnitPrice", Textvalue);
                  },
                  decoration: AppInputDecoration('Unit Price'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (Textvalue) {
                    Inputonchange("TotalPrice", Textvalue);
                  },
                  decoration: AppInputDecoration('Total Price'),
                ),
                SizedBox(height: 20),
                AppDropdownStyle(
                  DropdownButton(
                    value: FormValues['Qty'],
                    items: [
                      DropdownMenuItem(
                        child: Text('Select Qt'),
                        value: "",
                      ),
                      DropdownMenuItem(
                        child: Text('1 pcs'),
                        value: "1 pcs",
                      ),
                      DropdownMenuItem(
                        child: Text('2 pcs'),
                        value: '2 Pcs',
                      ),
                      DropdownMenuItem(
                        child: Text('3 pcs'),
                        value: '3 pcs',
                      ),
                      DropdownMenuItem(
                        child: Text('4 pcs'),
                        value: '4 pcs',
                      ),
                    ],
                    onChanged: (Textvalue) {
                      Inputonchange("Qty", Textvalue);
                    },
                    underline: Container(),
                    isExpanded: true,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: ElevatedButton(
                      style: AppButtonstyle(),
                      onPressed: () {
                        FormOnSubmit();
                      },
                      child: SuccessButtonChild('Submit')),
                ),
              ]),
            )),
          )
        ],
      ),
    );
  }
}
