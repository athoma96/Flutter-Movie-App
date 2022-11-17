import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'shortClick.dart';
import 'longClick.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movie App",
      home: MyHomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
///Action Genre
List extraction = ["Extraction",'Director: Sam Hargrave\nReleased Year: 2020', '6.7', '67%', "https://en.wikipedia.org/wiki/Extraction_(2020_film)", "https://www.imdb.com/title/tt8936646/", "1h 57m", "assets/images/Extraction1.jpeg", "Chris Hemsworth, Rudhraksh Jaiswal, Randeep Hooda"];
List upgrade = ["Upgrade",'Director: Leigh Whannell\nReleased Year: 2018', '7.5', '88%', "https://en.wikipedia.org/wiki/Upgrade_(film)", "https://www.imdb.com/title/tt6499752/", "1h 40m", "assets/images/Upgrade1.jpeg", "Logan Marshall-Green, Betty Gabriel, Harrison Gilbertson"];
List topgun = ["Top Gun: Maverick",'Director: Joseph Kosinski\nReleased Year: 2022', '8.4', '96%', "https://en.wikipedia.org/wiki/Top_Gun:_Maverick", "https://www.imdb.com/title/tt1745960/", "2h 11m", "assets/images/TopGun.jpeg", "Tom Cruise, Val Kilmer,  Miles Teller, Jennifer Connelly, Jon Hamm, Glen Powell"];
List grayman = ["The Gray Man", 'Director: Anthony Russo, Joe Russo\nReleased Year: 2022', '6.5', '46%', "https://en.wikipedia.org/wiki/The_Gray_Man_(2022_film)", "https://www.imdb.com/title/tt1649418/", "2h 2m", "assets/images/GrayMan.jpeg", " Ryan Gosling, Chris Evans, Ana de Armas, Jessica Henwick, Dhanush"];

///Animation Genre
List spiderman = ["Spider-Man: Into The Spider Verse",'Directors: Peter Ramsey, Bob Persichetti, Rodney Rothman\nReleased Year: 2018', '8.4', '97%', "https://en.wikipedia.org/wiki/Spider-Man:_Into_the_Spider-Verse", "https://www.imdb.com/title/tt4633694/", "1h 57m", "assets/images/SpiderMan1.jpeg", "Shameik Moore, Jake Johnson, Hailee Steinfeld, Mahershala Ali, Brian Tyree Henry,"];
List ratatouille = ["Ratatouille",'Director: Brad Bird\nReleased Year: 2007', '8.1', '96%', "https://en.wikipedia.org/wiki/Ratatouille_(film)", "https://www.imdb.com/title/tt0382932/", "1h 51m", "assets/images/Ratatouille.jpeg", "Patton Oswalt, Brad Garrett, Lou Romano, Brad Garett, Peter O'Toole"];
List moana = ["Moana", 'Directors: Ron Clements, John Musker\nReleased Year: 2016', '7.6', '95%', "https://en.wikipedia.org/wiki/Moana_(2016_film)", "https://www.imdb.com/title/tt3521164/", "1h 47m", "assets/images/Moana.jpeg", "Dwayne Johnson, Rachel House, Temuera Morrison, Jemaine Clement, Nicole Scherzinger"];
List incredibles = ["The Incredibles", 'Director: Brad Bird\nReleased Year: 2004', '8', '97%', "https://en.wikipedia.org/wiki/The_Incredibles", "https://www.imdb.com/title/tt0317705/", "1h 55m", "assets/images/Incredibles.jpeg", "Craig T. Nelson, Holly Hunter, Sarah Vowell, Spencer Fox, Jason Lee, Samuel L. Jackson"];

