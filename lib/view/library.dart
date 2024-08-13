import 'package:flutter/material.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Your Library'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                _buildChip('Playlists'),
                SizedBox(width: 10),
                _buildChip('Artists'),
                SizedBox(width: 10,),
                _buildChip('favorite'),
                SizedBox(width: 10),
                
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSectionTitle('Recents'),
                _buildPlaylistItem('Liked Songs', '67 songs', Icons.favorite, Colors.purple),
                _buildPlaylistItem('Malayalam 1990s-2010s Part IV', 'EnhU', 'assets/album1.jpeg'),
                _buildPlaylistItem('Top Hindi Songs', 'Aryan Lal', 'assets/album2.jpeg'),
                _buildPlaylistItem('2006 to 2010 Malayalam', 'Anandhukumar', 'assets/album3.jpeg'),
                _buildPlaylistItem('Malayalam old melody hits | Evergreen |', 'ashinjith', 'assets/album4.jpeg'),
                _buildPlaylistItem('80s Love Malayalam', 'Spotify', 'assets/album5.jpeg'),
                _buildArtistItem('M. G. Sreekumar', 'assets/album6.jpeg'),
                _buildArtistItem('Kannur Rajan', 'assets/album7.jpeg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey[900],
      labelStyle: TextStyle(color: Colors.white),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  Widget _buildPlaylistItem(String title, String subtitle, dynamic leading, [Color? iconColor]) {
    return ListTile(
      leading: leading is IconData
          ? Icon(leading, color: iconColor, size: 40)
          : Image.asset(leading, width: 50, height: 50, fit: BoxFit.cover),
      title: Text(title, style: TextStyle(color: Colors.white)),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
      onTap: () {},
    );
  }

  Widget _buildArtistItem(String title, String imagePath) {
    return ListTile(
      leading: Image.asset(imagePath, width: 50, height: 50, fit: BoxFit.cover),
      title: Text(title, style: TextStyle(color: Colors.white)),
      subtitle: Text('Artist', style: TextStyle(color: Colors.grey)),
      onTap: () {},
    );
  }
}