import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    Widget _pageIcon() {
      return Center(
        child: Container(
          height: 85.0,
          width: 85.0,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(13.0)),
          child: Icon(
            Icons.home,
            size: 55.0,
            color: Colors.white,
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: _height,
            width: _width,
            color: Colors.grey,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                'assets/bgImages/getStartedPage.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 120.0,
              ),
              //green box with icon
              _pageIcon(),
              SizedBox(
                height: 25.0,
              ),
              //app title
              Text(
                'Roome',
                style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Ariel'),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Best hotel deals for your holiday.',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[600],
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                width: _width * 0.85,
                height: 55.0,
                child: RaisedButton(
                  elevation: 0.5,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'Already have an account? Log In',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 85.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