///Comedy Genre
List stepbrothers = ["Step Brothers", 'Director: Adam McKay\nReleased Year: 2008', '6.9', '55%', "https://en.wikipedia.org/wiki/Step_Brothers_(film)", "https://www.imdb.com/title/tt0838283/", "1h 38m", "assets/images/StepBrothers.jpeg", "Will Ferrell, John C. Reily,  Richard Jenkins, Mary Steenburgen, Adam Scott, Kathryn Hahn "];
List ted = ["Ted", 'Director: Seth McFarlane\nReleased Year: 2012', '6.9', '69%', "https://en.wikipedia.org/wiki/Ted_(film)", "https://www.imdb.com/title/tt1637725/", "1h 46m", "assets/images/Ted.jpeg", "Mark Wahlberg, Mila Kunis, Joel McHale, Giovanni Ribisi"];
List jumpstreet = ["21 Jump Street", 'Director: Phil Lord, Chris Miller\nReleased Year: 2012', '7.2', '85%', "https://en.wikipedia.org/wiki/21_Jump_Street_(film)", "https://www.imdb.com/title/tt1232829/", "1h 49m", "assets/images/JumpStreet.jpeg", "Jonah Hill, Channing Tatum, Brie Larson, Dave Franco, Dustin Nguyen"];
List hangover = ["The Hangover", 'Director: Todd Phillips\nReleased Year: 2009', '7.7', '79%', "https://en.wikipedia.org/wiki/The_Hangover", "https://www.imdb.com/title/tt1119646/", "1h 36m", "assets/images/Hangover.jpeg", "Bradley Cooper, Ed Helms, Zach Galifianakis, Heather Graham, Justin Bartha, Ken Jeong, Jeffrey Tambor."];

///Horror Genre
List conjuring = ["The Conjuring", 'Director: James Wan\nReleased Year: 2013', '7.5', '86%', "https://en.wikipedia.org/wiki/The_Conjuring", "https://www.imdb.com/title/tt1457767/", "1h 52m", "assets/images/Conjuring1.jpeg", "Vera Farmiga, Patrick Wilson, Ron Livingston, Lili Taylor"];
List it = ["IT", 'Director: Andrés Muschietti\nReleased Year: 2017', '7.3', '86%', "https://en.wikipedia.org/wiki/It_(2017_film)", "https://www.imdb.com/title/tt1396484/", "2h 15m", "assets/images/IT.jpeg", "Bill Skarsgård, Jaeden Lieberher, Jeremy Ray Taylor, Sophia Lillis, Finn Wolfhard, Wyatt Oleff, Chosen Jacobs, Jack Dylan Grazer, Nicholas Hamilton, Jackson Robert Scott"];
List barbarian = ["Barbarian", 'Director: Zach Cregger\nReleased Year: 2022', '7.1', '92%', "https://en.wikipedia.org/wiki/Barbarian_(2022_film)", "https://www.imdb.com/title/tt15791034/", "1h 42m", "assets/images/Barbarian.jpeg", " Georgina Campbell, Bill Skarsgård, Justin Long"];
List psycho = ["American Psycho", 'Director: Mary Harron\nReleased Year: 2000', '7.6', '68%', "https://en.wikipedia.org/wiki/American_Psycho_(film)", "https://www.imdb.com/title/tt0144084/", "1h 42m", "assets/images/AmericanPsycho.jpeg", "Christian Bale, Willem Dafoe, Jared Leto, Josh Lucas, Chloë Sevigny, Samantha Mathis, Cara Seymour"];

