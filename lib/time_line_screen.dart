import 'package:flutter/material.dart';

import 'messenger_screen.dart';


class StoryModel {
  final String? photoProfile;
  final String? story;
  final String? name;
  StoryModel({
    @required this.photoProfile,
    @required this.name,
    @required this.story,
  });
}
class PostModel {
  final String? photoProfile;
  final String? nameProfile;
  final String? posts;
   int counter;
   bool isLiked;
   bool isComment;
   bool isShare;

  PostModel({
    @required this.photoProfile,
    @required this.nameProfile,
    @required this.posts,
    this.isLiked = false,
    this.counter = 0,
    this.isComment = false,
    this.isShare = false,
  });
}

class TimeLineScreen extends StatefulWidget {
  const TimeLineScreen({Key? key}) : super(key: key);

  @override
  _TimeLineScreenState createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen> {


  List<StoryModel> story = [
    StoryModel(
      photoProfile: 'assets/images/amin.jpg',
      name: 'Amin Mohamed',
      story: 'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',

    ),
    StoryModel(
      photoProfile: 'assets/images/attris.png',
      name: 'Haitham Atrees',
      story: 'https://images.ctfassets.net/hrltx12pl8hq/3MbF54EhWUhsXunc5Keueb/60774fbbff86e6bf6776f1e17a8016b4/04-nature_721703848.jpg?fit=fill&w=480&h=270',
    ),
    StoryModel(
      photoProfile: 'assets/images/elgrem.JPG',
      name: 'Mostafa Abdul ghany',
      story: 'https://images.ctfassets.net/hrltx12pl8hq/66lRNN2kfHcVSUMrmrcKxf/76b78071032586ff9766d8eb51592f21/free-nature-images.jpg?fit=fill&w=840&h=350',
    ),
    StoryModel(
      photoProfile: 'assets/images/fahd.png',
      name: 'Fahd Ibrahim',
      story: 'https://assets-global.website-files.com/6005fac27a49a9cd477afb63/60576840e7d265198541a372_bavassano_homepage_gp.jpg',
    ),
    StoryModel(
      photoProfile: 'assets/images/karim.jpg',
      name: 'Karim Hamed',
        story: 'https://media.istockphoto.com/photos/colored-powder-explosion-on-black-background-picture-id1057506940?k=20&m=1057506940&s=612x612&w=0&h=3j5EA6YFVg3q-laNqTGtLxfCKVR3_o6gcVZZseNaWGk=',
    ),
    StoryModel(
      photoProfile: 'assets/images/amin.jpg',
      name: 'Amin Mohamed',
      story: 'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    ),
    StoryModel(
      photoProfile: 'assets/images/attris.png',
      name: 'Haitham Atrees',
      story: 'https://images.ctfassets.net/hrltx12pl8hq/3MbF54EhWUhsXunc5Keueb/60774fbbff86e6bf6776f1e17a8016b4/04-nature_721703848.jpg?fit=fill&w=480&h=270',
    ),
    StoryModel(
      photoProfile: 'assets/images/elgrem.JPG',
      name: 'Mostafa Abdul ghany',
      story: 'https://images.ctfassets.net/hrltx12pl8hq/66lRNN2kfHcVSUMrmrcKxf/76b78071032586ff9766d8eb51592f21/free-nature-images.jpg?fit=fill&w=840&h=350',
    ),
    StoryModel(
      photoProfile: 'assets/images/fahd.png',
      name: 'Fahd Ibrahim',
      story: 'https://assets-global.website-files.com/6005fac27a49a9cd477afb63/60576840e7d265198541a372_bavassano_homepage_gp.jpg',
    ),
    StoryModel(
      photoProfile: 'assets/images/karim.jpg',
      name: 'Karim Hamed',
      story: 'https://media.istockphoto.com/photos/colored-powder-explosion-on-black-background-picture-id1057506940?k=20&m=1057506940&s=612x612&w=0&h=3j5EA6YFVg3q-laNqTGtLxfCKVR3_o6gcVZZseNaWGk=',
    ),
  ];
  List<PostModel> post = [
    PostModel(
        photoProfile: 'assets/images/amin.jpg',
        nameProfile: 'Amin Mohamed',
        posts: 'A creative man is motivated by the desire to achieve, not by the desire to beat others.',

    ),
    PostModel(
        photoProfile: 'assets/images/attris.png',
        nameProfile: 'Haitham Atrees',
        posts: 'I’m OLD Enough To KNOW what’s BAD for ME and YOUNG Enough To Do It.'),
    PostModel(
        photoProfile: 'assets/images/elgrem.JPG',
        nameProfile: 'Mostafa Abdul ghany',
        posts: 'Some people are in your friend list … not to be your friend but to spy on your life.'),
    PostModel(
        photoProfile: 'assets/images/fahd.png',
        nameProfile: 'Fahd Ibrahim',
        posts: 'Stop being afraid of what could go wrong, and start being positive about what could go right!'),
    PostModel(
        photoProfile: 'assets/images/karim.jpg',
        nameProfile: 'Karim Hamed',
        posts: 'There is always one who suffers more than you do, so you should be optimistic😊'),
    PostModel(
        photoProfile: 'assets/images/rabee.jpg',
        nameProfile: 'Haitham Rabee',
        posts: 'When you love your enemy is when he feels of his emptiness👌👌'),
    PostModel(
        photoProfile: 'assets/images/amin.jpg',
        nameProfile: 'Amin Mohamed',
        posts: 'A creative man is motivated by the desire to achieve, not by the desire to beat others.'),
    PostModel(
        photoProfile: 'assets/images/attris.png',
        nameProfile: 'Haitham Atrees',
        posts: 'I’m OLD Enough To KNOW what’s BAD for ME and YOUNG Enough To Do It.'),
    PostModel(
        photoProfile: 'assets/images/elgrem.JPG',
        nameProfile: 'Mostafa Abdul ghany',
        posts: 'Some people are in your friend list … not to be your friend but to spy on your life.'),
    PostModel(
        photoProfile: 'assets/images/fahd.png',
        nameProfile: 'Fahd Ibrahim',
        posts: 'Stop being afraid of what could go wrong, and start being positive about what could go right!'),
    PostModel(
        photoProfile: 'assets/images/karim.jpg',
        nameProfile: 'Karim Hamed',
        posts: 'There is always one who suffers more than you do, so you should be optimistic😊'),
    PostModel(
        photoProfile: 'assets/images/rabee.jpg',
        nameProfile: 'Haitham Rabee',
        posts: 'When you love your enemy is when he feels of his emptiness👌👌'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading : false,
          titleSpacing: 20.0,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text(
            'facebook',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 32.0,
                backgroundColor: Color.fromRGBO(240, 242, 245, 1),
                child: Icon(
                  Icons.search,
                  size: 28.0,
                  color: Colors.black,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MessengerScreen()),
                );
              },
              icon: const CircleAvatar(
                radius: 32.0,
                backgroundColor:  Color.fromRGBO(240, 242, 245, 1),
                child: Icon(
                  Icons.messenger_outline_sharp,
                  size: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          bottom:  const TabBar(
            tabs: [
              Tab(
                  icon: Icon(
                Icons.home_outlined,
                color: Colors.black87,
                size: 30,
              )),
              Tab(
                 icon: Icon(
                   Icons.video_library_outlined,
                   color: Colors.black87,
                   size: 30,
                 ),
              ),
              Tab(
                  icon: Icon(
                Icons.storefront_outlined,
                color: Colors.black87,
                size: 30,
              )),
              Tab(
                  icon: Icon(
                Icons.account_circle_outlined ,
                color: Colors.black87,
                size: 30,
              )),
              Tab(
                  icon: Icon(
                Icons.notifications_none,
                color: Colors.black87,
                size: 30,
              )),
              Tab(
                  icon: Icon(
                Icons.menu,
                color: Colors.black87,
                size: 30,
              )),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 20.0,
                  end: 20.0,
                  top: 20.0,
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage('https://scontent.fcai20-1.fna.fbcdn.net/v/t39.30808-6/242155274_812375516095209_2643822874605262967_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=Bv57pP7MygYAX-ARr_0&_nc_ht=scontent.fcai20-1.fna&oh=b414e411ee831113a6e521af9ba2c2ed&oe=616F5C48'),
                          radius: 22,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      child: Container(
                        height: 40,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'What\'s on your mind?',
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                            contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(32.0)),
                            ),
                            //prefixIcon: Icon(Icons.email),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      label: const Text('Live', style: TextStyle(color: Colors.grey,),),
                      icon: const Icon(Icons.video_call_rounded, color: Colors.red,),
                      onPressed: () { },
                    ),
                    const VerticalDivider(
                      color: Colors.grey,
                      indent:20,
                      endIndent: 20,
                    ),
                    TextButton.icon(
                      label: const Text('Photo', style: TextStyle(color: Colors.grey,),),
                      icon: const Icon(Icons.photo_library, color: Colors.green,),
                      onPressed: () { },
                    ),
                    const VerticalDivider(
                      color: Colors.grey,
                      indent:20,
                      endIndent: 20,
                    ),
                    TextButton.icon(
                      label: const Text('Room', style: TextStyle(color: Colors.grey,),),
                      icon: const Icon(Icons.video_call_rounded, color: Colors.deepPurple,),
                      onPressed: () { },
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 6,
              ),
              Container(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      buildFacebookStory(story[index]),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 6.0,
                  ),
                  itemCount: story.length,
                ),
              ),
              const Divider(
                thickness: 12,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildPostScreen(post[index]),
                separatorBuilder: (context, index) => const Divider(
                  thickness: 12,
                  height: 2,
                ),
                itemCount: post.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFacebookStory(StoryModel story) => Row(
    children: [
      Container(
        width: 101,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children:  [
            Image(
              image: NetworkImage('${story.story}'),
              height: 200,
              width: 100,
              fit: BoxFit.cover,
            ),
            Padding(
              padding:  const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 18,
                backgroundColor:Colors.indigo,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('${story.photoProfile}'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 175,
                start: 4,
              ),
              child: Text(
                '${story.name}',
                style: const TextStyle(color: Colors.white),
                maxLines: 1,
                overflow:TextOverflow.ellipsis,

              ),
            ),
          ],
        ),
      ),
    ],
  );
  Widget buildPostScreen(PostModel post) => Container(
    width: 60.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              '${post.photoProfile}',
            ),
          ),
          title: Text(
            '${post.nameProfile}',
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: const [
              Text('16m'),
              SizedBox(
                width: 2.0,
              ),
              Icon(
                Icons.sports_basketball_outlined,
                size: 14,
              ),
            ],
          ),
          trailing: const Icon(Icons.close),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
            bottom: 5.0,
            end:20.0,
          ),
          child: Text(
            '${post.posts}',
            maxLines: 9,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // Image.asset('assets/images/w.jpeg'),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: post.isLiked
                        ? Colors.blueAccent
                        : const Color.fromRGBO(0, 0, 1, 0),
                    child: Icon(
                      Icons.thumb_up,
                      color: post.isLiked
                          ? Colors.white
                          : const Color.fromRGBO(0, 0, 1, 0),
                      size: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 2.0,
                  ),
                  // Text('${_isLiked ? _counter: ''}'),
                  post.isLiked ? Text(post.counter.toString()) : const SizedBox(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('31 Comments'),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('130 Shares'),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.black12,
          height: 0,
          indent: 20,
          endIndent: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 10,
              end:10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                    onPressed: (){
                      setState(() {
                        post.isLiked = !post.isLiked;
                        post.isLiked ? post.counter++  : post.counter--;
                      });
                    },
                    icon: Icon(
                      post.isLiked ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
                      color: post.isLiked ? Colors.blueAccent : Colors.grey,
                    ),
                    label: Text(
                        'Like',
                        style: TextStyle(
                          color: post.isLiked ? Colors.blueAccent : Colors.grey,
                        ),
                    ),
                ),
                TextButton.icon(
                  onPressed: (){
                    setState(() {
                      post.isComment = !post.isComment;
                    });
                  },
                  icon: Icon(
                    Icons.mode_comment_outlined,
                    color: post.isComment ? Colors.blueAccent : Colors.grey,
                  ),
                  label: Text(
                    'Comment',
                    style: TextStyle(
                      color: post.isComment ? Colors.blueAccent : Colors.grey,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: (){
                    setState(() {
                      post.isShare = !post.isShare;
                    });
                  },
                  icon: Icon(
                    Icons.share,
                    color: post.isShare ? Colors.blueAccent : Colors.grey,
                  ),
                  label: Text(
                    'Share',
                    style: TextStyle(
                      color: post.isShare ? Colors.blueAccent : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
