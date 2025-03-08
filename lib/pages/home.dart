import 'package:finvest/components/StockListItem.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> stocks = [
    {
      "name": "US Treasury Bill - 1 Month",
      "symbol": "Maturity date: Jan 23,2024",
      "price": 15000.00,
      "change": "5.37% YTM",
    },
    {
      "name": "US Treasury Bill - 3 Month",
      "symbol": "Maturity date: Apr 3,2024",
      "price": 2689.00,
      "change": "5.38% YTM",
    },
    {
      "name": "US Treasury Bill - 6 Month",
      "symbol": "Maturity date: Jul 2,2024",
      "price": 3968.00,
      "change": "5.39% YTM",
    },
  ];

  final List<Map<String, dynamic>> transactions = [
    {
      "name": "US Treasury Bill - 9 Month",
      "symbol": "Maturity date: Oct 1,2024",
      "price": 5500.00,
      "change": "5.40% YTM",
    },
    {
      "name": "US Treasury Bill - 12 Month",
      "symbol": "Maturity date: Jan 3,2025",
      "price": 10200.00,
      "change": "5.42% YTM",
    },
    {
      "name": "US Treasury Bill - 2 Year",
      "symbol": "Maturity date: Jan 3,2026",
      "price": 20000.00,
      "change": "5.50% YTM",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFD),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF8FAFD),
        title: Text(
          "Finvest",
          style: TextStyle(
            color: Color(0xFF1E3A8A),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xFF1E3A8A).withOpacity(0.1),
            radius: 20,
            child: Icon(Icons.notifications_outlined, color: Color(0xFF1E3A8A)),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Portfolio Card
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 24),
                  padding: EdgeInsets.all(24),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF1E3A8A).withOpacity(0.3),
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Portfolio Value",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Live",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        "\$10,047.50",
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_upward,
                                  color: Colors.green,
                                  size: 14,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "4.8%",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "This month",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Action Buttons
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildActionButton(
                        Icons.inventory_sharp,
                        "Invest",
                        Color(0xFF1E3A8A),
                      ),
                      _buildActionButton(
                        Icons.arrow_upward,
                        "Deposit",
                        Color(0xFF047857),
                      ),
                      _buildActionButton(
                        Icons.arrow_downward,
                        "Withdraw",
                        Color(0xFFB91C1C),
                      ),
                      _buildActionButton(
                        Icons.more_horiz,
                        "More",
                        Color(0xFF7C3AED),
                      ),
                    ],
                  ),
                ),

                // Buying Power Card
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Color(0xFFE0F2FE),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.account_balance,
                              color: Color(0xFF0284C7),
                            ),
                          ),
                          SizedBox(width: 16),
                          Text(
                            "Buying Power",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1F2937),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "\$10,000",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2937),
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xFF1E3A8A).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.chevron_right,
                              color: Color(0xFF1E3A8A),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Your Holdings Section
                _buildSectionHeader("Your Holdings", "See all"),

                // Holdings List
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      for (int i = 0; i < stocks.length; i++) ...[
                        Stocklistitem(stock: stocks[i]),
                        if (i < stocks.length - 1)
                          Divider(
                            height: 1,
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,
                            color: Colors.grey.withOpacity(0.2),
                          ),
                      ],
                    ],
                  ),
                ),

                SizedBox(height: 24),

                // Recent Transactions Section
                _buildSectionHeader("Recent Transactions", "See all"),

                // Transactions List
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      for (int i = 0; i < transactions.length; i++) ...[
                        Stocklistitem(stock: transactions[i]),
                        if (i < transactions.length - 1)
                          Divider(
                            height: 1,
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,
                            color: Colors.grey.withOpacity(0.2),
                          ),
                      ],
                    ],
                  ),
                ),

                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color.withOpacity(0.3), width: 1.5),
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: Color(0xFF1F2937),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title, String actionText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF1F2937),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            actionText,
            style: TextStyle(
              color: Color(0xFF1E3A8A),
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
