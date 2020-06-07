import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:buddhist_datetime_dateformat/buddhist_datetime_dateformat.dart';
import 'package:nextflow_thai_date_localization/theme_text_style.dart';
void main() {

  Intl.defaultLocale = 'th';
  initializeDateFormatting();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Flutter Widget Today',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter 3 นาที: วันเดือนปีไทยๆ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    var now = DateTime.now();
    var toShow = now.yearInBuddhistCalendar;

    var formatter = DateFormat.yMMMMEEEEd();
    var showDate = formatter.formatInBuddhistCalendarThai(now);

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            
            Text('Year value in DateTime.now().year ', style: ThemeTextStyle.title(context)),
            Text('${now.year}', style: ThemeTextStyle.highlight(context)),
            
            
            
            Text('Year value in DateTime.now().yearInBuddhistCalendar', style: ThemeTextStyle.title(context)),
            Text('${now.yearInBuddhistCalendar}', style: ThemeTextStyle.highlight(context)),

            SizedBox(height: 40,),

            Text('What you got from DateFormat.format()', style: ThemeTextStyle.title(context)),
            Text('${formatter.format(now)}', style: ThemeTextStyle.highlight(context)),
            
            SizedBox(height: 40,),
            
            Text('what you got from DateFormat.formatInBuddhistCalendarThai()', style: ThemeTextStyle.title(context)),
            Text('${formatter.formatInBuddhistCalendarThai(now)}', style: ThemeTextStyle.highlight(context)),
          ],),
        ));
  }
}
