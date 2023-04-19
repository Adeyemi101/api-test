// part of 'element.dart';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_screenutil/flutter_screenutil.dart';



class CircularLoadingWidget extends StatefulWidget {
  final double? height;
  final String? message;

  const CircularLoadingWidget({Key? key, this.height, this.message="Loading Please wait..."}) : super(key: key);

  @override
  _CircularLoadingWidgetState createState() => _CircularLoadingWidgetState();
}

class _CircularLoadingWidgetState extends State<CircularLoadingWidget>
    with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController ?animationController;

  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(milliseconds: 90000), vsync: this);
    CurvedAnimation curve =
        CurvedAnimation(parent: animationController!, curve: Curves.easeOut);
    animation = Tween<double>(begin: widget.height, end: 0).animate(curve)
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
    
    Timer(Duration(milliseconds: 300), () {
      if (mounted) {
        animationController!.forward();
        animationController!.addListener(() {
          setState(() {
            if (animationController!.status == AnimationStatus.completed) {
              animationController!.repeat();
            }
          });
        });
      }
    });
  }

  @override
  void dispose() {
//    Timer(Duration(seconds: 30), () {
//      //if (mounted) {
//      //}
//    });
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: animation!.value / 100 > 1.0 ? 1.0 : animation!.value / 100,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CircularProgressIndicator(),
             AnimatedBuilder(
              animation: animation!,
              child: Image.asset('assets/images/Dice.png',
                width: 40.w,
                height: 20.h,
                fit: BoxFit.contain),
              builder: (BuildContext context, Widget? _widget) {
                return  Transform.rotate(
                  angle: animation!.value,
                  child: _widget
                  );
              }
              ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              widget.message!,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
            )
          ],
        )),
      ),
    );
  }
}
