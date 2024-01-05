import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DocumentCard extends HookWidget {
  const DocumentCard({
    super.key,
    required this.doc,
  });

  final Map<String, dynamic> doc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.edit_document),
              const SizedBox(width: 6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doc["name"],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    doc["time"],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  )
                ],
              ),
            ],
          ),
          const Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
