// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/material.dart';
// // import 'package:fluttertoast/fluttertoast.dart';
// import 'package:global_configs/global_configs.dart';
// import 'package:giftify/elements/circular_loading.dart';

// import 'labels.dart';




// class Helper {
//   BuildContext? context;
//   DateTime? currentBackPressTime;

//   Helper.of(BuildContext _context) {
//     this.context = _context;
//   }
//   // for mapping data retrieved form json array
//   static getData(Map<String, dynamic> data) {
//     return data['data'] ?? [];
//   }

//   // static Uri getUri(String path) {
//     // String _path =
//         // Uri.parse(GlobalConfigs().getString('api_base_url')).path;
//     // if (!_path.endsWith('/')) {
//       // _path += '/';
//     }
//     // Uri uri = Uri(
//         // scheme:
//             // Uri.parse(GlobalConfiguration().getString('api_base_url')).scheme,
//         // host: Uri.parse(GlobalConfiguration().getString('api_base_url')).host,
//         // port: Uri.parse(GlobalConfiguration().getString('api_base_url')).port,
//         // path: _path + path);
//     // return uri;
//   // }

//   // static String formatDate(dateString) {
//   //   return DateFormat.yMMMd().format(DateTime.parse(dateString));
//   // }

//   // static String formatTime(dateString) {
//   //   return DateFormat.Hms().format(DateTime.parse(dateString));
//   // }

//   static bool hasUpperCase(String value) {
//     if (value == null) {
//       return false;
//     }
//     if (value.isEmpty) {
//       return false;
//     }
//     if (value.trimLeft().isEmpty) {
//       return false;
//     }
//     String firstLetter = value.trimLeft().substring(0, 1);
//     if (double.tryParse(firstLetter) != null) {
//       return false;
//     }
//     return firstLetter.toUpperCase() == value.substring(0, 1);
//   }

//   static Uri getApiUri(String path) {
//     String _path =
//         Uri.parse(GlobalConfiguration().getString('api_base_url')).path;
//     if (!_path.endsWith('/')) {
//       _path += '/';
//     }
//     Uri uri = Uri(
//         scheme:
//             Uri.parse(GlobalConfiguration().getString('api_base_url')).scheme,
//         host: Uri.parse(GlobalConfiguration().getString('api_base_url')).host,
//         port: Uri.parse(GlobalConfiguration().getString('api_base_url')).port,
//         path: _path + path);
//     return uri;
//   }

//   // Future<bool> onWillPop() {
//   //   DateTime now = DateTime.now();
//   //   if (currentBackPressTime == null ||
//   //       now.difference(currentBackPressTime) > Duration(seconds: 2)) {
//   //     currentBackPressTime = now;
//   //     Fluttertoast.showToast(msg: "Tap Again to Leave");
//   //     return Future.value(false);
//   //   }
//   //   SystemChannels.platform.invokeMethod('SystemNavigator.pop');
//   //   return Future.value(true);
//   // }

//   static OverlayEntry overlayLoader(
//       {context, String? message, double opacity = 0.9}) {
//     OverlayEntry loader = OverlayEntry(builder: (context) {
//       final size = MediaQuery.of(context).size;
//       return Positioned(
//         height: size.height,
//         width: size.width,
//         top: 0,
//         left: 0,
//         child: Material(
//           color: Theme.of(context).primaryColor.withOpacity(opacity),
//           child: CircularLoadingWidget(
//             height: 200,
//             message: message!,
//           ),
//         ),
//       );
//     });
//     return loader;
//   }

//   static hideLoader(OverlayEntry loader) {
//     Timer(const Duration(milliseconds: 500), () {
//       try {
//         loader.remove();
//       } catch (e) {}
//     });
//   }

//   static showErrorDialog(BuildContext context, String title, String subtitle) {
//     // flutter defined function
//     showDialog(
//       barrierDismissible: false,
//       context: context,
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(5.0)), //this right here
//           child: Container(
//             height: 350.0,
//             width: MediaQuery.of(context).size.width,
//             color: const Color(0xFF3E4348),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   const Icon(
//                     Icons.error,
//                     color: Color(0xFFE09237),
//                     size: 90,
//                   ),
//                   const SizedBox(height: 15),
//                   Text(
//                     title,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 17.0,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 15),
//                   Text(
//                     subtitle,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 13.0,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 20),
             
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   static showSuccessDialog(
//       BuildContext context, String title, String subtitle) {
//     // flutter defined function
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(5.0)), //this right here
//           child: Container(
//             height: 350.0,
//             color: const Color(0xFF3E4348),
//             width: MediaQuery.of(context).size.width,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   const Icon(
//                     Icons.check_box,
//                     color: Colors.green,
//                     size: 90,
//                   ),
//                   const SizedBox(height: 15),
//                   Text(
//                     title,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 17.0,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     subtitle,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 13.0,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 20),
           
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }




//   static int daysBetween(DateTime from, DateTime to) {
//     return to.difference(from).inDays;
//   }

//   static int hoursBetween(DateTime from, DateTime to) {
//     return to.difference(from).inHours;
//   }

//   static int minutesBetween(DateTime from, DateTime to) {
//     return to.difference(from).inMinutes;
//   }

//   static int secondsBetween(DateTime from, DateTime to) {
//     return to.difference(from).inSeconds;
//   }

//   static String errorHandler(e) {
//     if (e is SocketException) {
//       return "Please Check your Internet Connection";
//     } else if (e is TimeoutException) {
//       return "Timeout error";
//     } else if (e is NoSuchMethodError) {
//       return e.stackTrace.toString();
//     } else if (e is RangeError) {
//       return "Range Error";
//     } else {
//       print(e);
//       return Labels.errorMessage;
//     }
//   }





// }
