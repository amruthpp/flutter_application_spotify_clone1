// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_spotify_clone1/view/widgets/song_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors:[
                  Colors.white.withOpacity(0.4),
                  Colors.black.withOpacity(0),
                ] )
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea( 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                     
                    Text("Recently played",style: Theme.of(context).textTheme.headlineSmall,),
                    
                    Row(
                      children: [
                        Icon(Icons.history),
                        SizedBox(width: 20,),
                        Icon(Icons.settings)
                    
                      ],
                    ),
                      ]
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        AlbumCard(label: "Best mode", image: AssetImage("assets/album3.jpeg"),),
                        SizedBox(width: 16,),
                         AlbumCard(label: "Motivation mode", image: AssetImage("assets/album5.jpeg")),
                           SizedBox(width: 16,),
                          AlbumCard(label: "Top 50 global", image: AssetImage("assets/top50.jpeg")),
                            SizedBox(width: 16,),
                           AlbumCard(label: "Romantic", image: AssetImage("assets/album7.jpeg")),
                             SizedBox(width: 16,),
                            AlbumCard(label: "top 10", image: AssetImage("assets/album8.jpeg")),
                              SizedBox(width: 16,),
                               AlbumCard(label: "Best mode", image: AssetImage("assets/album2.jpeg")
                               ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Good evening",style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        SizedBox(height: 16,),
                        Row(
                          children: [
                            RowAlbumCard(image: AssetImage("assets/top50.jpeg",),
                            label: "Top 50 - Global",),
                            SizedBox(width: 16,),
                             RowAlbumCard(image: AssetImage("assets/album6.jpeg",),
                             label: "Best Mode")
                          ],
                        ),
                        SizedBox(height: 16,),
                         Row(
                          children: [
                            RowAlbumCard(image: AssetImage("assets/album12.jpeg",),
                            label: "Top 20 - India "),
                            SizedBox(width: 16,),
                             RowAlbumCard(image: AssetImage("assets/album2.jpeg",),label: "top 50")
                          ],
                        ),
                        SizedBox(height: 16,),
                         Row(
                          children: [
                            RowAlbumCard(image: AssetImage("assets/album1.jpeg",),
                            label: "Rap World"),
                            SizedBox(width: 16,),
                             RowAlbumCard(image: AssetImage("assets/album3.jpeg",),
                             label: "Trending")
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Based on your recent listening",
                        style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20
                        ),
                        child: Row(
                          children: [
                            SongCard(image: AssetImage("assets/album1.jpeg"),),
                            SizedBox(width: 16,),
                             SongCard(image: AssetImage("assets/album2.jpeg"),),
                               SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album3.jpeg"),),
                                SizedBox(width: 16,),
                               SongCard(image: AssetImage("assets/album4.jpeg"),),
                                 SizedBox(width: 16,),
                                SongCard(image: AssetImage("assets/album5.jpeg"),),
                                  SizedBox(width: 16,),
                                 SongCard(image: AssetImage("assets/album6.jpeg"),),
                                   SizedBox(width: 16,),
                                  SongCard(image: AssetImage("assets/album7.jpeg"),),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Recommeended Radio",
                        style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20
                        ),
                        child: Row(
                          children: [
                            SongCard(image: AssetImage("assets/album8.jpeg"),),
                            SizedBox(width: 16,),
                             SongCard(image: AssetImage("assets/album5.jpeg"),),
                               SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album11.jpeg"),),
                                SizedBox(width: 16,),
                               SongCard(image: AssetImage("assets/album12.jpeg"),),
                                 SizedBox(width: 16,),
                                SongCard(image: AssetImage("assets/album3.jpeg"),),
                                  SizedBox(width: 16,),
                                 SongCard(image: AssetImage("assets/album6.jpeg"),),
                                   SizedBox(width: 16,),
                                  SongCard(image: AssetImage("assets/album7.jpeg"),),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Best Of Best",
                        style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20
                        ),
                        child: Row(
                          children: [
                            SongCard(image: AssetImage("assets/album12.jpeg"),),
                            SizedBox(width: 16,),
                             SongCard(image: AssetImage("assets/album11.jpeg"),),
                               SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album1.jpeg"),),
                                SizedBox(width: 16,),
                               SongCard(image: AssetImage("assets/album9.jpeg"),),
                                 SizedBox(width: 16,),
                                SongCard(image: AssetImage("assets/album1.jpeg"),),
                                  SizedBox(width: 16,),
                                 SongCard(image: AssetImage("assets/album9.jpeg"),),
                                   SizedBox(width: 16,),
                                  SongCard(image: AssetImage("assets/album2.jpeg"),),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ) ,
          )
        ],
      )
     );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    super.key, required this.image, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        
        decoration: BoxDecoration(color:
        Colors.white10 ,
        borderRadius: BorderRadius.circular(4)
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
            height: 48,
            width: 48,
            fit: BoxFit.cover,
            ),
            SizedBox(width: 8,),
            Text(label)
          ],
        ),
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const AlbumCard({
    super.key,
     required this.image,
      required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: image,
        width: 120,height: 120,
        fit: BoxFit.cover,),
        SizedBox(height: 10,),
        Text(label)
      ],
    );
  }
}