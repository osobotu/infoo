import 'package:flutter/material.dart';
import 'package:infoo/constants.dart';
import 'package:infoo/models/user_details.dart';
import 'package:infoo/pages/display.dart';
import 'package:infoo/utils/spacer.dart';
import 'package:infoo/widgets/button_widget.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  String? dropDownValue = 'FRONTEND';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            autofocus: true,
            cursorColor: Colors.black,
            cursorWidth: 0.5,
            controller: firstNameController,
            decoration: kTextFieldDecoration.copyWith(
              labelText: 'First Name',
            ),
          ),
          YSpacer(y: 10),
          TextFormField(
            controller: lastNameController,
            cursorColor: Colors.black,
            cursorWidth: 0.5,
            decoration: kTextFieldDecoration.copyWith(
              labelText: 'Last Name',
            ),
          ),
          YSpacer(y: 10),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            cursorColor: Colors.black,
            cursorWidth: 0.5,
            decoration: kTextFieldDecoration.copyWith(
              labelText: 'Email Address',
            ),
          ),
          YSpacer(y: 10),
          TextFormField(
            keyboardType: TextInputType.phone,
            controller: phoneNumberController,
            cursorColor: Colors.black,
            cursorWidth: 0.5,
            decoration: kTextFieldDecoration.copyWith(
              labelText: 'Phone Number',
            ),
          ),
          YSpacer(y: 10),
          DropdownButtonFormField(
            hint: Text('Select a track'),
            decoration: kTextFieldDecoration,
            value: dropDownValue,
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.red,
              size: 30,
            ),
            elevation: 20,
            onChanged: (String? newValue) {
              setState(() {
                dropDownValue = newValue;
              });
            },
            items: <String>[
              'FRONTEND',
              'BACKEND',
              'MOBILE',
              'UI/UX',
              'DIGITAL MARKETING',
              'ENTREPRENEURSHIP'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          YSpacer(y: 30),
          ButtonWidget(
            text: 'Enroll',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Done'),
                  ),
                );
                Navigator.pushNamed(
                  context,
                  DisplayPage.displayPageRoute,
                  arguments: UserDetails(
                    firstName: firstNameController.text.toString(),
                    lastName: lastNameController.text.toString(),
                    emailAddress: emailController.text.toString(),
                    phoneNumber: phoneNumberController.text.toString(),
                    track: dropDownValue.toString(),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}


// TODO: Collect data entered in form and create a UserDetails object. 
// Pass the object to the Display page. Have a close button in the app bar for 
// the user to exit after viewing data.