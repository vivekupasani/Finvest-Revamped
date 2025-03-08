import 'package:flutter/material.dart';

class Stocklistitem extends StatefulWidget {
  final Map<String, dynamic> stock;
  const Stocklistitem({super.key, required this.stock});

  @override
  State<Stocklistitem> createState() => _StocklistitemState();
}

class _StocklistitemState extends State<Stocklistitem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      //leading icon
      leading: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(60, 119, 119, 119),
        ),
        child: Icon(Icons.money_off_csred, size: 32),
      ),

      //title
      title: Text(
        widget.stock["name"],
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),

      //subtitle
      subtitle: Text(
        widget.stock["symbol"],
        style: TextStyle(fontSize: 14, color: Colors.black54),
      ),

      //trailing icon and text
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "\$${widget.stock["price"].toStringAsFixed(2)}",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            widget.stock["change"],
            style: TextStyle(
              fontSize: 14,
              color:
                  widget.stock["change"].startsWith("-")
                      ? Colors.red
                      : Colors.green,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
