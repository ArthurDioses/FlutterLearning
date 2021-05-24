import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {
  final int maxValue;

  const RatingWidget({Key key, this.maxValue}) : super(key: key);

  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int get maxvalue => widget.maxValue;

  int currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: List.generate(
          maxvalue,
          (index) => InkWell(
            onTap: () {
              _onTap(index);
            },
            child: _buildStart(index > currentValue),
          ),
        ),
      ),
    );
  }

  void _onTap(int value) {
    setState(() {
      currentValue = value;
    });
  }

  Widget _buildStart(bool checked) {
    return Icon(
      checked ? Icons.star_border : Icons.star,
      color: Colors.red,
    );
  }
}

class RatingWidget2 extends StatefulWidget {
  @override
  _RatingWidget2State createState() => _RatingWidget2State();
}

class _RatingWidget2State extends State<RatingWidget2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.green,
          ),
          Icon(
            Icons.star,
            color: Colors.green,
          ),
          Icon(
            Icons.star,
            color: Colors.green,
          ),
          Icon(
            Icons.star,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
