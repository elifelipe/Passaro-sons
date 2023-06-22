import 'package:flutter/material.dart';
import 'ad_widget.dart';
import 'audio_player_screen.dart';
import 'list_card.dart';

class CardScreen extends StatefulWidget {
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List<CardData> filteredCardList = [];
  List<CardData> allCardList = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    allCardList = cardList;
    filteredCardList = allCardList;
    super.initState();
    loadDataDelayed();
  }

  void loadDataDelayed() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      filteredCardList = allCardList;
    });
  }

  void filterCards(String query) {
    setState(() {
      filteredCardList = allCardList
          .where(
              (card) => card.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void resetCards() {
    setState(() {
      filteredCardList = allCardList;
      searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passaros sons'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              final String? selectedTitle = await showSearch(
                context: context,
                delegate: CardSearchDelegate(cardList: cardList),
              );
              if (selectedTitle != null) {
                filterCards(selectedTitle);
              } else {
                resetCards();
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              resetCards();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
              child: const adWidget(
            adScreem: adWidget.homeScreem,
          )),
          Expanded(
            child: ListView.builder(
              itemCount: filteredCardList.length,
              itemBuilder: (context, index) {
                final cardData = filteredCardList[index];
                return FutureBuilder<void>(
                  future: cardData.imageLoadingFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    }
                    if (snapshot.hasError) {
                      return Text('Erro ao carregar imagem');
                    }
                    return buildCard(context, cardData);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context, CardData cardData) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AudioPlayerScreen(
                title: cardData.title,
                audioUrl: cardData.audioUrl,
                imageUrl: cardData.imageUrl,
              ),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              cardData.imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardData.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    cardData.description,
                    style: TextStyle(fontSize: 16),
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

class CardSearchDelegate extends SearchDelegate<String> {
  final List<CardData> cardList;

  CardSearchDelegate({required this.cardList});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final filteredCards = cardList
        .where((card) => card.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredCards.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(filteredCards[index].title),
          onTap: () {
            close(context, filteredCards[index].title);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? []
        : cardList
            .where((card) =>
                card.title.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestionList[index].title),
          onTap: () {
            close(context, suggestionList[index].title);
          },
        );
      },
    );
  }
}
