import 'package:flutter/material.dart';

class Horizontallist extends StatefulWidget {
  @override
  _HorizontallistState createState() => _HorizontallistState();
}

class _HorizontallistState extends State<Horizontallist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Populardeals(imgUrl: 'https://picsum.photos/200', title: 'image1'),
          Populardeals(imgUrl: 'https://picsum.photos/200', title: 'image1'),
          Populardeals(imgUrl: 'https://picsum.photos/200', title: 'image1'),
          Populardeals(imgUrl: 'https://picsum.photos/200', title: 'image1'),
          Populardeals(
              imgUrl:
                  'https://images.unsplash.com/photo-1495615080073-6b89c9839ce0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
              title: 'image1')
        ],
      ),
    );
  }
}

class Populardeals extends StatelessWidget {
  final String imgUrl;
  final String title;

  Populardeals({this.imgUrl, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Image.network(
            imgUrl,
            fit: BoxFit.fill,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(title),
          ),
        ),
      ),
    );
  }
}
