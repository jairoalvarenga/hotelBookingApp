import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import all the pages for navigation
import './pages/getStarted.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
          child: MaterialApp(
        title: 'Hotel Booking App',
        debugShowCheckedModeBanner: false,
        
        theme: ThemeData(
          primaryColor: Color(0xff56D2C1),
          brightness: Brightness.light,
        ),
        routes: {
          '/': (BuildContext context) => GetStartedPage(),
          '/onboard': (BuildContext context) => GetStartedPage(),
        },
      ),
    );
  }
}