///Superhero Fiction Genre
List endgame = ["Avengers: Endgame",'Directors: Anthony Russo, Joe Russo\nReleased Year: 2019', '8.4', '94%', "https://en.wikipedia.org/wiki/Avengers:_Endgame", "https://www.imdb.com/title/tt4154796/", "3h 1m", "assets/images/Endgame.jpeg", "Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, Josh Brolin"];
List justiceleague = ["Zack Snyder's Justice League",'Director: Zack Snyder\nReleased Year: 2021', '8', '71%', "https://en.wikipedia.org/wiki/Zack_Snyder%27s_Justice_League", "https://www.imdb.com/title/tt12361974/", "4h 1m", "assets/images/JusticeLeague.jpeg", "Ben Affleck, Gal Gadot, Ray Fisher, Jason Momoa, Ezra Miller,Henry Cavill"];
List logan = ["Logan",'Director: James Mangold\nReleased Year: 2017', '8.1', '91%', "https://en.wikipedia.org/wiki/Logan_(film)", "https://www.imdb.com/title/tt3315342/", "2h 17m", "assets/images/Logan.jpeg", "Hugh Jackman, Patrick Stewart, Richard E. Grant, Boyd Holbrook, Stephen Merchant, Dafne Keen"];
List darkknight = ["The Dark Knight",'Director: Christopher Nolan\nReleased Year: 2008', '9', '94%', "https://en.wikipedia.org/wiki/The_Dark_Knight", "https://www.imdb.com/title/tt0468569/", "2h 32m", "assets/images/DarkKnight.jpeg", "Christian Bale, Michael Caine, Heath Ledger, Gary Oldman, Aaron Eckhart, Maggie Gyllenhaal, Morgan Freeman"];



