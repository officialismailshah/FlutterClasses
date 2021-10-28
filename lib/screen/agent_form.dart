import 'package:flutter/material.dart';

class AgentFormScreen extends StatefulWidget {
  const AgentFormScreen({Key? key}) : super(key: key);

  @override
  _AgentFormScreenState createState() => _AgentFormScreenState();
}

class _AgentFormScreenState extends State<AgentFormScreen> {
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
        child: Column(
          children: [

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
          ],
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
          TextField(
            decoration: InputDecoration(
                hintText: hintText,
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          )
        ],
      ),
    );
  }
}
