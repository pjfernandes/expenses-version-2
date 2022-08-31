import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Título"),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(labelText: "Valor (R\$)"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () =>
                    {print(titleController.text + " " + valueController.text)},
                child: Text("Nova Transação"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
