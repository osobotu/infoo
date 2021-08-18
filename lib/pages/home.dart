import 'package:flutter/material.dart';
import 'package:infoo/constants.dart';
import 'package:infoo/pages/onboarding.dart';
import 'package:infoo/utils/spacer.dart';
import 'package:infoo/widgets/button_widget.dart';
import 'package:infoo/widgets/form_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String homePageRoute = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text("Registration"),
        elevation: 0.0,
      ),
      // TODO: Build user input form
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'By filling this form you are registering for the next cohort of the internship',
                textAlign: TextAlign.center,
              ),
              YSpacer(y: 10),
              FormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
