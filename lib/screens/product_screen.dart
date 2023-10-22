import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(onPressed:  () {}, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
    );
  }

}