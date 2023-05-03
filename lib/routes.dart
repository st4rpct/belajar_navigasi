import 'package:belajar_navigasi/detailscreen.dart';
import 'package:belajar_navigasi/fifthscreen.dart';
import 'package:belajar_navigasi/fourthscreen.dart';
import 'package:belajar_navigasi/sliderightroute.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    var uri = Uri.parse(settings.name!);

    if(uri.pathSegments.length == 2 && uri.pathSegments.first=="detail"){
      var id = uri.pathSegments[1];
      return MaterialPageRoute(builder: (_) => DetailScreen(id: id));
    }

    switch (settings.name) {
      case '/fourth':
        //return MaterialPageRoute(builder: (_) => FourthScreen());
        return SlideRightRoute(widget: FourthScreen());
      case '/fifth':
        if(args is String){
          return MaterialPageRoute(builder: (_) => FifthScreen(data: args));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error Page")),
      );
    });
  }  
}

