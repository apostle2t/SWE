import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  final List<Map<String, dynamic>> favorites;
  final void Function(List<Map<String, dynamic>>) onDelete;

  const FavoritePage(
      {super.key, required this.favorites, required this.onDelete});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final Set<String> _selectedWords = {};

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Favorite Words",
                    style: TextStyle(
                      fontSize: screenWidth * 0.07,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.more_vert,
                        color: Colors.white, size: 20),
                    offset: const Offset(0, 40),
                    enabled: widget.favorites.isNotEmpty,
                    onSelected: (value) {
                      if (value == 'delete' && _selectedWords.isNotEmpty) {
                        final selectedItems = widget.favorites
                            .where((wordData) =>
                                _selectedWords.contains(wordData['word']))
                            .toList();
                        widget.onDelete(selectedItems);
                        setState(() {
                          _selectedWords.clear();
                        });
                      }
                    },
                    itemBuilder: (BuildContext context) => [
                      PopupMenuItem<String>(
                        value: 'delete',
                        enabled: true,
                        height:
                            25, // Match SizedBox height to avoid extra space
                        child: SizedBox(
                          width: 80,
                          height: 25,
                          child: Center(
                            child: Text(
                              'Delete',
                              style: const TextStyle(
                                  fontSize: 14), // Optional: adjust font size
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: widget.favorites.isEmpty
                    ? const Center(
                        child: Text(
                          "No favorites yet!",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      )
                    : Column(
                        children: widget.favorites.map((wordData) {
                          final isSelected =
                              _selectedWords.contains(wordData['word']);
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: isSelected,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          if (value == true) {
                                            _selectedWords
                                                .add(wordData['word']);
                                          } else {
                                            _selectedWords
                                                .remove(wordData['word']);
                                          }
                                        });
                                      },
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            wordData['word']!,
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.06,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87,
                                            ),
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
