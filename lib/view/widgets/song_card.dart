import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  const SongCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Column(
        children: [
          Image(image: image
          ,width: 140,height: 140,),
          Text("Bad Bunny,Drake,Justin Bieber,Taylor Swift,...",
          style: Theme.of(context).textTheme.titleSmall,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,)
        ],
      ),
    );
  }
}