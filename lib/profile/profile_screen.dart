import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) =>[
          InstagramProfileAppBar(),
          SliverToBoxAdapter(
            child: ProfileHeader(),  ),
            SliverPersistentHeader(
              pinned: true,
              delegate: ProfileTabbar(
              child: Container(
                color: Colors.white,
                child: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  tabs: [
                  Tab(
                    icon: Icon(Icons.grid_on),
                  ), Tab(
                    icon: Icon(Icons.assignment_ind_outlined),
                  ),
                ],
                ),
              ),
              ),
              ),
        ], 
        body: GridView.builder(
          padding: EdgeInsets.zero,
          physics: ClampingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:3,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
             ),
            
              itemBuilder: (BuildContext context,int index){
                
                
                return Container(
                  color: Colors.grey,
                  child: Image(image: AssetImage("assets/lit.png",),fit: BoxFit.cover,),
                );
              }
              )
        ),
    );
  }
}

class ProfileTabbar extends SliverPersistentHeaderDelegate {
  final Widget child;
  ProfileTabbar({required this.child});
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
  return child;
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 48;

  @override
  // TODO: implement minExtent
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
      
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProfileInfo(),
          SizedBox(height: 10,),
        Profilebio(),
        SizedBox(height: 10,),
       ProfileButtons(),
sizedboxs(),
        ],     
      ),
    );
  }
}

