import 'package:flutter/material.dart';

void main() {
  runApp(SebhaApp());
}

class SebhaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سبحة إلكترونية',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: SebhaPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SebhaPage extends StatefulWidget {
  @override
  _SebhaPageState createState() => _SebhaPageState();
}

class _SebhaPageState extends State<SebhaPage> {
  int _subhanCount = 0;
  int _hamdCount = 0;
  int _akbarCount = 0;
  int _laalah = 0;

  void _resetCounts() {
    setState(() {
      _subhanCount = 0;
      _hamdCount = 0;
      _akbarCount = 0;
      _laalah = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('سبحة إلكترونية'), centerTitle: true),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // سبحان الله
              Column(
                children: [
                  Text(
                    'سبحان الله',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('$_subhanCount', style: TextStyle(fontSize: 28)),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _subhanCount++;
                      });
                    },
                    child: Text('زيادة'),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // الحمد لله
              Column(
                children: [
                  Text(
                    'الحمد لله',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('$_hamdCount', style: TextStyle(fontSize: 28)),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _hamdCount++;
                      });
                    },
                    child: Text('زيادة'),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // الله أكبر
              Column(
                children: [
                  Text(
                    'الله أكبر',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('$_akbarCount', style: TextStyle(fontSize: 28)),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _akbarCount++;
                      });
                    },
                    child: Text('زيادة'),
                  ),
                ],
              ),

              SizedBox(height: 40),

              Column(
                children: [
                  Text(
                    'لا اله الا الله',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('$_laalah', style: TextStyle(fontSize: 28)),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _laalah++;
                      });
                    },
                    child: Text('زيادة'),
                  ),
                ],
              ),

              SizedBox(height: 40),

              // زر التصفير
              ElevatedButton(
                onPressed: _resetCounts,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text('تصفير الأذكار'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
