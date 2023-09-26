import 'package:flutter/material.dart';

class MyRegistrationForm extends StatefulWidget {
  @override
  _MyRegistrationFormState createState() => _MyRegistrationFormState();
}

class _MyRegistrationFormState extends State<MyRegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                // controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              TextFormField(
                // controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => {},
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // _emailController.dispose();
    // _passwordController.dispose();
    super.dispose();
  }
}























// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }

// class _MyFormState extends State<MyForm> {
//   final TextEditingController _textFieldController = TextEditingController();
//   String _submittedText = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Form Example'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TextFormField(
//               obscuringCharacter: "-",
//               keyboardType: TextInputType.emailAddress,
//               controller: _textFieldController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Enter Text',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _submittedText = _textFieldController.text;
//                 });
//               },
//               child: Text('Submit'),
//             ),
//             SizedBox(height: 20),
//             Text('Submitted Text: $_submittedText'),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _textFieldController.dispose();
//     super.dispose();
//   }
// }
