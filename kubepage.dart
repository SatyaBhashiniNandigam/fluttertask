import 'package:flutter/material.dart';

String deploy_name;
String pod_name;
String file_name;
String svc_name;
String nodes_name;

class kubernetes extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Container(
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue1 = 'deployment';
  String dropdownValue1deployment = 'run';
  String dropdownValue1pods = 'create';
  String dropdownValue1svc = 'create';
  String dropdownValue1nodes = 'edit';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DropdownButton<String>(
          value: dropdownValue1,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue1 = newValue;
            });
          },
          items: <String>[
            'deployment',
            'pods',
            'svc',
            'nodes',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        if (dropdownValue1 == 'deployment')
          DropdownButton<String>(
            value: dropdownValue1deployment,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue1deployment = newValue;
              });
            },
            items: <String>[
              'get',
              'describe',
              'edit',
              'delete',
              'expose',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        if (dropdownValue1deployment == 'get')
          /*TextField(
            onChanged: (a) {
              deploy_name = a;
            },
            decoration: InputDecoration(hintText: "Name of deployment"),
            autocorrect: true
          ),*/
          if (dropdownValue1deployment == 'edit')
            TextField(
              onChanged: (a) {
                deploy_name = a;
              },
              decoration: InputDecoration(hintText: "name of the deployment"),
              autocorrect: true,
            ),
        if (dropdownValue1deployment == 'delete')
          TextField(
            onChanged: (a) {
              deploy_name = a;
            },
            decoration:
                InputDecoration(hintText: "Name of the deployment to delete"),
            autocorrect: true,
          ),
        if (dropdownValue1deployment == 'expose')
          TextField(
            onChanged: (a) {
              deploy_name = a;
            },
            decoration:
                InputDecoration(hintText: "Name of the deployment to expose"),
            autocorrect: true,
          ),
        if (dropdownValue1 == 'pods')
          DropdownButton<String>(
            value: dropdownValue1pods,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue1pods = newValue;
              });
            },
            items: <String>[
              'create',
              'get',
              'edit',
              'delete',
              'run',
              'expose',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        if (dropdownValue1pods == 'create')
          TextField(
            onChanged: (c) {
              file_name = c;
            },
            decoration:
                InputDecoration(hintText: "Name of the file to create pod"),
            autocorrect: true,
          ),
        if (dropdownValue1pods == 'get')
          /*TextField(
            onChanged: (c) {
              file_name = c;
            },
            decoration: InputDecoration(hintText: "Name of the pod"),
            autocorrect: true,
          ),*/
          if (dropdownValue1pods == 'edit')
            TextField(
              onChanged: (d) {
                pod_name = d;
              },
              decoration: InputDecoration(hintText: "Name of the pod to edit"),
              autocorrect: true,
            ),
        if (dropdownValue1pods == 'run')
          TextField(
            onChanged: (c) {
              file_name = c;
            },
            decoration: InputDecoration(hintText: "Name of the pod to run"),
            autocorrect: true,
          ),
        if (dropdownValue1pods == 'expose')
          TextField(
            onChanged: (c) {
              pod_name = c;
            },
            decoration: InputDecoration(hintText: "Name of the pod to expose"),
            autocorrect: true,
          ),
        if (dropdownValue1 == 'svc')
          DropdownButton<String>(
            value: dropdownValue1svc,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue1svc = newValue;
              });
            },
            items: <String>['edit', 'delete', 'get', 'describe']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        if (dropdownValue1svc == 'edit')
          TextField(
            onChanged: (d) {
              svc_name = d;
            },
            decoration: InputDecoration(hintText: "Name of the svc to edit"),
            autocorrect: true,
          ),
        if (dropdownValue1svc == 'delete')
          TextField(
            onChanged: (d) {
              svc_name = d;
            },
            decoration: InputDecoration(hintText: "Name of the svc to delete"),
            autocorrect: true,
          ),
        if (dropdownValue1 == 'nodes')
          DropdownButton<String>(
            value: dropdownValue1nodes,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue1nodes = newValue;
              });
            },
            items: <String>[
              'edit',
              'delete',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        if (dropdownValue1svc == 'edit')
          TextField(
            onChanged: (d) {
              svc_name = d;
            },
            decoration: InputDecoration(hintText: "Name of the svc to edit"),
            autocorrect: true,
          ),
        if (dropdownValue1svc == 'delete')
          TextField(
            onChanged: (d) {
              nodes_name = d;
            },
            decoration: InputDecoration(hintText: "Name of the node to delete"),
            autocorrect: true,
          ),
      ],
    );
  }
}
