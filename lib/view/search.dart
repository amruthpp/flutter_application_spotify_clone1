import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'What do you want to listen to?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Start browsing',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 3 / 1.2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildCategoryCard('Music', Colors.pink),
                  _buildCategoryCard('Podcasts', Colors.teal),
                  _buildCategoryCard('Live Events', Colors.purple),
                  _buildCategoryCard('Home of I-Pop', Colors.blue),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Explore your genres',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              GridView.count(
                
                shrinkWrap: true,
                crossAxisCount: 6,
                childAspectRatio: 0.8,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                physics: BouncingScrollPhysics(),
                children: [
                  _buildGenreCard('Hindi Pop', 'assets/album7.jpeg'),
                  _buildGenreCard('Peppy', 'assets/album10.jpeg'),
                  _buildGenreCard('Peaceful', 'assets/album1.jpeg'),
                  _buildGenreCard('Hindi Pop', 'assets/album7.jpeg'),
                  _buildGenreCard('Peppy', 'assets/album10.jpeg'),
                  _buildGenreCard('Peaceful', 'assets/album1.jpeg'),
                  
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Browse all',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 3 / 1.2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildCategoryCard('Made For You', Colors.blue),
                  _buildCategoryCard('New Releases', Colors.green),
                  _buildCategoryCard('Hindi', Colors.pink),
                  _buildCategoryCard('Punjabi', Colors.purple),
                  _buildCategoryCard('Tamil', Colors.orange),
                  _buildCategoryCard('Telugu', Colors.red),
                  _buildCategoryCard('Made For You', Colors.blue),
                  _buildCategoryCard('New Releases', Colors.green),
                  _buildCategoryCard('Hindi', Colors.pink),
                  _buildCategoryCard('Punjabi', Colors.purple),
                  _buildCategoryCard('Tamil', Colors.orange),
                  _buildCategoryCard('Telugu', Colors.red),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title, Color color) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildGenreCard(String title, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.5), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}