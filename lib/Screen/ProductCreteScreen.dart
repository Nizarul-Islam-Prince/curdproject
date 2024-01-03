import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {
  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreen();
}

class _ProductCreateScreen extends State<ProductCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Product'),
      ),
      body: Stack(
        children: [
          Container(
            child: (SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(children: [
                TextFormField(onChanged: (value) {}),
                TextFormField(onChanged: (value) {}),
                TextFormField(onChanged: (value) {}),
                TextFormField(onChanged: (value) {}),
                TextFormField(onChanged: (value) {})
              ]),
            )),
          )
        ],
      ),
    );
  }
}
