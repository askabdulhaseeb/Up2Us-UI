import 'package:flutter/material.dart';

class ValidePhoneNumberTextFormField extends StatefulWidget {
  final TextEditingController _phoneNumber;
  const ValidePhoneNumberTextFormField({
    Key key,
    @required TextEditingController phoneNumber,
  })  : _phoneNumber = phoneNumber,
        super(key: key);
  @override
  _ValidePhoneNumberTextFormFieldState createState() =>
      _ValidePhoneNumberTextFormFieldState();
}

class _ValidePhoneNumberTextFormFieldState
    extends State<ValidePhoneNumberTextFormField> {
  void onListener() => setState(() {});
  @override
  void initState() {
    widget._phoneNumber.addListener(onListener);
    super.initState();
  }

  @override
  void dispose() {
    widget._phoneNumber.removeListener(onListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: TextFormField(
        controller: widget._phoneNumber,
        keyboardType: TextInputType.phone,
        textInputAction: TextInputAction.next,
        autofillHints: [AutofillHints.telephoneNumberLocal],
        validator: (value) {
          if (value.length < 10) return 'Enter Correct Phone Number';
          return null;
        },
        decoration: InputDecoration(
          hintText: 'Phone Number',
          prefix: Container(width: 10),
          suffixIcon: IconButton(
            icon: (widget._phoneNumber.text.isEmpty)
                ? Container(width: 0)
                : const Icon(Icons.clear),
            onPressed: () => widget._phoneNumber.clear(),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
