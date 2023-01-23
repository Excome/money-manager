import 'package:flutter/material.dart';

import '../../../constants.dart';

class OperationList extends StatelessWidget {
  const OperationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: operations.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 60,
                child: ListTile(
                  leading: Icon(operations[index].category.icon, ),
                  title: Text(operations[index].category.name),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.credit_card, size: 15),
                          Text(operations[index].account.name, style: const TextStyle(fontSize: 12)),
                        ],
                      ),
                      if (operations[index].description.isNotEmpty)
                        Row(
                          children: [
                            const Icon(Icons.comment_outlined, size: 15),
                            Text(operations[index].description, style: const TextStyle(fontSize: 12)),
                          ],
                        )
                    ],
                  ),
                  trailing: Text(operations[index].value.toString()),
                  horizontalTitleGap: 5,
                  onTap: () => {},
                ),
              );
            }
        )
    );
  }
}
