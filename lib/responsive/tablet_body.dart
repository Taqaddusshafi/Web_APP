import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_website/widget/on_hover.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyTabletBody extends StatefulWidget {
  const MyTabletBody({super.key});

  @override
  State<MyTabletBody> createState() => _MyTabletBodyState();
}

class _MyTabletBodyState extends State<MyTabletBody> {
  final ScrollController _controller = ScrollController();
  final FocusNode _focusNode = FocusNode();
  final Uri prt = Uri.parse('https://github.com/Taqaddusshafi/Web_APP');
  final Uri git = Uri.parse('https://github.com/Taqaddusshafi'); //git
  final Uri link =
      Uri.parse('https://www.linkedin.com/in/taqaddus-shafi-36b2701b5');
  final Uri _insta = Uri.parse('https://www.instagram.com/taqaddusshafi/');
  final Uri _fb = Uri.parse('https://www.facebook.com/taqaddus.shafi.3/');
  final Uri _twitter = Uri.parse('https://twitter.com/TaqaddusShafi');
  final Uri _inc =
      Uri.parse('https://github.com/Taqaddusshafi/income_tax_clone');
  final Uri _jk = Uri.parse('https://github.com/Taqaddusshafi/Jk-_Browser');
  final Uri _pro = Uri.parse('https://github.com/Taqaddusshafi/profile_app');
  final Uri _usg = Uri.parse('https://github.com/Taqaddusshafi/userstatsapp');
  final Uri _fit =
      Uri.parse('https://github.com/Taqaddusshafi/fitness_comiunity_app');
  Future<void> _port() async {
    if (!await launchUrl(prt, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $prt');
    }
  }

  Future<void> _fitness() async {
    if (!await launchUrl(_fit, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_fit');
    }
  }

  Future<void> _usage() async {
    if (!await launchUrl(_usg, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_usg');
    }
  }

  Future<void> _profile() async {
    if (!await launchUrl(_pro, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_pro');
    }
  }

  Future<void> _income() async {
    if (!await launchUrl(_inc, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_inc');
    }
  }

  Future<void> _jkb() async {
    if (!await launchUrl(_jk, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_jk');
    }
  }

  Future<void> _git() async {
    if (!await launchUrl(git, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $git');
    }
  }

  Future<void> _fcb() async {
    if (!await launchUrl(_fb, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_fb');
    }
  }

  Future<void> _inst() async {
    if (!await launchUrl(_insta, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_insta');
    }
  }

  Future<void> twiter() async {
    if (!await launchUrl(_twitter, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_twitter');
    }
  }

  Future<void> _link() async {
    if (!await launchUrl(link, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $link');
    }
  }

  Future<void> _launchMailClient() async {
    const mailUrl = 'mailto:taqaddusshafi9086@gmail.com';
    try {
      await launchUrlString(mailUrl);
    } catch (e) {
      await Clipboard.setData(
          ClipboardData(text: 'taqaddusshafi9086@gmail.com'));
    }
  }

  void _handleKeyEvent(event) {
    var offset = _controller.offset;
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      setState(() {
        if (kReleaseMode) {
          _controller.animateTo(offset - 200,
              duration: Duration(milliseconds: 30),
              curve: Curves.easeInToLinear);
        } else {
          _controller.animateTo(offset - 200,
              duration: Duration(milliseconds: 30),
              curve: Curves.easeInToLinear);
        }
      });
    } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
      setState(() {
        if (kReleaseMode) {
          _controller.animateTo(offset + 200,
              duration: Duration(milliseconds: 30),
              curve: Curves.easeInToLinear);
        } else {
          _controller.animateTo(offset + 200,
              duration: Duration(milliseconds: 30),
              curve: Curves.easeInToLinear);
        }
      });
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  int _counter = 0;
  final itemkey = GlobalKey();

  Future scrolltoitem() async {
    final Context = itemkey.currentContext;
    await Scrollable.ensureVisible(Context!, duration: Duration(seconds: 1));
  }

  final itemkey1 = GlobalKey();

  Future scrolltoitem1() async {
    final Context = itemkey1.currentContext;
    await Scrollable.ensureVisible(Context!, duration: Duration(seconds: 1));
  }

  final itemkey2 = GlobalKey();

  Future scrolltoitem2() async {
    final Context = itemkey2.currentContext;
    await Scrollable.ensureVisible(Context!, duration: Duration(seconds: 1));
  }

  final itemkey3 = GlobalKey();

  Future scrolltoitem3() async {
    final Context = itemkey.currentContext;
    await Scrollable.ensureVisible(Context!, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RawKeyboardListener(
            focusNode: _focusNode,
            autofocus: true,
            onKey: _handleKeyEvent,
            child: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: SingleChildScrollView(
                  controller: _controller,
                  child: SafeArea(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          /* Container(
                margin: EdgeInsets.all(30),
                child: Text(
                  'Taqaddus Shafi',
                  style: TextStyle(
                      fontSize: 20,
                      foreground: Paint()
                        ..shader = ui.Gradient.linear(
                          const Offset(0, 20),
                          const Offset(150, 20),
                          <Color>[
                            Color.fromRGBO(90, 245, 208, 10),
                            Color.fromRGBO(237, 101, 74, 0.965),
                          ],
                        )),
                ),
              ), */
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: ElevatedButton(
                                    child: Text("About"),
                                    onPressed: () => scrolltoitem(),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromRGBO(10, 25, 47, 11),
                                        onPrimary: Color.fromRGBO(90, 245, 208,
                                            10), //background color of button
                                        side: BorderSide(
                                            width: 3,
                                            color: Color.fromRGBO(90, 245, 208,
                                                10)), //border width and color
                                        elevation: 3, //elevation of button
                                        shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        padding: EdgeInsets.all(20)),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: ElevatedButton(
                                    child: Text("Projects"),
                                    onPressed: () => scrolltoitem1(),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromRGBO(10, 25, 47, 11),
                                        onPrimary: Color.fromRGBO(90, 245, 208,
                                            10), //background color of button
                                        side: BorderSide(
                                            width: 3,
                                            color: Color.fromRGBO(90, 245, 208,
                                                10)), //border width and color
                                        elevation: 3, //elevation of button
                                        shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        padding: EdgeInsets.all(20)),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: ElevatedButton(
                                    child: Text("Contact"),
                                    onPressed: () {
                                      scrolltoitem2();
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromRGBO(10, 25, 47, 11),
                                        onPrimary: Color.fromRGBO(90, 245, 208,
                                            10), //background color of button
                                        side: BorderSide(
                                            width: 3,
                                            color: Color.fromRGBO(90, 245, 208,
                                                10)), //border width and color
                                        elevation: 3, //elevation of button
                                        shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        padding: EdgeInsets.all(20)),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: ElevatedButton(
                                    child: Text("Resume"),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromRGBO(10, 25, 47, 11),
                                        onPrimary: Color.fromRGBO(220, 132, 38,
                                            0.965), //background color of button
                                        side: BorderSide(
                                            width: 3,
                                            color: Color.fromRGBO(220, 132, 38,
                                                0.965)), //border width and color
                                        elevation: 3, //elevation of button
                                        shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        padding: EdgeInsets.all(20)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 100, 0, 0),
                            child: Text(
                              "HI,",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 80),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: RichText(
                                  text: TextSpan(
                                      text: 'I am ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 70,
                                      ),
                                      children: [
                                    TextSpan(
                                        text: 'Taqaddus Shafi ',
                                        style: TextStyle(
                                            fontSize: 70,
                                            foreground: Paint()
                                              ..shader = ui.Gradient.linear(
                                                const Offset(0, 20),
                                                const Offset(150, 20),
                                                <Color>[
                                                  Color.fromRGBO(
                                                      86, 230, 196, 0.965),
                                                  Color.fromRGBO(
                                                      220, 132, 38, 0.965)
                                                ],
                                              )))
                                  ]))),
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: Text(
                              "I love to change imaginations into reality,",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 76, 117, 239),
                                  fontSize: 40),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            width: 700,
                            child: Text(
                              "An aspiring mobile application developer with the ability to develop awesome apps and solve real world problems.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                  child: RichText(
                                      text: TextSpan(
                                          text:
                                              'I am always open for discussions @',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                          children: [
                                        WidgetSpan(
                                          child: InkWell(
                                            onTap: () {
                                              _link();
                                            },
                                            hoverColor: Colors.orange,
                                            child: Text(
                                              "Linkedin",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      90, 245, 208, 10),
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                      ]))),
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            margin: EdgeInsets.only(left: 50, top: 70),
                            child: ElevatedButton(
                              child: Text("Hire Me!"),
                              onPressed: () {
                                _launchMailClient();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(10, 25, 47, 11),
                                  onPrimary: Color.fromRGBO(90, 245, 208,
                                      10), //background color of button
                                  side: BorderSide(
                                      width: 3,
                                      color: Color.fromRGBO(90, 245, 208,
                                          10)), //border width and color
                                  elevation: 3, //elevation of button
                                  shape: RoundedRectangleBorder(
                                      //to set border radius to button
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.all(20)),
                            ),
                          ),
                          SizedBox(
                            height: 200,
                          ),
                          Container(
                            key: itemkey,
                            margin: EdgeInsets.fromLTRB(50, 100, 0, 0),
                            child: Text(
                              "About Me,",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 50),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            width: 700,
                            child: Text(
                              "Hello! Interestingly, I have been a student of Science in my high school and got introduced to programming via online before admitting at Lovely Professional University. My interest in coding started back in 2019 one year prior of getting admission into Btech CSE . Since then, I started learning programming languages & solving problems based on data structure and algorithms. Most importantly I'm a Problem Solver.Today, I'm currently pursuing my Bachelors in Computer Science and Engineering (2020-2024) with 7.74 CGPA.Also I've knowledge of Android App Development and created some projects on that using Kotlin, XML, Dart, Android Studio, Flutter and Firebase.Here is a list of the technologies that I've worked with:",
                              maxLines: 20,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 126, 179, 244),
                                  fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 30, 0, 0),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "C|C++",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "DSA",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "OOPS",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "HTML",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 30, 0, 0),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "CSS",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "JAVASCRIPT",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "ANGULAR",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "SQL",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 30, 0, 0),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "KOTLIN",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "XML",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "JAVA",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Color.fromRGBO(90, 245, 208, 10),
                                        width: 2,
                                        style: BorderStyle.solid),
                                    color: Color.fromRGBO(10, 25, 47, 11),
                                  ),
                                  child: Text(
                                    "FLUTTER/DART",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            key: itemkey1,
                            margin: EdgeInsets.fromLTRB(50, 200, 0, 0),
                            child: Text(
                              "Some Things I've Built,",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 50),
                            ),
                          ),
                          Column(children: [
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MyWidget(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color.fromRGBO(
                                                  90, 245, 208, 10),
                                              width: 2,
                                              style: BorderStyle.solid),
                                          color: Color.fromRGBO(10, 25, 47, 11),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                      'assets/images/git.png'),
                                                  iconSize: 60,
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    _jkb();
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Mutlipage Browser APP",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Designed an app in andriod studio based on webview which can open 4 tabs widow option which alow user to browse 4 pages at a same time and also browser do not also track the history of user ",
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Java and XML",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    MyWidget(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color.fromRGBO(
                                                  220, 132, 38, 0.965),
                                              width: 2,
                                              style: BorderStyle.solid),
                                          color: Color.fromRGBO(10, 25, 47, 11),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                      'assets/images/git.png'),
                                                  iconSize: 60,
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    _profile();
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Profie App",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  " Developed a resume app where i showcase my education,projects,skills and achivements.Used the bascis concepts of flutter and dartto implement things like navbar,ulr launcher,and responsive",
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Dart",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MyWidget(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color.fromRGBO(
                                                  90, 245, 208, 10),
                                              width: 2,
                                              style: BorderStyle.solid),
                                          color: Color.fromRGBO(10, 25, 47, 11),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                      'assets/images/git.png'),
                                                  iconSize: 60,
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    _usage();
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "UsageStats App",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Developed an app  which tracks the usage time of apps.For implementation used the UsageStatsManager library provided by andriod and along with this used calander instance to deal with usage time ",
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Kotlin and XML",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    MyWidget(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color.fromRGBO(
                                                  220, 132, 38, 0.965),
                                              width: 2,
                                              style: BorderStyle.solid),
                                          color: Color.fromRGBO(10, 25, 47, 11),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                      'assets/images/git.png'),
                                                  iconSize: 60,
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    _fitness();
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Fitness Comunity App",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Developed an app which was based on fitness comunity it was a group project where my main part to design and develop login,signup and about page and implement the firebase instance for login and signup validation   ",
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Dart",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MyWidget(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color.fromRGBO(
                                                  90, 245, 208, 10),
                                              width: 2,
                                              style: BorderStyle.solid),
                                          color: Color.fromRGBO(10, 25, 47, 11),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                      'assets/images/git.png'),
                                                  iconSize: 60,
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    _income();
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Cloned First Page (IncomeTax Website)",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "I cloned the First page of Incometax India website using Html css, Designed and Implemented navbar,contact form and marquee effects with the help of html.And used css for desigin the impressive UI  ",
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "HTML and CSS",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    MyWidget(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color.fromRGBO(
                                                  220, 132, 38, 0.965),
                                              width: 2,
                                              style: BorderStyle.solid),
                                          color: Color.fromRGBO(10, 25, 47, 11),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: IconButton(
                                                  icon: Image.asset(
                                                      'assets/images/git.png'),
                                                  iconSize: 60,
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    _port();
                                                  },
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Responsive Portfolio Webapp",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Developed a responsive  portfolio  webapp in flutter with lot of features like animation effects,hover effects,flutter keyboard focus system, responsive for all  devices and beautifull UI design with the help of dart ",
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(20),
                                                child: Text(
                                                  "Flutter and Dart",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ]),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 50),
                                child: InkWell(
                                    onTap: () {
                                      _git();
                                    },
                                    hoverColor: Colors.orange,
                                    child: Text(
                                      "To Check All My Works Click Here",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(90, 245, 208, 10),
                                          fontSize: 20),
                                    ))),
                            Container(
                                key: itemkey2,
                                margin: EdgeInsets.only(top: 180),
                                child: Text(
                                  "What's Next?",
                                  style: TextStyle(
                                      color: Color.fromRGBO(90, 245, 208, 10),
                                      fontSize: 30),
                                )),
                            Container(
                                margin: EdgeInsets.only(top: 30),
                                child: Text(
                                  "Get In Touch",
                                  style: TextStyle(
                                      color:
                                          Color.fromRGBO(241, 243, 243, 0.965),
                                      fontSize: 50),
                                )),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              margin: EdgeInsets.all(20),
                              child: Text(
                                " My inbox is always open. Whether you have a question or just want to say hello, I'll try my best to get back to you! Feel free to mail me about any relevant job updates. ",
                                maxLines: 10,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: ElevatedButton(
                                child: Text("Mail me"),
                                onPressed: () => _launchMailClient(),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(10, 25, 47, 11),
                                    onPrimary: Color.fromRGBO(90, 245, 208,
                                        10), //background color of button
                                    side: BorderSide(
                                        width: 3,
                                        color: Color.fromRGBO(90, 245, 208,
                                            10)), //border width and color
                                    elevation: 3, //elevation of button
                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: EdgeInsets.all(20)),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 80),
                                child: Text(
                                  "You Can Also Contact Here",
                                  style: TextStyle(
                                      color: Color.fromRGBO(90, 245, 208, 10),
                                      fontSize: 30),
                                )),
                            Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                alignment: Alignment.topCenter,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        child: IconButton(
                                          icon: Image.asset(
                                              'assets/images/facebook.png'),
                                          iconSize: 40,
                                          color: Colors.white,
                                          onPressed: () {
                                            _fcb();
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: IconButton(
                                          icon: Image.asset(
                                              'assets/images/instagram.png'),
                                          iconSize: 40,
                                          color: Colors.white,
                                          onPressed: () {
                                            _inst();
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: IconButton(
                                          icon: Image.asset(
                                              'assets/images/twitter.png'),
                                          iconSize: 40,
                                          color: Colors.white,
                                          onPressed: () {
                                            twiter();
                                          },
                                        ),
                                      ),
                                    ])),
                            Container(
                                margin: EdgeInsets.only(top: 50, bottom: 50),
                                child: RichText(
                                    text: TextSpan(
                                        text: 'Made With Love By ',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                90, 245, 208, 10),
                                            fontSize: 10),
                                        children: [
                                      TextSpan(
                                          text: 'Taqaddus Shafi ',
                                          style: TextStyle(
                                              fontSize: 10,
                                              foreground: Paint()
                                                ..shader = ui.Gradient.linear(
                                                  const Offset(0, 20),
                                                  const Offset(150, 20),
                                                  <Color>[
                                                    Color.fromRGBO(
                                                        86, 230, 196, 0.965),
                                                    Color.fromRGBO(
                                                        220, 132, 38, 0.965)
                                                  ],
                                                ))),
                                    ]))),
                          ]),
                        ]),
                  ),
                ))));
  }
}
