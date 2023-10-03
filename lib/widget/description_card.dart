import 'package:flutter/material.dart';

class DescriptionCard extends StatelessWidget {
  final String title;
  final String? desc;
  final String? image_dir;
  final double? image_size;

  const DescriptionCard(
      {super.key,
      required this.title,
      this.desc,
      this.image_dir,
      this.image_size});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(width / 80),
      child: Container(
        width: width / 3,
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: width / 100),
                child: Text(title,
                    style: TextStyle(
                      fontSize: width / 70,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              desc == null
                  ? Container()
                  : Text(
                      desc!,
                      style: TextStyle(
                        fontSize: width / 90,
                        height: 1.5,
                      ),
                    ),
              image_dir != null
                  ? Image.asset(
                      image_dir!,
                      height: height / 10,
                      width: image_size != null ? image_size : null,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