class _MyHomePageState extends State<MyHomePage> {
  bool _pinned = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 120.0,
            backgroundColor: Colors.orangeAccent,
            flexibleSpace: FlexibleSpaceBar( centerTitle:true, title:Text('MOVIE APP',style: TextStyle(fontSize:25,color: Colors.black,fontWeight: FontWeight.bold, fontFamily: 'Raleway'),) ,
                background:Container(
                    decoration:
                    BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/Logo3.jpeg"), fit: BoxFit.cover)))),
          ),///header


          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 60.0,
            backgroundColor: Colors.orangeAccent,
            flexibleSpace: FlexibleSpaceBar(title: Text("ACTION", textScaleFactor: 2, style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold, fontFamily: 'Raleway')),),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(margin:const EdgeInsets.all(10.0),width: 320.0, padding:const EdgeInsets.all(8.0),
                    child:ListTile( leading: const Image(image:AssetImage("assets/images/Extraction.jpeg")) ,
                      title: Text('${extraction[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${extraction[1]}',style: const TextStyle(fontSize: 20, fontFamily: 'Raleway',color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: extraction[0], Image: extraction[7], urls: extraction[5]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: extraction[0], Info: extraction[1], Cast: extraction[8], Duration: extraction[6], IMDB: extraction[2], Rotten: extraction[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launch(extraction[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launch(extraction[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/Upgrade.jpeg")) ,
                      title: Text('${upgrade[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${upgrade[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: upgrade[0], urls: upgrade[5], Image: upgrade[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: upgrade[0], Info: upgrade[1], Cast: upgrade[8], Duration: upgrade[6], IMDB: upgrade[2], Rotten: upgrade[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(upgrade[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(upgrade[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/TopGun.jpeg")) ,
                      title: Text('${topgun[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${topgun[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: topgun[0],urls: topgun[5], Image: topgun[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: topgun[0], Info: topgun[1], Cast: topgun[8], Duration: topgun[6], IMDB: topgun[2], Rotten: topgun[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(topgun[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(topgun[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/GrayMan.jpeg")) ,
                      title: Text('${grayman[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${grayman[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: grayman[0],urls: grayman[5], Image: grayman[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: grayman[0], Info: grayman[1], Cast: grayman[8], Duration: grayman[6], IMDB: grayman[2], Rotten: grayman[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(grayman[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(grayman[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),
                ],
              ),
            ),
          ),


          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 60.0,
            backgroundColor: Colors.orangeAccent,
            flexibleSpace: const FlexibleSpaceBar(title: Text("ANIMATION", textScaleFactor: 2,style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold),),),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/SpiderMan.jpeg")) ,
                      title: Text('${spiderman[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${spiderman[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: spiderman[0],urls: spiderman[5], Image: spiderman[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items: [PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: spiderman[0], Info: spiderman[1], Cast: spiderman[8], Duration: spiderman[6], IMDB: spiderman[2], Rotten: spiderman[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                          PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(spiderman[5])},),
                          PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(spiderman[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/Ratatouille.jpeg")) ,
                      title: Text('${ratatouille[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),
                      subtitle: Text('${ratatouille[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: ratatouille[0],urls: ratatouille[5], Image: ratatouille[7],))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: ratatouille[0], Info: ratatouille[1], Cast: ratatouille[8], Duration: ratatouille[6], IMDB: ratatouille[2], Rotten: ratatouille[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                          PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(ratatouille[5])},),
                          PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(ratatouille[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/Moana.jpeg")) ,
                      title: Text('${moana[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${moana[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: moana[0], urls: moana[5], Image: moana[7],))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items: [PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: moana[0], Info: moana[1], Cast: moana[8], Duration: moana[6], IMDB: moana[2], Rotten: moana[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                          PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(moana[5])},),
                          PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(moana[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/Incredibles.jpeg")) ,
                      title: Text('${incredibles[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${incredibles[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: incredibles[0],urls: incredibles[5], Image: incredibles[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items: [PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: incredibles[0], Info: incredibles[1], Cast: incredibles[8], Duration: incredibles[6], IMDB: incredibles[2], Rotten: incredibles[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                          PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(incredibles[5])},),
                          PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(incredibles[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),
                ],
              ),
            ),
          ),


          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 60.0,
            backgroundColor: Colors.orangeAccent,
            flexibleSpace: const FlexibleSpaceBar(title: Text("COMEDY", style: TextStyle(color:Colors.black, fontSize: 29,fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/StepBrothers.jpeg")) ,
                      title: Text('${stepbrothers[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "Raleway", color: Colors.black),),
                      subtitle: Text('${stepbrothers[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: stepbrothers[0], urls: stepbrothers[5], Image: stepbrothers[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items: [PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: stepbrothers[0], Info: stepbrothers[1], Cast: stepbrothers[8], Duration: stepbrothers[6], IMDB: stepbrothers[2], Rotten: stepbrothers[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(stepbrothers[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(stepbrothers[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/Ted.jpeg")) ,
                      title: Text('${ted[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Raleway'),),
                      subtitle: Text('${ted[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: ted[0],urls: ted[5], Image: ted[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: ted[0], Info: ted[1], Cast: ted[8], Duration: ted[6], IMDB: ted[2], Rotten: ted[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(ted[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(ted[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/JumpStreet.jpeg")) ,
                      title: Text('${jumpstreet[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${jumpstreet[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: jumpstreet[0],urls: jumpstreet[5], Image: jumpstreet[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: jumpstreet[0], Info: jumpstreet[1], Cast: jumpstreet[8], Duration: jumpstreet[6], IMDB: jumpstreet[2], Rotten: jumpstreet[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(jumpstreet[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(jumpstreet[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/Hangover.jpeg")) ,
                      title: Text('${hangover[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${hangover[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: hangover[0],urls: hangover[5], Image: hangover[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: hangover[0], Info: hangover[1], Cast: hangover[8], Duration: hangover[6], IMDB: hangover[2], Rotten: hangover[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(hangover[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(hangover[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),
                ],
              ),
            ),
          ),


          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 60.0,
            backgroundColor: Colors.orangeAccent,
            flexibleSpace: const FlexibleSpaceBar(title: Text("HORROR", style: TextStyle(color:Colors.black, fontSize: 29, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/Conjuring.jpeg")) ,
                      title: Text('${conjuring[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${conjuring[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: conjuring[0],urls: conjuring[5], Image: conjuring[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items: [PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: conjuring[0], Info: conjuring[1], Cast: conjuring[8], Duration: conjuring[6], IMDB: conjuring[2], Rotten: conjuring[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(conjuring[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(conjuring[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/IT.jpeg")) ,
                      title: Text('${it[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${it[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: it[0],urls: it[5], Image: it[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: it[0], Info: it[1], Cast: it[8], Duration: it[6], IMDB: it[2], Rotten: it[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(it[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(it[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/Barbarian.jpeg")) ,
                      title: Text('${barbarian[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${barbarian[1]}',style: const TextStyle(fontSize: 15, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: barbarian[0],urls: barbarian[5], Image: barbarian[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: barbarian[0], Info: barbarian[1], Cast: barbarian[8], Duration: barbarian[6], IMDB: barbarian[2], Rotten: barbarian[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(barbarian[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(barbarian[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/AmericanPsycho.jpeg")) ,
                      title: Text('${psycho[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${psycho[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: psycho[0],urls: psycho[5], Image: psycho[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: psycho[0], Info: psycho[1], Cast: psycho[8], Duration: psycho[6], IMDB: psycho[2], Rotten: psycho[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(psycho[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(psycho[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),
                ],
              ),
            ),
          ),


          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 60.0,

            backgroundColor: Colors.orangeAccent,
            flexibleSpace: const FlexibleSpaceBar(title: Text("SUPERHERO FICTION", textScaleFactor: 1.3, style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Raleway')),),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/Endgame.jpeg")) ,
                      title: Text('${endgame[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${endgame[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: endgame[0],urls: endgame[5], Image: endgame[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: endgame[0], Info: endgame[1], Cast: endgame[8], Duration: endgame[6], IMDB: endgame[2], Rotten: endgame[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(endgame[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(endgame[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/JusticeLeague.jpeg")) ,
                      title: Text('${justiceleague[0]}\n', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${justiceleague[1]}',style: const TextStyle(fontSize: 15, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: justiceleague[0],urls: justiceleague[5], Image: justiceleague[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: justiceleague[0], Info: justiceleague[1], Cast: justiceleague[8], Duration: justiceleague[6], IMDB: justiceleague[2], Rotten: justiceleague[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(justiceleague[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(justiceleague[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/Logan.jpeg")) ,
                      title: Text('${logan[0]}\n', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${logan[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: logan[0],urls: logan[5], Image: logan[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: logan[0], Info: logan[1], Cast: logan[8], Duration: logan[6], IMDB: logan[2], Rotten: logan[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(logan[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(logan[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),

                  Container(margin:EdgeInsets.all(10.0),width: 320.0, padding:EdgeInsets.all(8.0),
                    child:ListTile(leading: const Image(image:AssetImage("assets/images/DarkKnight.jpeg")) ,
                      title: Text('${darkknight[0]}\n', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Raleway', color: Colors.black),),
                      subtitle: Text('${darkknight[1]}',style: const TextStyle(fontSize: 20, color: Colors.black)),
                      onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (context)=> ShortClick(Name: darkknight[0],urls: darkknight[5], Image: darkknight[7]))),
                      onLongPress:()=>{ showMenu( position: const RelativeRect.fromLTRB(150, 350, 250, 250),
                          items:[PopupMenuItem(
                            padding: EdgeInsets.zero,child:ElevatedButton(
                            child:const Text("Movie Info",style: TextStyle(fontSize: 17),),
                            onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => LongClick(Name: darkknight[0], Info: darkknight[1], Cast: darkknight[8], Duration: darkknight[6], IMDB: darkknight[2], Rotten: darkknight[3],))),
                            style: ElevatedButton.styleFrom( primary: Colors.transparent, fixedSize: Size(166, 60)),
                          ),
                          ),
                            PopupMenuItem(child: const Text("      IMDb"), onTap: ()=> {launchURL(darkknight[5])},),
                            PopupMenuItem(child: const Text("      Wikipedia"), onTap: ()=> {launchURL(darkknight[4])},)
                          ],
                          context: context)
                      },),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: Colors.orange[100]),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),

    );
  }

}


launchURL( String url)
{
  launch(url);
}



