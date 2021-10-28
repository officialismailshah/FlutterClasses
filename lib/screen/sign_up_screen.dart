import 'package:first_ui/screen/agent_form.dart';
import 'package:first_ui/screen/seller.dart';
import 'package:first_ui/widgets/login_page_button.dart';
import 'package:first_ui/widgets/pm_logo.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF25A449),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PMLogo(),
              SizedBox(height: 20),
              Buttons(
                firstBtn: 'Seller',
                firstOnpressed: SellerFormScreen(),
                secondBtn: 'Agent',
                secondOnpressed: AgentFormScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
