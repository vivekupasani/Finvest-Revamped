import 'package:finvest/components/StockListItem.dart';
import 'package:flutter/material.dart';

class Cash extends StatefulWidget {
  const Cash({super.key});

  @override
  State<Cash> createState() => _CashState();
}

class _CashState extends State<Cash> {
  final List<Map<String, dynamic>> stocks = [
    {
      "name": "NVIDIA",
      "symbol": "NVDA-BULL",
      "price": 720.25,
      "change": "+2.4%",
    },
    {
      "name": "Meta",
      "symbol": "META-MARKET",
      "price": 450.80,
      "change": "-0.8%",
    },
    {"name": "AMD", "symbol": "AMD-GROWTH", "price": 125.60, "change": "+1.1%"},
    {
      "name": "Intel",
      "symbol": "INTC-INVEST",
      "price": 45.75,
      "change": "+0.5%",
    },
    {
      "name": "Netflix",
      "symbol": "NFLX-TRADE",
      "price": 590.40,
      "change": "-1.5%",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Modern Header with curved design
            Container(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Treasury",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.5,
                          color: Color(0xFF2D3142),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFEEF2F6),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.timer, color: Color(0xFF2D3142)),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(width: 12),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFEEF2F6),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.calendar_month,
                                color: Color(0xFF2D3142),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Grow your wealth with US Treasuries",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF4F5D75),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFFEEF2F6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Government-backed securities",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4F5D75),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Main Content Area
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  // Stocks Section
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 18,
                              width: 5,
                              decoration: BoxDecoration(
                                color: Color(0xFF5E72EB),
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Top Stocks",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D3142),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF5E72EB),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Stock Cards
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      scrollDirection: Axis.horizontal,
                      itemCount: stocks.length,
                      itemBuilder: (context, index) {
                        final stock = stocks[index];
                        final isPositive = stock["change"].contains("+");

                        return Container(
                          width: 170,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEF2F6),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  Icons.show_chart,
                                  color: isPositive ? Colors.green : Colors.red,
                                  size: 24,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                stock["name"],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2D3142),
                                ),
                              ),
                              Text(
                                stock["symbol"],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF4F5D75),
                                ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$${stock["price"]}",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF2D3142),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color:
                                          isPositive
                                              ? Colors.green.shade50
                                              : Colors.red.shade50,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      stock["change"],
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            isPositive
                                                ? Colors.green
                                                : Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  // Learn Section
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 15),
                    child: Row(
                      children: [
                        Container(
                          height: 18,
                          width: 5,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF9190),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Learn as you go",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3142),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Learning Cards
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEF2F6),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.lightbulb_outline,
                                    color: Color(0xFF5E72EB),
                                    size: 20,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "Why invest in Treasury Bills?",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2D3142),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Learn about the benefits and safety of T-bills",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF4F5D75),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF5E72EB),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    "Read Article",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage("assets/stock.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEF2F6),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.school_outlined,
                                    color: Color(0xFFFF9190),
                                    size: 20,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "How does it work?",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2D3142),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Understand the process of T-bill investments",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF4F5D75),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF9190),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    "Watch Video",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage("assets/stock3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
