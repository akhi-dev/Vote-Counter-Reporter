import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:vcr/action_button.dart';
import 'package:vcr/appbottombar.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => new _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait
        ? true
        : false;
    double tileMargin = 30;
    return Scaffold(
      drawerDragStartBehavior: DragStartBehavior.down,
      bottomNavigationBar: AppBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  AppActionButton(),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Akhil Kumar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.asset(
                      "assets/image/ak_face.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Scrollbar(
            child: SingleChildScrollView(
              dragStartBehavior: DragStartBehavior.down,
              child: ResponsiveGridRow(
                children: [
                  if (isPortrait) _addGap(tileMargin * 2),
                  ResponsiveGridCol(
                    xs: 12,
                    child: SizedBox(
                      child: ListTile(
                        title: Text('Email'),
                        subtitle: Text('ce.akhil@gmail.com'),
                        leading: IconButton(
                          icon: Icon(FontAwesomeIcons.envelope),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    child: SizedBox(
                      child: ListTile(
                        title: Text('Contact Number'),
                        subtitle: Text('+91 9729943982'),
                        leading: IconButton(
                          icon: Icon(FontAwesomeIcons.mobileAlt),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    child: SizedBox(
                      child: ListTile(
                        title: Text('Gender'),
                        subtitle: Text('Male'),
                        leading: IconButton(
                          icon: Icon(FontAwesomeIcons.userAlt),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    child: SizedBox(
                      child: ListTile(
                        title: Text('Date of Birth'),
                        subtitle: Text('15/06/1999'),
                        leading: IconButton(
                          icon: Icon(FontAwesomeIcons.calendarAlt),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    child: SizedBox(
                      child: Divider(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    child: SizedBox(
                      child: ListTile(
                        title: Text('My Application'),
                        subtitle: Text('View All Applications'),
                        leading: IconButton(
                          icon: Icon(FontAwesomeIcons.tasks),
                          onPressed: () {
                          },
                        ),
                        onTap: () {
                        },
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    child: SizedBox(
                      child: Divider(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    child: SizedBox(
                      child: ListTile(
                        title: Text('Account Settings'),
                        leading: IconButton(
                          icon: Icon(FontAwesomeIcons.userCog),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    child: SizedBox(
                      child: Divider(),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 12,
                    child: SizedBox(
                      child: ListTile(
                        title: Text('Logout'),
                        leading: IconButton(
                          icon: Icon(FontAwesomeIcons.signOutAlt),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ResponsiveGridCol _addGap(double tileMargin) {
    return ResponsiveGridCol(
      child: SizedBox(
        height: tileMargin,
      ),
    );
  }
}
