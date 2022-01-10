import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 140,
        title: const Text(
            'Список \nинтересных мест',
            textAlign: TextAlign.left,
            maxLines: 2,
            style: TextStyle(
              color: Color.fromRGBO(37, 40, 73, 1),
              fontSize: 32,
              height: 1.1,
              fontWeight: FontWeight.bold,
            ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const Center(
          child: Text('Hello!'),
      ),
      backgroundColor: Colors.white,
    );
  }
}
