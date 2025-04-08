import 'package:flutter/material.dart';
import 'package:myapp/Pages/dailyList.dart'; // Dailylist
import 'package:myapp/Pages/favorite_page.dart'; // New FavoritePage
import 'package:myapp/Pages/search.dart'; // Assuming Search exists

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;
  final List<Map<String, dynamic>> _favorites = [];

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const Search(),
      Dailylist(onFavoriteToggle: _toggleFavorite),
      FavoritePage(
        favorites: _favorites,
        onDelete: _deleteFavorites,
      ),
    ];
  }

  void _toggleFavorite(Map<String, dynamic> wordData) {
    setState(() {
      if (wordData['isFavorite']) {
        _favorites.add(wordData);
      } else {
        _favorites.removeWhere((item) => item['word'] == wordData['word']);
      }
    });
  }

  void _deleteFavorites(List<Map<String, dynamic>> wordsToDelete) {
    setState(() {
      for (var wordData in wordsToDelete) {
        _favorites.removeWhere((item) => item['word'] == wordData['word']);
        wordData['isFavorite'] = false; // Reset favorite status
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: MyBottomNavigation(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class MyBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MyBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(0, 5)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: IconButton(
                onPressed: () => onTap(0),
                icon: Icon(Icons.search,
                    color: currentIndex == 0 ? Colors.blue : Colors.grey),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () => onTap(1),
                icon: Icon(Icons.home,
                    color: currentIndex == 1 ? Colors.blue : Colors.grey),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () => onTap(2),
                icon: Icon(Icons.favorite,
                    color: currentIndex == 2 ? Colors.blue : Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
