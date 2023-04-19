// import 'package:flutter/material.dart';
// import 'package:giftify/helpers/app_theme.dart';
// import 'package:giftify/helpers/app_theme.dart';
// // import 'package:shoe_ar/repositories/user_repository.dart' as userRepo;

// class TestPage extends StatefulWidget {
//   final GlobalKey<ScaffoldState> parentScaffoldKey;
//   const TestPage({Key? key, required this.parentScaffoldKey}) : super(key: key);

//   @override
//   _TestPageState createState() => _TestPageState();
// }

// class _TestPageState extends StateMVC<TestPage> {
//   // HomeController _con;

//   _TestPageState() : super() {
//     // _con = controller;
//   }

//   final _multiSelectKey = GlobalKey<FormFieldState>();
//   @override
//   void initState() {
//     // TODO: implement initState
//     // userRepo.getCurrentUser();
//     print("==init end===");
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           child: ListView(
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         height: 150.0,
//                         width: double.infinity,
                      
//                       ),
                
//                     ],
//                   ),
//                 ],
//               ),
//               Container(
//                   height: MediaQuery.of(context).size.height,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(20.0),
//                           topRight: Radius.circular(20.0))),
//                   padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(height: 20.0),
//                       Container(
//                         height: 60.0,
//                         child: GestureDetector(
//                           onTap: () {
//                             print("==Clicked Booking==");
//                             print("==Clicked init start===");
//                             // Navigator.of(context).pushNamed('/Confirm-Booking',
//                             //     arguments: RouteArgument(
//                             //         id: _con.bookingModel.id.toString(),
//                             //         heroTag: _con.bookingModel.services[0].name
//                             //             .toString(),
//                             //         param: _con.bookingModel));
//                           },
//                           child: Material(
//                             borderRadius: BorderRadius.circular(10.0),
//                             shadowColor: Colors.cyanAccent,
//                             color: Colors.cyan,
//                             elevation: 7.0,
//                             child: Center(
//                               child: Text(
//                                 'Book an Appointment',
//                                 style: AppTheme.display1.copyWith(fontSize: 18),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20.0),
//                     ],
//                   )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
