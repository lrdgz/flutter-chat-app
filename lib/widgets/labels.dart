import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String route;
  final String routeLabel;
  final String label;

  const Labels({
    Key key,
    @required this.route,
    @required this.routeLabel,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.label,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            child: Text(
              this.routeLabel,
              style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.route);
            },
          ),
        ],
      ),
    );
  }
}
