import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Page()));
  }
}

class Page extends StatefulWidget {
  PageState createState() => PageState();
}

class PageState extends State<Page> {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Docker-Kubernetes App')),
        body: Column(
          children: <Widget>[
            Center(
              child: PageView(
                controller: controller,
                onPageChanged: (page) => {print(page.toString())},
                pageSnapping: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                      color: Colors.blueGrey,
                      child: Center(
                          child: Text(
                        'hii..\n Before using this App you need to give Admin powers of your Machine to the App so that you can do all your work easy.',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ))),
                  Container(
                      color: Colors.blueGrey,
                      child: Center(
                          child: Text(
                        'Here are the steps you need to follow: \n 1.Run "vim /etc/sudoers" and just below root commands add apache ALL=(ALL) NOPASSWD: ALL',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ))),
                  Container(
                      color: Colors.blueGrey,
                      child: Center(
                          child: Text(
                        '2.Now we need to disable SELinux by running the command "setenforce 0" \n If you get permissive as ouput when you run getenforce commmand then only we can say that your SELinux is disabled',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ))),
                ],
              ),
            ),
          ],
        ));
  }
}
