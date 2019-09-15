import 'package:duty_free_allowance/Allowance.dart';
import 'package:duty_free_allowance/OurApps.dart';
import 'package:duty_free_allowance/home.dart';
import 'package:duty_free_allowance/items.dart';
import 'package:duty_free_allowance/moreapps.dart';
import 'package:duty_free_allowance/ourAppsWeb.dart';
import 'package:duty_free_allowance/routing_constant.dart';
import 'package:flutter/material.dart';


Route<dynamic> generateRoute(RouteSettings settings)
{
  switch (settings.name){
    case AllowanceViewRoute:
      return MaterialPageRoute(builder: (context) => Allowance());
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => LoginScreen3());
    case OurwebViewRoute:
      return MaterialPageRoute(builder: (context) => OurAppsWeb());
    case AppViewRoute:
      return MaterialPageRoute(builder: (context) => MoreApps());
    case ItemRoute:
      return MaterialPageRoute(builder: (context) => Items());
    default:
      return MaterialPageRoute(builder: (context) => LoginScreen3());
  }

}