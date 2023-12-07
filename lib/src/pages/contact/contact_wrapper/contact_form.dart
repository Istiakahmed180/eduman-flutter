import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              "Quick Contact",
              style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 16,
            ),
            buildTextFormField("Name", _nameController, TextInputType.text),
            const SizedBox(
              height: 16,
            ),
            buildTextFormField("Email", _emailController, TextInputType.emailAddress),
            const SizedBox(
              height: 16,
            ),
            buildTextFormField("Message", _messageController, TextInputType.multiline),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 110,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Form is valid, you can process the data here
                    // For example, you can access the values using _nameController.text, _emailController.text, _messageController.text
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color(0xFF2CDA86),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Send",
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.send,
                      size: 13,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextFormField(String label, TextEditingController controller, TextInputType inputType) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              label,
              style: GoogleFonts.raleway(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              "*",
              style: GoogleFonts.raleway(
                textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 26, color: Colors.red),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: TextFormField(
            controller: controller,
            keyboardType: inputType,
            cursorColor: Colors.black,
            style: GoogleFonts.nunito(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Enter $label",
              hintStyle: const TextStyle(
                color: Color(0xFF6F6F6F),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
            ),
          ),
        ),
      ],
    );
  }
}
