import 'package:flutter/material.dart';

class Dailylist extends StatefulWidget {
  final void Function(Map<String, dynamic>) onFavoriteToggle;

  const Dailylist({super.key, required this.onFavoriteToggle});

  @override
  State<Dailylist> createState() => _DailylistState();
}

class _DailylistState extends State<Dailylist> {
  late List<Map<String, dynamic>> dailyWords;

  @override
  void initState() {
    super.initState();
    dailyWords = [
      {
        'word': 'Ephemeral',
        'meaning': 'Lasting for a very short time',
        'isFavorite': false
      },
      {
        'word': 'Serendipity',
        'meaning': 'Finding something valuable unexpectedly',
        'isFavorite': false
      },
      {
        'word': 'Ubiquitous',
        'meaning': 'Present everywhere',
        'isFavorite': false
      },
      {'word': 'Luminous', 'meaning': 'Bright or shining', 'isFavorite': false},
      {
        'word': 'Resilient',
        'meaning': 'Able to recover quickly',
        'isFavorite': false
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05),
                    child: Text(
                      "Anola",
                      style: TextStyle(
                        fontSize: screenWidth * 0.08,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.05),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.1,
                          child: Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: screenWidth * 0.15,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.004),
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.05),
              Text(
                "Your Lexify Daily List",
                style: TextStyle(
                  fontSize: screenWidth * 0.07,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Column(
                  children: dailyWords.map((wordData) {
                    return SizedBox(
                      width: screenWidth * 0.9,
                      child: Card(
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    wordData['word']!,
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.06,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      wordData['isFavorite']
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: wordData['isFavorite']
                                          ? Colors.red
                                          : Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        wordData['isFavorite'] =
                                            !wordData['isFavorite'];
                                      });
                                      widget.onFavoriteToggle(wordData);
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              Text(
                                wordData['meaning']!,
                                style: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
