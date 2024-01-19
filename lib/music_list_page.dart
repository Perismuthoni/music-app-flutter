import 'package:flutter/material.dart';

class MuscListPage extends StatefulWidget {
  const MuscListPage({super.key});

  @override
  State<MuscListPage> createState() => _MuscListPageState();
}

class _MuscListPageState extends State<MuscListPage> {
  List<Map<String, dynamic>> feedItems = [
    {
      "name": "Sweather Waether",
      "title": "The Neighborhood",
      "profile":
          "https://i0.wp.com/dubawa.org/wp-content/uploads/2021/01/sarkodie.jpg",
      "is_audio": true
    },
    {
      "name": "Someone You LOved",
      "title": "Lewis Capaldi",
      "profile":
          "https://people.com/thmb/_pviCLYTI61l1La90dhOcKViG-k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(749x333:751x335)/lewis-capaldi-2-0907-53f17a173d754e4cbf282d40e85401b1.jpg",
      "is_audio": false
    },
    {
      "name": "The Hills",
      "title": "The Weekend",
      "profile":
          "https://static.euronews.com/articles/stories/07/60/76/12/1024x538_cmsv2_ff9b3851-2a13-5de3-8b19-c0ab081608c1-7607612.jpg",
      "is_audio": false
    },
    {
      "name": "Happier Than Ever",
      "title": "Billie Eiish",
      "profile":
          "https://media.glamourmagazine.co.uk/photos/64ccca835c915d8a7f4f8bb8/4:3/w_4696,h_3522,c_limit/BILLIE%20EILISH%20040823%20DEFAULT-GettyImages-1201586589.jpg",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://i0.wp.com/dubawa.org/wp-content/uploads/2021/01/sarkodie.jpg",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://i0.wp.com/dubawa.org/wp-content/uploads/2021/01/sarkodie.jpg",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://i0.wp.com/dubawa.org/wp-content/uploads/2021/01/sarkodie.jpg",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "The Constant",
      "profile":
          "https://i0.wp.com/dubawa.org/wp-content/uploads/2021/01/sarkodie.jpg",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://i0.wp.com/dubawa.org/wp-content/uploads/2021/01/sarkodie.jpg",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "More Hitz",
      "profile":
          "https://i0.wp.com/dubawa.org/wp-content/uploads/2021/01/sarkodie.jpg",
      "is_audio": false
    }
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      child: ListView.separated(
          itemBuilder: (BuildContext context, int pos) {
            Map<String, dynamic> item = feedItems[pos];

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(
                      item["is_audio"] ? 40 : 12),
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: Stack(
                      children: [
                        Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Image.network(
                              item["profile"],
                              fit: BoxFit.cover,
                            )),
                        Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: item["is_audio"]
                                ? const Icon(
                                    Icons.play_arrow,
                                    size: 40,
                                    color: Colors.white,
                                  )
                                : Container())
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: RichText(
                      text: TextSpan(
                        text: "${item["name"]}\n",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text: item["title"],
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 14)),
                        ],
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int pos) {
            return const SizedBox(
              height: 16,
            );
          },
          itemCount: feedItems.length),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
