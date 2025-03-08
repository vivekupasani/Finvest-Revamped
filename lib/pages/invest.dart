import 'package:flutter/material.dart';

class Invest extends StatefulWidget {
  const Invest({super.key});

  @override
  State<Invest> createState() => _InvestState();
}

class _InvestState extends State<Invest> {
  final List<Map<String, String>> qna = [
    {
      "question": "Is investing in stocks safe?",
      "answer":
          "Stock investments carry risks, but diversification and research can help reduce them.",
    },
    {
      "question": "How can I protect my investments?",
      "answer":
          "You can safeguard your investments by diversifying, setting stop-loss orders, and staying informed.",
    },
    {
      "question": "Are mutual funds safer than stocks?",
      "answer":
          "Mutual funds offer diversification, making them generally less risky than individual stocks.",
    },
    {
      "question": "What happens if a brokerage firm fails?",
      "answer":
          "Most brokerage accounts are insured by regulatory bodies, protecting investors up to a certain limit.",
    },
    {
      "question":
          "Is my money safe in a savings account compared to investments?",
      "answer":
          "Savings accounts offer security with lower returns, while investments carry risk but provide growth potential.",
    },
    {
      "question": "How can I make money from investing?",
      "answer":
          "Investing can generate income from various sources, such as dividends, interest, and fees.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Image.asset('assets/stock.png', fit: BoxFit.cover),
          ),

          Text(
            "Is my money safe?",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: qna.length,
              itemBuilder: (context, index) {
                final eachQuestion = qna[index];
                return _QandA(
                  eachQuestion['question']!,
                  eachQuestion['answer']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _QandA(String question, String answer) {
    return ListTile(
      leading: Icon(Icons.verified_user, color: Colors.blue),
      title: Text(
        question,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(answer, style: TextStyle(color: Colors.black87)),
    );
  }
}