class sizedboxs extends StatelessWidget {
  const sizedboxs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     SizedBox(
    
      height: 80,
    
    child: ListView(children: [
    
      SingleChildScrollView(
    
        scrollDirection: Axis.horizontal,
    
        child: Row(
    
          children: [
    
            Container(
    
              width: 55,
    
              child: Column(
    
                children: [
    
                  Container(
    
                    width: 45,
    
                    height: 45,
    
                    decoration: BoxDecoration(color: Colors.amber,
    
                    borderRadius: BorderRadius.circular(50),
    
                    border: Border.all(color: Colors.red,
    
                    
    
                    ),image: DecorationImage(image: AssetImage("assets/rocet.png"))
    
                    ),
    
                  ),
    
                  SizedBox(height: 5,),
    
                  Text("speed",
    
                  style: TextStyle(fontSize: 15,color: Colors.black),
    
                  ),
    
                ],
    
              ),
    
            ), Container(
    
              width: 55,
    
              child: Column(
    
                children: [
    
                  Container(
    
                    width: 45,
    
                    height: 45,
    
                    decoration: BoxDecoration(color: Colors.amber,
    
                    borderRadius: BorderRadius.circular(50),
    
                    border: Border.all(color: Colors.red,
    
                    
    
                    ),image: DecorationImage(image: AssetImage("assets/lit.png"))
    
                    ),
    
                  ),
    
                  SizedBox(height: 5,),
    
                  Text("Tips",
    
                  style: TextStyle(fontSize: 15,color: Colors.black),
    
                  ),
    
                ],
    
              ),
    
            ), Container(
    
              width: 55,
    
              child: Column(
    
                children: [
    
                  Container(
    
                    width: 45,
    
                    height: 45,
    
                    decoration: BoxDecoration(color: Colors.amber,
    
                    borderRadius: BorderRadius.circular(50),
    
                    border: Border.all(color: Colors.red,
    
                    
    
                    ),image: DecorationImage(image: AssetImage("assets/bag.png"))
    
                    ),
    
                  ),
    
                  SizedBox(height: 5,),
    
                  Text("pakage",
    
                  style: TextStyle(fontSize: 15,color: Colors.black),
    
                  ),
    
                ],
    
              ),
    
            ),Container(
    
              width: 55,
    
              child: Column(
    
                children: [
    
                  Container(
    
                    width: 45,
    
                    height: 45,
    
                    decoration: BoxDecoration(color: Colors.amber,
    
                    borderRadius: BorderRadius.circular(50),
    
                    border: Border.all(color: Colors.red,
    
                    
    
                    ),image: DecorationImage(image: AssetImage("assets/book.png"))
    
                    ),
    
                  ),
    
                  SizedBox(height: 5,),
    
                  Text("Quallis",
    
                  style: TextStyle(fontSize: 15,color: Colors.black),
    
                  ),
    
                ],
    
              ),
    
            ),Container(
    
              width: 55,
    
              child: Column(
    
                children: [
    
                  Container(
    
                    width: 45,
    
                    height: 45,
    
                    decoration: BoxDecoration(color: Colors.amber,
    
                    borderRadius: BorderRadius.circular(50),
    
                    border: Border.all(color: Colors.red,
    
                    
    
                    ),image: DecorationImage(image: AssetImage("assets/lit.png"))
    
                    ),
    
                  ),
    
                  SizedBox(height: 5,),
    
                  Text("kori",
    
                  style: TextStyle(fontSize: 15,color: Colors.black),
    
                  ),
    
                ],
    
              ),
    
            ),Container(
    
              width: 55,
    
              child: Column(
    
                children: [
    
                  Container(
    
                    width: 45,
    
                    height: 45,
    
                    decoration: BoxDecoration(color: Colors.amber,
    
                    borderRadius: BorderRadius.circular(50),
    
                    border: Border.all(color: Colors.red,
    
                    
    
                    ),image: DecorationImage(image: AssetImage("assets/book.png"))
    
                    ),
    
                  ),
    
                  SizedBox(height: 5,),
    
                  Text("kari",
    
                  style: TextStyle(fontSize: 15,color: Colors.black),
    
                  ),
    
                ],
    
              ),
    
            ),Container(
    
              width: 55,
    
              child: Column(
    
                children: [
    
                  Container(
    
                    width: 45,
    
                    height: 45,
    
                    decoration: BoxDecoration(color: Colors.amber,
    
                    borderRadius: BorderRadius.circular(50),
    
                    border: Border.all(color: Colors.red,
    
                    
    
                    ),image: DecorationImage(image: AssetImage("assets/rocet.png"))
    
                    ),
    
                  ),
    
                  SizedBox(height: 5,),
    
                  Text("katagi",
    
                  style: TextStyle(fontSize: 15,color: Colors.black),
    
                  ),
    
                ],
    
              ),
    
            ),Container(
    
              width: 55,
    
              child: Column(
    
                children: [
    
                  Container(
    
                    width: 45,
    
                    height: 45,
    
                    decoration: BoxDecoration(color: Colors.amber,
    
                    borderRadius: BorderRadius.circular(50),
    
                    border: Border.all(color: Colors.red,
    
                    
    
                    ),image: DecorationImage(image: AssetImage("assets/lit.png"))
    
                    ),
    
                  ),
    
                  SizedBox(height: 5,),
    
                  Text("tagori",
    
                  style: TextStyle(fontSize: 15,color: Colors.black),
    
                  ),
    
                ],
    
              ),
    
            ),Container(
    
              width: 55,
    
              child: Column(
    
                children: [
    
                  Container(
    
                    width: 45,
    
                    height: 45,
    
                    decoration: BoxDecoration(color: Colors.amber,
    
                    borderRadius: BorderRadius.circular(50),
    
                    border: Border.all(color: Colors.red,width: 2
    
                    
    
                    ),image: DecorationImage(image: AssetImage("assets/bag.png"))
    
                    ),
    
                  ),
    
                  SizedBox(height: 5,),
    
                  Text("katagi",
    
                  style: TextStyle(fontSize: 15,color: Colors.black),
    
                  ),
    
                ],
    
              ),
    
            ),Container(
    
              width: 55,
    
              child: Column(
    
                children: [
    
                  Container(
    
                    width: 45,
    
                    height: 45,
    
                    decoration: BoxDecoration(color: Colors.amber,
    
                    borderRadius: BorderRadius.circular(50),
    
                    border: Border.all(color: Colors.red,width: 2
    
                    
    
                    ),image: DecorationImage(image: AssetImage("assets/lit.png"))
    
                    ),
    
                  ),
    
                  SizedBox(height: 5,),
    
                  Text("kata",
    
                  style: TextStyle(fontSize: 15,color: Colors.black),
    
                  ),
    
                ],
    
              ),
    
            ),Container(
    
              width: 55,
    
              child: Column(
    
                children: [
    
                  Container(
    
                    width: 45,
    
                    height: 45,
    
                    decoration: BoxDecoration(color: Colors.amber,
    
                    borderRadius: BorderRadius.circular(50),
    
                    border: Border.all(color: Colors.red,width: 2
    
                    
    
                    ),image: DecorationImage(image: AssetImage("assets/how.png"))
    
                    ),
    
                  ),
    
                  SizedBox(height: 5,),
    
                  Text("kagori",
    
                  style: TextStyle(fontSize: 15,color: Colors.black),
    
                  ),
    
                ],
    
              ),
    
            ),
    
          ],
    
        ),
    
      )
    
    ]
    
    ),
    
    );
  }
}



