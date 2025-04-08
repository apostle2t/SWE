// import 'package:flutter/material.dart';
// import 'package:myapp/Pages/wordPage.dart';

// class Search extends StatefulWidget {
//   const Search({super.key});

//   @override
//   State<Search> createState() => _SearchState();
// }

// class _SearchState extends State<Search> {
//   late List<Map<String, String>> wordList;
//   List<Map<String, String>> filteredWordList = [];
//   final FocusNode searchFocusNode = FocusNode();
//   final TextEditingController searchController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     // Full list of words as provided
//     wordList = [
//       {'word': 'Ephemeral', 'meaning': 'Lasting for a very short time'},
//       {
//         'word': 'Serendipity',
//         'meaning': 'Finding something valuable unexpectedly'
//       },
//       {'word': 'Ubiquitous', 'meaning': 'Present everywhere'},
//       {'word': 'Luminous', 'meaning': 'Bright or shining'},
//       {'word': 'Resilient', 'meaning': 'Able to recover quickly'},
//       {
//         'word': 'Quintessential',
//         'meaning': 'Representing the most perfect example of something'
//       },
//       {'word': 'Mellifluous', 'meaning': 'Sweet or musical in tone'},
//       {'word': 'Ineffable', 'meaning': 'Too great to be expressed in words'},
//       {
//         'word': 'Pernicious',
//         'meaning': 'Having a harmful effect, especially in a subtle way'
//       },
//       {'word': 'Loquacious', 'meaning': 'Very talkative'},
//       {'word': 'Ebullient', 'meaning': 'Cheerful and full of energy'},
//       {'word': 'Inevitable', 'meaning': 'Certain to happen'},
//       {'word': 'Sagacious', 'meaning': 'Wise and showing good judgment'},
//       {
//         'word': 'Sycophant',
//         'meaning': 'A person who acts obsequiously toward someone important'
//       },
//       {
//         'word': 'Obfuscate',
//         'meaning':
//             'To deliberately make something unclear or difficult to understand'
//       },
//       {
//         'word': 'Venerable',
//         'meaning':
//             'Accorded a great deal of respect, especially due to age or wisdom'
//       },
//       {
//         'word': 'Juxtaposition',
//         'meaning':
//             'The fact of two things being seen or placed close together with contrasting effect'
//       },
//       {
//         'word': 'Voracious',
//         'meaning': 'Having a very eager approach to an activity'
//       },
//       {'word': 'Euphoria', 'meaning': 'A feeling of intense happiness'},
//       {
//         'word': 'Superfluous',
//         'meaning': 'Unnecessary, especially through being more than enough'
//       },
//       {'word': 'Reverence', 'meaning': 'Deep respect for someone or something'},
//       {
//         'word': 'Obstinate',
//         'meaning': 'Stubbornly refusing to change one’s opinion'
//       },
//       {'word': 'Nefarious', 'meaning': 'Wicked or criminal'},
//       {'word': 'Intransigent', 'meaning': 'Unwilling to change one’s views'},
//       {'word': 'Cacophony', 'meaning': 'A harsh, discordant mixture of sounds'},
//       {'word': 'Disparate', 'meaning': 'Essentially different in kind'},
//       {'word': 'Ambiguous', 'meaning': 'Open to more than one interpretation'},
//       {
//         'word': 'Esoteric',
//         'meaning': 'Intended for or understood by only a small number of people'
//       },
//       {'word': 'Pensive', 'meaning': 'Engaged in deep or serious thought'},
//       {'word': 'Tenacious', 'meaning': 'Not easily letting go or giving up'},
//       {'word': 'Magnanimous', 'meaning': 'Generous or forgiving'},
//       {'word': 'Fortuitous', 'meaning': 'Happening by chance or luck'},
//       {'word': 'Irascible', 'meaning': 'Easily angered'},
//       {'word': 'Egregious', 'meaning': 'Outstandingly bad'},
//       {'word': 'Cognizant', 'meaning': 'Having knowledge or being aware of'},
//       {'word': 'Inept', 'meaning': 'Having or showing no skill'},
//       {'word': 'Garrulous', 'meaning': 'Excessively talkative'},
//       {'word': 'Immutable', 'meaning': 'Unchanging over time'},
//       {
//         'word': 'Oblivion',
//         'meaning': 'The state of being unaware or unconscious'
//       },
//       {
//         'word': 'Pedantic',
//         'meaning': 'Overly concerned with minor details or rules'
//       },
//       {'word': 'Prosaic', 'meaning': 'Lacking poetic beauty, dull'},
//       {
//         'word': 'Redolent',
//         'meaning': 'Strongly reminiscent or suggestive of something'
//       },
//       {'word': 'Recalcitrant', 'meaning': 'Resisting authority or control'},
//       {'word': 'Sophistry', 'meaning': 'A clever but misleading argument'},
//       {'word': 'Taciturn', 'meaning': 'Reserved or uncommunicative in speech'},
//       {'word': 'Unctuous', 'meaning': 'Excessively flattering'},
//       {
//         'word': 'Vicarious',
//         'meaning':
//             'Experienced in the imagination through the feelings of another'
//       },
//       {'word': 'Wistful', 'meaning': 'Having a feeling of vague longing'},
//       {
//         'word': 'Xenophobia',
//         'meaning': 'Dislike of or prejudice against people from other countries'
//       },
//       {'word': 'Zealous', 'meaning': 'Having great energy or enthusiasm'},
//       {
//         'word': 'Aesthetic',
//         'meaning': 'Concerned with beauty or appreciation of beauty'
//       },
//       {'word': 'Benevolent', 'meaning': 'Well-meaning and kind'},
//       {'word': 'Cerebral', 'meaning': 'Intellectual rather than emotional'},
//       {
//         'word': 'Dichotomy',
//         'meaning': 'A division between two opposing things'
//       },
//       {
//         'word': 'Efficacious',
//         'meaning': 'Effective in producing a desired result'
//       },
//       {'word': 'Furtive', 'meaning': 'Attempting to avoid notice or attention'},
//       {'word': 'Grandiloquent', 'meaning': 'Pompous in speech or manner'},
//       {'word': 'Hubris', 'meaning': 'Excessive pride or self-confidence'},
//       {
//         'word': 'Insidious',
//         'meaning':
//             'Proceeding in a gradual, subtle way, but with harmful effects'
//       },
//       {'word': 'Jocular', 'meaning': 'Fond of joking'},
//       {'word': 'Kaleidoscopic', 'meaning': 'Constantly changing and colorful'},
//       {'word': 'Lethargic', 'meaning': 'Sluggish and apathetic'},
//       {'word': 'Meticulous', 'meaning': 'Showing great attention to detail'},
//       {'word': 'Nebulous', 'meaning': 'Unclear, vague, or ill-defined'},
//       {'word': 'Ostentatious', 'meaning': 'Characterized by vulgar display'},
//       {'word': 'Pragmatic', 'meaning': 'Dealing with things practically'},
//       {
//         'word': 'Quizzical',
//         'meaning': 'Indicating mild amusement or puzzlement'
//       },
//       {'word': 'Recondite', 'meaning': 'Little known or obscure'},
//       {
//         'word': 'Stolid',
//         'meaning': 'Calm, dependable, and showing little emotion'
//       },
//       {'word': 'Truculent', 'meaning': 'Eager to argue or fight'},
//       {'word': 'Undulate', 'meaning': 'Move with a wavelike motion'},
//       {
//         'word': 'Vestige',
//         'meaning': 'A trace of something that is disappearing'
//       },
//       {
//         'word': 'Winsome',
//         'meaning': 'Attractive or appealing in a childlike way'
//       },
//       {'word': 'Yen', 'meaning': 'A strong desire or craving'},
//       {'word': 'Zenith', 'meaning': 'The highest point'},
//       {'word': 'Abstruse', 'meaning': 'Difficult to understand'},
//       {
//         'word': 'Bucolic',
//         'meaning': 'Relating to the pleasant aspects of the countryside'
//       },
//       {
//         'word': 'Capricious',
//         'meaning': 'Given to sudden changes in mood or behavior'
//       },
//       {'word': 'Deleterious', 'meaning': 'Causing harm or damage'},
//       {
//         'word': 'Eclectic',
//         'meaning': 'Deriving ideas from a broad range of sources'
//       },
//       {
//         'word': 'Fastidious',
//         'meaning': 'Very attentive to accuracy and detail'
//       },
//       {'word': 'Gregarious', 'meaning': 'Fond of company'},
//       {
//         'word': 'Halcyon',
//         'meaning':
//             'Denoting a period of time in the past that was idyllically happy'
//       },
//       {'word': 'Idiosyncratic', 'meaning': 'Peculiar or individual'},
//       {'word': 'Jejune', 'meaning': 'Naive, simplistic, and superficial'},
//       {
//         'word': 'Knell',
//         'meaning': 'The sound of a bell, especially for a death or funeral'
//       },
//       {'word': 'Laconic', 'meaning': 'Using very few words'},
//       {'word': 'Munificent', 'meaning': 'Very generous'},
//       {'word': 'Nascent', 'meaning': 'Just coming into existence'},
//       {'word': 'Obdurate', 'meaning': 'Stubbornly refusing to change opinion'},
//       {
//         'word': 'Perspicacious',
//         'meaning': 'Having a ready insight into things'
//       },
//       {'word': 'Quagmire', 'meaning': 'A difficult situation'},
//       {'word': 'Rancor', 'meaning': 'Bitterness or resentfulness'},
//     ];

