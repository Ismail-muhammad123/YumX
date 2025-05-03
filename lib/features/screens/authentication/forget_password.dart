import 'package:flutter/material.dart';
import 'package:foodi/core/widgets/primary_button.dart';
import 'package:foodi/core/widgets/form_field.dart';
import 'package:foodi/core/widgets/form_page.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final emailController = TextEditingController();

  _forget_password() async {
    // TODO: implement forget password logic
  }

  @override
  Widget build(BuildContext context) {
    return FormPage(
      showBackButton: true,
      title: "Forget Password",
      subtitle: "Please enter your email",
      form: Column(
        children: [
          Text("Email"),
          const SizedBox(height: 10),
          CustomFormField(label: "Email", fieldController: emailController),
          const SizedBox(height: 20),
          PrimaryButton(label: "Submit", onPressed: _forget_password),
        ],
      ),
    );
  }
}