class ProfileButtons extends StatelessWidget {
  const ProfileButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
     children: [
       TextButton(onPressed: (){},
       style: TextButton.styleFrom(
        backgroundColor: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
       ),
        child: Text('Edit Profile',
        style: Theme.of(context).textTheme.button,
        )
        ),
 
    SizedBox(width: 10,),
     Row(children: [
        Expanded(
          child: TextButton(onPressed: (){},
             style: TextButton.styleFrom(
              backgroundColor: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
             ),
              child: Text('Ad Tools',style: Theme.of(context).textTheme.button,)
              ),
        ),SizedBox(width: 10,),
        Expanded(
          child: TextButton(onPressed: (){},
             style: TextButton.styleFrom(
              backgroundColor: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
             ),
              child: Text('Insights',style: Theme.of(context).textTheme.button,)
              ),
        ),SizedBox(width: 10,),
        Expanded(
          child: TextButton(onPressed: (){},
             style: TextButton.styleFrom(
              backgroundColor: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
             ),
              child: Text('Contact',style: Theme.of(context).textTheme.button,)
              ),
        ),
     ],
     ),
     ],
    );
  }
}



class Profilebio extends StatelessWidget {
  const Profilebio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Ali Ebadi",
        style: Theme.of(context).textTheme.titleMedium,
        ),  Text("Software",
        style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
        ), 
         Text("""FLUTTER DEVOLOPER     
    GHFGHKJHGF FHG HGRUYTIU GHKRTRY UYTTDGH BHYTR UY F UJYUYF HJFUIYH JFHOIUMVTY HGFHGV NBGY NBVGF HNGN 
         """,
        style: Theme.of(context).textTheme.titleSmall!,
        ),
        ],
        
      
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [ const ProfileImage(),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
         
          ProfileFlowerwidget(
            count: "30",
            title: "Posts",
          ),  ProfileFlowerwidget(
            count: "388",
            title: "Followers",
          ),  ProfileFlowerwidget(
            count: "191",
            title: "Following",
          ),
        ],
              ),
      ),
    ],);
  }
}

class ProfileFlowerwidget extends StatelessWidget {
  const ProfileFlowerwidget({
    Key? key,
     required this.title,
      required this.count,

  }) : super(key: key);

  final String title, count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        ),
        Text(title),
      ],
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(shape: BoxShape.circle,
          color: Colors.green,
          image: DecorationImage(image: AssetImage('assets/how.png'))
          ),
        ),
        Positioned(right: 0,
        bottom: 0,
        child:Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white,width: 2),
          ),
        
          child: Icon(Icons.add,
          color: Colors.white,
          size: 15,
          ),
        ),),
      ],
    );
  }
}


class InstagramProfileAppBar extends StatelessWidget {
  const InstagramProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(backgroundColor: Colors.white,
      pinned: true,
      title: Row(
        children: [Text("ebapp",
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
        ),
        Icon(Icons.keyboard_arrow_down,color: Colors.black,),
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined,color: Colors.black,),
        ),  IconButton(onPressed: (){}, icon: Icon(Icons.dehaze,color: Colors.black,),
        ),
      ],
    );
  }
}