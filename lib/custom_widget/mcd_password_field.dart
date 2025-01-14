import 'package:flutter/material.dart';

class McdPasswordField  extends StatefulWidget{
  final TextEditingController controller;
  final String hintText;

   const McdPasswordField({
    super.key,
    required this.controller,
    this.hintText = "Enter your password",
  });

  @override
  // ignore: library_private_types_in_public_api
  _McdPasswordField createState() => _McdPasswordField();

}

class _McdPasswordField extends State<McdPasswordField>{
  bool _obscureText = true;
  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: widget.hintText,
        border: OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: _toggleVisibility,
        ),
      ),
    );
  }
  
}