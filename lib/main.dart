import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: LineBetweenContainers(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool _showHotlineText = false;

//   @override
//   void initState() {
//     super.initState();
//     Timer.periodic(Duration(seconds: 3), (timer) {
//       setState(() {
//         _showHotlineText = !_showHotlineText;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My App'),
//       ),
//       body: Stack(
//         children: [
//           Container(
//               // Nội dung của màn hình
//               ),
//           Positioned(
//             top: 20.0,
//             left: 20.0,
//             child: AnimatedPositioned(
//               duration: Duration(seconds: 2),
//               top: _showHotlineText ? 50.0 : -30.0,
//               child: Text(
//                 'Hotline',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(Icons.message),
//       ),
//       floatingActionButtonLocation: CustomFloatingActionButtonLocation(),
//     );
//   }
// }

// class CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
//   final double bottomMargin;
//   final double rightMargin;

//   CustomFloatingActionButtonLocation(
//       {this.bottomMargin = 20.0, this.rightMargin = 20.0});

//   @override
//   Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
//     // Tính toán vị trí của nút dựa trên kích thước của Scaffold và margin
//     final double fabX = scaffoldGeometry.scaffoldSize.width + rightMargin;
//     final double fabY = scaffoldGeometry.scaffoldSize.height -
//         scaffoldGeometry.floatingActionButtonSize.height -
//         bottomMargin;

//     // Trả về vị trí của nút
//     return Offset(fabX, fabY);
//   }

//   @override
//   String toString() => 'FloatingActionButtonLocation.custom';
// }

class LineBetweenContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            SizedBox(width: 20),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            SizedBox(width: 20),
            VerticalDivider(
              color: Colors.red,
              thickness: 2,
              width: 20,
              indent: 0,
              endIndent: 0,
            ),
          ],
        ),
      ),
    );
  }
}
//2
//3
//4
//5