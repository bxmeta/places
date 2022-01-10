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
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              color: Color.fromRGBO(37, 40, 73, 1),
              fontSize: 32,
              height: 1.1,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                children: [
                  TextSpan(
                      text: 'С',
                      style: TextStyle(
                          color: Color.fromRGBO(76, 175, 80, 1),
                      ),
                  ),
                  TextSpan(text: 'писок',),
                ],
              ),
              TextSpan(
                children: [
                  TextSpan(
                      text: '\nи',
                      style: TextStyle(
                        color: Color.fromRGBO(252, 221, 61, 1),
                      ),
                  ),
                  TextSpan(text: 'нтересных дел',),
                ],
              ),
            ],
          ),
          textAlign: TextAlign.left,
          maxLines: 2,          
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
