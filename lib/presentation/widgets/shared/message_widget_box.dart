import 'package:flutter/material.dart';

class MessageBoxWidget extends StatelessWidget {
  const MessageBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();

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
        onPressed: () {
          final textValue = textController.text;
          textController.clear();
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: imputDecoration,
      onFieldSubmitted: (value) => {
        textController.clear(),
        focusNode.requestFocus(),
      },
    );
  }
}
