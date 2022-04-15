import 'package:flutter/material.dart';

class CardMvp extends StatelessWidget {
  const CardMvp({
    Key? key,
    required this.titulo,
    required this.conteudoResumido,
    required this.icone,
  }) : super(key: key);

  final String titulo;
  final String conteudoResumido;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          icone,
          size: 48,
        ),
        title: Text(titulo),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(conteudoResumido),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Saiba mais',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
