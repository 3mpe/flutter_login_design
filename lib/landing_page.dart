import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleImageWidget(
                  profilePhote: "https://picsum.photos/200",
                  width: 150.0,
                  height: 150.0,
                ),
                Column(
                  children: [
                    SizedBox(height: 12),
                    Text(
                      "All People One Place",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Find your all friends in one place by \nsignin the apps easily.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleImageWidget(
                                profilePhote: "https://picsum.photos/200/300",
                                width: 50,
                                height: 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleImageWidget(
                                profilePhote: "https://picsum.photos/200/301",
                                width: 50,
                                height: 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleImageWidget(
                                profilePhote: "https://picsum.photos/200/302",
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "More then 5m people using us",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LinearButton(
                      text: "Sync Contract List",
                      colors: [
                        Colors.green,
                        Colors.green.withOpacity(.7),
                        Colors.green.withOpacity(.6),
                        Colors.green.withOpacity(.5),
                      ],
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    LinearButton(
                      text: "Add from Facebook",
                      colors: [
                        Colors.grey,
                        Colors.grey.withOpacity(.7),
                        Colors.grey.withOpacity(.6),
                        Colors.grey.withOpacity(.5),
                      ],
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}

class LinearButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final List<Color> colors;

  const LinearButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    @required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: RaisedButton(
        onPressed: this.onPressed,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CircleImageWidget extends StatelessWidget {
  const CircleImageWidget({
    Key key,
    @required this.profilePhote,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final String profilePhote;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: new NetworkImage(profilePhote),
        ),
      ),
    );
  }
}
