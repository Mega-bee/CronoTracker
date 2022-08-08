import 'package:cronotracker/abstracts/states/state.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingState extends States {
  @override
  Widget getUI(BuildContext context) {
    return Center(
        child: LoadingAnimationWidget.flickr(
            rightDotColor: Colors.white, leftDotColor: Color(0xFF0A0652), size: 50));
    // child: LoadingAnimationWidget.hexagonDots(
    //    color:Colors.black, size: 120)
    // );
  }

  @override
  Widget getAlert(BuildContext context) {
    // TODO: implement getAlert
    throw UnimplementedError();
  }
}
