import 'package:flutter/material.dart';
import 'package:music_player_song_coverpage_ui/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongCoverpage extends StatefulWidget {
  const SongCoverpage({super.key});

  @override
  State<SongCoverpage> createState() => _SongCoverpageState();
}

class _SongCoverpageState extends State<SongCoverpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 15),
                //back button and menu bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.arrow_back)),
                    ),
                    Text("P L A Y  L I S T"),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.menu)),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                //cover art ,artist name,song name
                NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "lib/images/last leaves of autumn.jpg",
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Last Leaves of Autumn",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Zleepyfred",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.favorite, color: Colors.red, size: 32),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                //start time, shuffle button, repeat button ,end time
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("0:00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("2:35"),
                  ],
                ),

                const SizedBox(height: 30),

                //linear bar
                NeuBox(
                  child: LinearPercentIndicator(
                    lineHeight: 15,
                    percent: 0.8,
                    progressColor: Colors.black,
                    barRadius: Radius.circular(100),
                    backgroundColor: Colors.transparent,
                  ),
                ),

                const SizedBox(height: 40),

                //previous song ,pause play,skip next song
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: NeuBox(
                          child: Icon(Icons.skip_previous, size: 32),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: NeuBox(
                            child: Icon(Icons.play_arrow, size: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: NeuBox(child: Icon(Icons.skip_next, size: 32)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
