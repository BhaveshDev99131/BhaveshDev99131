import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _modalBottomSheetMenu(){
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        builder: (builder){
          return Container(
            height:  MediaQuery.of(context).size.height/2.2,
            color: Colors.transparent,
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.only(
                        topLeft:  Radius.circular(20.0),
                        topRight:  Radius.circular(20.0)
                    )
                ),
                child:  const Center(
                  child:  Text("This is a modal sheet"),
                )
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:Center(
            child: GestureDetector(
              onTap:(){
                _modalBottomSheetMenu();
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text("Open bottomsheet",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
              ),
            ),
          ),
        ),
    );
  }
}
