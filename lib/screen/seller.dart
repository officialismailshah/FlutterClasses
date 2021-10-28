import 'package:first_ui/widgets/login_page_button.dart';
import 'package:first_ui/widgets/pm_logo.dart';
import 'package:flutter/material.dart';

import 'submit_screen.dart';

class SellerFormScreen extends StatefulWidget {
  const SellerFormScreen({Key? key}) : super(key: key);

  @override
  _SellerFormScreenState createState() => _SellerFormScreenState();
}

class _SellerFormScreenState extends State<SellerFormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController bankController = TextEditingController();
  TextEditingController accountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF25A449),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              PMLogo(),
              FieldForSeller(
                controller: nameController,
                hintText: 'Name',
              ),
              FieldForSeller(
                controller: usernameController,
                hintText: 'Username',
              ),
              FieldForSeller(
                controller: emailController,
                hintText: 'Email',
              ),
              FieldForSeller(
                controller: genderController,
                hintText: 'Gender',
              ),
              FieldForSeller(
                controller: addressController,
                hintText: 'Address',
              ),
              FieldForSeller(
                controller: cityController,
                hintText: 'City',
              ),
              FieldForSeller(
                controller: countryController,
                hintText: 'Country',
              ),
              FieldForSeller(
                controller: phoneController,
                hintText: 'Phone',
              ),
              FieldForSeller(
                controller: bankController,
                hintText: 'Bank Name',
              ),
              FieldForSeller(
                controller: accountController,
                hintText: 'Account #',
              ),
              SizedBox(
                height: 30,
              ),
              Button(widget: SubmitScreen(), type: 'Submit'),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FieldForSeller extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const FieldForSeller({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: hintText,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          )
        ],
      ),
    );
  }
}
