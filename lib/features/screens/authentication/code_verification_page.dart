import 'package:flutter/material.dart';
import 'package:foodi/core/widgets/primary_button.dart';
import 'package:foodi/features/widgets/code_verification_field.dart';
import 'package:foodi/features/widgets/form_page.dart';

class CodeVerificationPage extends StatefulWidget {
  final String email;
  const CodeVerificationPage({super.key, required this.email});

  @override
  State<CodeVerificationPage> createState() => _CodeVerificationPageState();
}

class _CodeVerificationPageState extends State<CodeVerificationPage> {
  DateTime? _resendIn;

  _resendCode() {
    // TODO: implement resend code logic
  }

  @override
  Widget build(BuildContext context) {
    return FormPage(
      title: "Verification",
      subtitle: "Please enter the code sent to your email - ${widget.email}",
      form: Column(
        children: [
          Row(
            children: [
              Text("Code"),
              const SizedBox(width: 10),
              Text(
                "Resend in",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12,
                ),
              ),
              GestureDetector(
                onTap:
                    DateTime.now().difference(_resendIn!).inSeconds == 0
                        ? _resendCode
                        : null,
                child: Text(
                  "${DateTime.now().difference(_resendIn!).inSeconds}sec",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // CustomFormField(
          //   label: "Code",
          //   fieldController: TextEditingController(),
          // ),
          VerificationCodeForm(),
          const SizedBox(height: 20),
          PrimaryButton(label: "Verify", onPressed: () {}),
        ],
      ),
    );
  }
}
