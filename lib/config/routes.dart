import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/screens/home/home.dart';
import 'package:ultimate_invoicer/screens/invoices/add_invoice.dart';
import 'package:ultimate_invoicer/screens/invoices/invoice.dart';
import 'package:ultimate_invoicer/screens/invoices/invoice_view.dart';
import 'package:ultimate_invoicer/screens/page_vieew.dart';
import 'package:ultimate_invoicer/screens/parties/parties.dart';
import 'package:ultimate_invoicer/screens/products/products.dart';
import 'package:ultimate_invoicer/screens/registration/login.dart';
import 'package:ultimate_invoicer/screens/registration/sign_up.dart';
import 'package:ultimate_invoicer/screens/registration/splash_screen.dart';
import 'package:ultimate_invoicer/screens/settings/settings.dart';

class Routes{
  static const String splashScreen = 'splashScreen';
  static const String signupScreen = 'signupScreen';
  static const String loginScreen = 'loginScreen';
  static const String pageView = 'pageView';
  static const String home = 'home';
  static const String invoice = 'invoice';
  static const String parties = 'parties';
  static const String products = 'products';
  static const String setting = 'setting';
  static const String addInvoice = 'addInvoice';
  static const String invoiceView = 'invoiceView';

  MaterialPageRoute<dynamic> buildRoute(RouteSettings settings){
    switch(settings.name){
      case splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case signupScreen:
        return MaterialPageRoute(builder: (context) => const SignupScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case pageView:
        return MaterialPageRoute(builder: (context) => const PageVieew());
      case home:
        return MaterialPageRoute(builder: (context) => const Home());
      case invoice:
        return MaterialPageRoute(builder: (context) => const Invoice());
      case parties:
        return MaterialPageRoute(builder: (context) => const Parties());
      case products:
        return MaterialPageRoute(builder: (context) => const Products());
      case setting:
        return MaterialPageRoute(builder: (context) => const Settings());
      case addInvoice:
        return MaterialPageRoute(builder: (context) => const AddInvoice());
      case invoiceView:
        return MaterialPageRoute(builder: (context) => const InvoiceView());    
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}