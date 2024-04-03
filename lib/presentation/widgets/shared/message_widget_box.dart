import 'package:flutter/material.dart';

class MessageBoxWidget extends StatelessWidget {
  const MessageBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    final outlineImputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
        color: colors.primary,
      ),
    );

    final imputDecoration = InputDecoration(
      hintText: 'Type a message',
      enabledBorder: outlineImputBorder,
      focusedBorder: outlineImputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(
          Icons.send_outlined,
        ),
        onPressed: () {},
      ),
    );

    return TextFormField(
      decoration: imputDecoration
    );
  }
}