//     // Initialize the filtered list with all words
//     filteredWordList = wordList;
//   }

//   // Filter the word list based on search input
//   void filterWords(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         filteredWordList = wordList;
//       } else {
//         filteredWordList = wordList
//             .where((wordData) =>
//                 wordData['word']!.toLowerCase().contains(query.toLowerCase()))
//             .toList();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     searchFocusNode.dispose();
//     searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       resizeToAvoidBottomInset: true, // Allow Scaffold to resize with keyboard
//       backgroundColor: Colors.grey[900],
//       body: SafeArea(
//         child: SingleChildScrollView(
//           // Allow scrolling if keyboard overlaps
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(left: screenWidth * 0.05),
//                     child: Text(
//                       "Anola",
//                       style: TextStyle(
//                         fontSize: screenWidth * 0.08,
//                         fontStyle: FontStyle.italic,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(right: screenWidth * 0.05),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         SizedBox(
//                           height: screenHeight * 0.1,
//                           child: Icon(
//                             Icons.account_circle,
//                             color: Colors.white,
//                             size: screenWidth * 0.15,
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.004),
//                         Text(
//                           "Edit Profile",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: screenWidth * 0.04,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: screenHeight * 0.05),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 8.0), // Add padding
//                 child: SizedBox(
//                   width: screenWidth * 0.9,
//                   height: screenHeight * 0.1,
//                   child: TextField(
//                     focusNode: searchFocusNode,
//                     controller: searchController,
//                     onTap: () async {
//                       FocusScope.of(context).requestFocus(searchFocusNode);
//                       if (!searchFocusNode.hasFocus) {
//                         FocusManager.instance.primaryFocus?.unfocus();
//                         await Future.delayed(
//                             Duration(milliseconds: 100)); // Slight delay
//                         searchFocusNode.requestFocus();
//                       }
//                     },
//                     onChanged: (value) {
//                       filterWords(value);
//                     },
//                     keyboardType: TextInputType.text,
//                     textInputAction: TextInputAction.search,
//                     enableInteractiveSelection: true,
//                     obscureText: false,
//                     decoration: InputDecoration(
//                       hintText: "Search",
//                       hintStyle: TextStyle(color: Colors.grey[600]),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       filled: true,
//                       fillColor: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               // Define a fixed height for the ListView.builder
//               SizedBox(
//                 height:
//                     screenHeight * 0.6, // Adjust height based on screen size
//                 child: ListView.builder(
//                   itemCount: filteredWordList.length,
//                   itemExtent: 50,
//                   padding: EdgeInsets.zero,
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   itemBuilder: (context, index) {
//                     final wordData = filteredWordList[index];
//                     final isLast = index == filteredWordList.length - 1;
//                     return GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => Wordpage(wordData: wordData),
//                           ),
//                         );
//                       },
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: screenWidth * 0.05),
//                             child: Text(
//                               wordData['word']!,
//                               style: TextStyle(
//                                 fontSize: screenWidth * 0.05,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                           if (!isLast)
//                             Divider(
//                               color: Colors.grey[700],
//                               thickness: 1,
//                               indent: screenWidth * 0.05,
//                               endIndent: 0,
//                             ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:myapp/Pages/wordPage.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late List<Map<String, String>> wordList;
  List<Map<String, String>> filteredWordList = [];
  final FocusNode searchFocusNode = FocusNode();
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Full list of words
    wordList = [
      {'word': 'Ephemeral', 'meaning': 'Lasting for a very short time'},
      {
        'word': 'Serendipity',
        'meaning': 'Finding something valuable unexpectedly'
      },
      {'word': 'Ubiquitous', 'meaning': 'Present everywhere'},
      {'word': 'Luminous', 'meaning': 'Bright or shining'},
      {'word': 'Resilient', 'meaning': 'Able to recover quickly'},
      {
        'word': 'Quintessential',
        'meaning': 'Representing the most perfect example of something'
      },
      {'word': 'Mellifluous', 'meaning': 'Sweet or musical in tone'},
      {'word': 'Ineffable', 'meaning': 'Too great to be expressed in words'},
      {
        'word': 'Pernicious',
        'meaning': 'Having a harmful effect, especially in a subtle way'
      },
      {'word': 'Loquacious', 'meaning': 'Very talkative'},
      {'word': 'Ebullient', 'meaning': 'Cheerful and full of energy'},
      {'word': 'Inevitable', 'meaning': 'Certain to happen'},
      {'word': 'Sagacious', 'meaning': 'Wise and showing good judgment'},
      {
        'word': 'Sycophant',
        'meaning': 'A person who acts obsequiously toward someone important'
      },
      {
        'word': 'Obfuscate',
        'meaning':
            'To deliberately make something unclear or difficult to understand'
      },
      {
        'word': 'Venerable',
        'meaning':
            'Accorded a great deal of respect, especially due to age or wisdom'
      },
      {
        'word': 'Juxtaposition',
        'meaning':
            'The fact of two things being seen or placed close together with contrasting effect'
      },
      {
        'word': 'Voracious',
        'meaning': 'Having a very eager approach to an activity'
      },
      {'word': 'Euphoria', 'meaning': 'A feeling of intense happiness'},
      {
        'word': 'Superfluous',
        'meaning': 'Unnecessary, especially through being more than enough'
      },
      {'word': 'Reverence', 'meaning': 'Deep respect for someone or something'},
      {
        'word': 'Obstinate',
        'meaning': 'Stubbornly refusing to change one’s opinion'
      },
      {'word': 'Nefarious', 'meaning': 'Wicked or criminal'},
      {'word': 'Intransigent', 'meaning': 'Unwilling to change one’s views'},
      {'word': 'Cacophony', 'meaning': 'A harsh, discordant mixture of sounds'},
      {'word': 'Disparate', 'meaning': 'Essentially different in kind'},
      {'word': 'Ambiguous', 'meaning': 'Open to more than one interpretation'},
      {
        'word': 'Esoteric',
        'meaning': 'Intended for or understood by only a small number of people'
      },
      {'word': 'Pensive', 'meaning': 'Engaged in deep or serious thought'},
      {'word': 'Tenacious', 'meaning': 'Not easily letting go or giving up'},
      {'word': 'Magnanimous', 'meaning': 'Generous or forgiving'},
      {'word': 'Fortuitous', 'meaning': 'Happening by chance or luck'},
      {'word': 'Irascible', 'meaning': 'Easily angered'},
      {'word': 'Egregious', 'meaning': 'Outstandingly bad'},
      {'word': 'Cognizant', 'meaning': 'Having knowledge or being aware of'},
      {'word': 'Inept', 'meaning': 'Having or showing no skill'},
      {'word': 'Garrulous', 'meaning': 'Excessively talkative'},
      {'word': 'Immutable', 'meaning': 'Unchanging over time'},
      {
        'word': 'Oblivion',
        'meaning': 'The state of being unaware or unconscious'
      },
      {
        'word': 'Pedantic',
        'meaning': 'Overly concerned with minor details or rules'
      },
      {'word': 'Prosaic', 'meaning': 'Lacking poetic beauty, dull'},
      {
        'word': 'Redolent',
        'meaning': 'Strongly reminiscent or suggestive of something'
      },
      {'word': 'Recalcitrant', 'meaning': 'Resisting authority or control'},
      {'word': 'Sophistry', 'meaning': 'A clever but misleading argument'},
      {'word': 'Taciturn', 'meaning': 'Reserved or uncommunicative in speech'},
      {'word': 'Unctuous', 'meaning': 'Excessively flattering'},
      {
        'word': 'Vicarious',
        'meaning':
            'Experienced in the imagination through the feelings of another'
      },
      {'word': 'Wistful', 'meaning': 'Having a feeling of vague longing'},
      {
        'word': 'Xenophobia',
        'meaning': 'Dislike of or prejudice against people from other countries'
      },
      {'word': 'Zealous', 'meaning': 'Having great energy or enthusiasm'},
      {
        'word': 'Aesthetic',
        'meaning': 'Concerned with beauty or appreciation of beauty'
      },
      {'word': 'Benevolent', 'meaning': 'Well-meaning and kind'},
      {'word': 'Cerebral', 'meaning': 'Intellectual rather than emotional'},
      {
        'word': 'Dichotomy',
        'meaning': 'A division between two opposing things'
      },
      {
        'word': 'Efficacious',
        'meaning': 'Effective in producing a desired result'
      },
      {'word': 'Furtive', 'meaning': 'Attempting to avoid notice or attention'},
      {'word': 'Grandiloquent', 'meaning': 'Pompous in speech or manner'},
      {'word': 'Hubris', 'meaning': 'Excessive pride or self-confidence'},
      {
        'word': 'Insidious',
        'meaning':
            'Proceeding in a gradual, subtle way, but with harmful effects'
      },
      {'word': 'Jocular', 'meaning': 'Fond of joking'},
      {'word': 'Kaleidoscopic', 'meaning': 'Constantly changing and colorful'},
      {'word': 'Lethargic', 'meaning': 'Sluggish and apathetic'},
      {'word': 'Meticulous', 'meaning': 'Showing great attention to detail'},
      {'word': 'Nebulous', 'meaning': 'Unclear, vague, or ill-defined'},
      {'word': 'Ostentatious', 'meaning': 'Characterized by vulgar display'},
      {'word': 'Pragmatic', 'meaning': 'Dealing with things practically'},
      {
        'word': 'Quizzical',
        'meaning': 'Indicating mild amusement or puzzlement'
      },
      {'word': 'Recondite', 'meaning': 'Little known or obscure'},
      {
        'word': 'Stolid',
        'meaning': 'Calm, dependable, and showing little emotion'
      },
      {'word': 'Truculent', 'meaning': 'Eager to argue or fight'},
      {'word': 'Undulate', 'meaning': 'Move with a wavelike motion'},
      {
        'word': 'Vestige',
        'meaning': 'A trace of something that is disappearing'
      },
      {
        'word': 'Winsome',
        'meaning': 'Attractive or appealing in a childlike way'
      },
      {'word': 'Yen', 'meaning': 'A strong desire or craving'},
      {'word': 'Zenith', 'meaning': 'The highest point'},
      {'word': 'Abstruse', 'meaning': 'Difficult to understand'},
      {
        'word': 'Bucolic',
        'meaning': 'Relating to the pleasant aspects of the countryside'
      },
      {
        'word': 'Capricious',
        'meaning': 'Given to sudden changes in mood or behavior'
      },
      {'word': 'Deleterious', 'meaning': 'Causing harm or damage'},
      {
        'word': 'Eclectic',
        'meaning': 'Deriving ideas from a broad range of sources'
      },
      {
        'word': 'Fastidious',
        'meaning': 'Very attentive to accuracy and detail'
      },
      {'word': 'Gregarious', 'meaning': 'Fond of company'},
      {
        'word': 'Halcyon',
        'meaning':
            'Denoting a period of time in the past that was idyllically happy'
      },
      {'word': 'Idiosyncratic', 'meaning': 'Peculiar or individual'},
      {'word': 'Jejune', 'meaning': 'Naive, simplistic, and superficial'},
      {
        'word': 'Knell',
        'meaning': 'The sound of a bell, especially for a death or funeral'
      },
      {'word': 'Laconic', 'meaning': 'Using very few words'},
      {'word': 'Munificent', 'meaning': 'Very generous'},
      {'word': 'Nascent', 'meaning': 'Just coming into existence'},
      {'word': 'Obdurate', 'meaning': 'Stubbornly refusing to change opinion'},
      {
        'word': 'Perspicacious',
        'meaning': 'Having a ready insight into things'
      },
      {'word': 'Quagmire', 'meaning': 'A difficult situation'},
      {'word': 'Rancor', 'meaning': 'Bitterness or resentfulness'},
    ];

    // Initialize the filtered list with all words
    filteredWordList = wordList;
  }

  // Filter the word list based on search input
  void filterWords(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredWordList = wordList;
      } else {
        filteredWordList = wordList
            .where((wordData) =>
                wordData['word']!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true, // Allow layout to adjust for keyboard
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Anola",
              style: TextStyle(
                fontSize: screenWidth * 0.08,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Column(
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
          ],
        ),
        toolbarHeight: screenHeight * 0.15, // Adjust height for AppBar content
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              focusNode: searchFocusNode,
              controller: searchController,
              onTap: () {
                FocusScope.of(context).requestFocus(searchFocusNode);
              },
              onChanged: (value) {
                filterWords(value);
              },
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              enableInteractiveSelection: true,
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey[600]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredWordList.length,
              // Removed itemExtent to let the widget determine its own height
              padding: EdgeInsets.zero,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final wordData = filteredWordList[index];
                final isLast = index == filteredWordList.length - 1;
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Wordpage(wordData: wordData),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.05, top: 8.0, bottom: 8.0),
                        child: Text(
                          wordData['word']!,
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      if (!isLast)
                        Divider(
                          color: Colors.grey[700],
                          thickness: 1,
                          indent: screenWidth * 0.05,
                          endIndent: 0,
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
