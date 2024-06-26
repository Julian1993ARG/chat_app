import 'package:chat_app/Models/message.dart';
import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;
  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: colors.secondary,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            message.text ?? "",
            style: TextStyle(color: colors.background),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      _ImageBubble(urlImage: message.imageUrl!,),
      const SizedBox(
        height: 10,
      ),
    ]);
  }
}

class _ImageBubble extends StatelessWidget {
  final String urlImage;

  const _ImageBubble({required this.urlImage});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(urlImage,
          width: size.width * 0.5,
          height: size.height * 0.2,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) =>
              loadingProgress == null
                  ? child
                  : const Center(
                      child: CircularProgressIndicator(),
                    )),
    );
  }
}
