import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hii'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),  // Adds space below the nav bar for the floating effect
        child: Container(
          height: 80.0,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),  // Margin on sides
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 4),  // Adjusted to give floating shadow effect
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Profile Icon with Text
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/user.png'),
                    onPressed: () {},
                  ),
                  Text('Profile', style: TextStyle(fontSize: 12.0)),
                ],
              ),
              // Central Icon (enlarged, without text)
              Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Image.asset('assets/images/Logo.png'),
                  iconSize: 150.0,  // Adjust size for emphasis
                  onPressed: () {},
                ),
              ),
              // Orders Icon with Text
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/dinnerplate.png'),
                    onPressed: () {},
                  ),
                  Text('Orders', style: TextStyle(fontSize: 12.0)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: CustomNavBar()));
