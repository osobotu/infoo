import 'package:flutter/material.dart';
import 'package:infoo/models/user_details.dart';
import 'package:infoo/utils/spacer.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({Key? key}) : super(key: key);
  static String displayPageRoute = 'DisplayPage';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as UserDetails;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildInfo('FIRST NAME', args.firstName),
              _buildInfo('LAST NAME', args.lastName),
              _buildInfo('EMAIL', args.emailAddress),
              _buildInfo('PHONE NUMBER', args.phoneNumber),
              _buildInfo('TRACK', args.track),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildInfo(String detail, String userDetail) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    height: 60,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '$detail:',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        XSpacer(x: 10),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black45,
                width: 1.0,
              )),
          child: Text(userDetail),
        )
      ],
    ),
  );
}
