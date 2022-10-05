import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList({
    required this.transactions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) {
          final tr = transactions[index];
          return Card(
            margin: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 5,
            ),
            elevation: 5,
            child: ListTile(
              leading: CircleAvatar(
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("R\$ ${tr.value.toString()}"),
                  ),
                ),
              ),
              title: Text(
                tr.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                DateFormat('d/MM/yyyy').format(tr.date),
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => {},
                color: Theme.of(context).errorColor,
              ),
            ),
          );
        },
      ),
    );
  }
}//
