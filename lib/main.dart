import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:soul_mad/chat1.dart';
import 'login.dart';
import 'chatstarted.dart'; // Import your ChatStarted screen
import 'mood.dart';
import 'target.dart';
import 'appusage.dart';
import 'article1_bom.dart';
import 'article2_joy.dart';
import 'to-do.dart';
import 'anxiety_quiz.dart';
import 'depression.dart';
import 'stress.dart';
import 'eating.dart';
import 'communication.dart';
import 'sleep.dart';
import 'profile.dart';
import 'achievement.dart';
import 'report.dart';
import 'notify.dart';
import 'changepass.dart';
import 'otpverific.dart';
import 'accselect.dart';
import 'congra.dart';
import 'lang.dart';
import 'review.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF2EDE5),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/changepass': (context) => ChangePasswordPage(),
        '/otpverific': (context) => OTPVerificationScreen(),
        '/accselect': (context) => AccountSelectionScreen(), // Updated route name for accselect.dart
        '/congra': (context) => CongratulationsPage(), // Added route for congra.dart
        '/login': (context)=> LoginScreen(),
        '/main': (context) => HomeScreen(),
        '/chat': (context) => ChatScreen(),
        '/mood': (context) => MoodStatsScreen(),
        '/target': (context) => TargetScreen(),
        '/appusage': (context) => AppUsage(),
        '/article1': (context) => Article1Screen(), // Add route for Article 1
        '/article2': (context) => Article2Screen(),
        '/to-do': (context) => ToDoScreen(), // Add route for Article 2
        '/anxiety_quiz': (context) => AnxietySurveyPage(),
        '/depression': (context) => DepressionSurveyPage(),
        '/stress': (context) => StressSurveyPage(),
        '/eating': (context) => EatingHabitsSurveyPage(),
        '/communication': (context) => CommunicationSurveyPage(),
        '/sleep': (context) => SleepHygineSurveyPage(),
        '/profile': (context) => UserProfilePage(),
        '/achievement': (context) => AchievementsPage(),
        '/report': (context) => MyReportPage(),
        '/notify': (context) => NotificationsPage(),
        '/lang': (context) => SelectLanguagePage(),
        '/review':(context) => BlogsAndReviewsScreen(),
      },
    );
  }
}




class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFA26C03).withOpacity(0.33),
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: UserHeader(),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HowAreYouToday(),
                  SizedBox(height: 20),
                  HealthMetrics(),
                  SizedBox(height: 20),
                  QuizAssessment(),
                  SizedBox(height: 20),
                  GuidedTipsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class UserHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFA26C03).withOpacity(0.33),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile'); // Navigate to ProfileScreen
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/david.jpg'),
                  ),
                  SizedBox(width: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi! Welcome Ravi',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          StyledChip(label: 'User'),
                          SizedBox(width: 20),
                          StyledChip(label: '😊Happy'),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/notify'); // Navigate to NotificationScreen
                    },
                    child: Icon(Icons.notifications, color: Colors.black, size: 37),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            ThoughtOfTheDay(),
          ],
        ),
      ),
    );
  }
}

class StyledChip extends StatelessWidget {
  final String label;

  StyledChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      decoration: BoxDecoration(
        color: Color(0xFFC4912E).withOpacity(0.5),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}

class ThoughtOfTheDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF6D89E),
            border: InputBorder.none,
            hintText: 'Enter your thought of the day...',
            hintStyle: TextStyle(color: Colors.black54),
          ),
        ),
      ),
    );
  }
}

class HowAreYouToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text('How Are You Today ?', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              EmojiButton(emoji: '😄', size: 50),
              EmojiButton(emoji: '😟', size: 50),
              EmojiButton(emoji: '😊', size: 50),
              EmojiButton(emoji: '😔', size: 50),
              EmojiButton(emoji: '😲', size: 50),
              EmojiButton(emoji: '😢', size: 50),
              EmojiButton(emoji: '😠', size: 50),
              EmojiButton(emoji: '😴', size: 50),
              EmojiButton(emoji: '😋', size: 50),
              EmojiButton(emoji: '😎', size: 50),
              EmojiButton(emoji: '😷', size: 50),
            ],
          ),
        ),
      ],
    );
  }
}

class EmojiButton extends StatelessWidget {
  final String emoji;
  final double size;

  EmojiButton({required this.emoji, this.size = 32});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Text(
        emoji,
        style: TextStyle(fontSize: size),
      ),
    );
  }
}

class HealthMetrics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text('Health Metrics', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 8), // Add initial spacing
              MetricCard(
                title: 'Soul Score',
                value: '60%',
                color: Color(0xFFA26C03),
                baseColor: Color(0xFFF6D89E),
                progressColor: Colors.brown,
                icon: Icons.favorite,
              ),
              SizedBox(width: 10), // Adjust spacing between cards
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/mood'); // Navigate to Mood screen
                },
                child: MetricCard(
                  title: '😊 Mood',
                  value: '50%',
                  color: Color(0xFFA26C03),
                  baseColor: Color(0xFFF6D89E),
                  progressColor: Colors.brown,
                ),
              ),
              SizedBox(width: 10), // Adjust spacing between cards
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/target'); // Navigate to Target screen
                },
                child: MetricCard(
                  title: 'Targets',
                  value: '70%',
                  color: Color(0xFFA26C03),
                  baseColor: Color(0xFFF6D89E),
                  progressColor: Colors.brown,
                ),
              ),
              SizedBox(width: 10), // Adjust spacing between cards
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/appusage'); // Navigate to App Usage screen
                },
                child: SampleGraph(
                  title: 'App Usage',
                  value: '40%',
                  color: Color(0xFFA26C03),
                  barValues: [0.2, 0.4, 0.6, 0.8, 1.0], // Example bar values
                ),
              ),
              SizedBox(width: 10), // Add final spacing
            ],
          ),
        ),
      ],
    );
  }
}


class MetricCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final Color? baseColor;
  final Color? progressColor;
  final IconData? icon;
  final Widget? child;

  MetricCard({
    required this.title,
    required this.value,
    required this.color,
    this.baseColor,
    this.progressColor,
    this.icon,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (child == null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Icon(
                    icon,
                    color: Colors.red,
                    size: 24,
                  ),
                SizedBox(width: 8.0),
                Text(
                  title,
                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            )
          else
            child!,
          SizedBox(height: 10),
          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 8.0,
            animation: true,
            percent: double.parse(value.replaceAll('%', '')) / 100.0,
            center: Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: progressColor ?? Colors.white,
            backgroundColor: baseColor ?? Colors.white.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}


class SampleGraph extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final List<double> barValues;

  SampleGraph({required this.title, required this.value, required this.color, required this.barValues});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 192,// Same width as MetricCard
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: barValues.map((barValue) {
                return Container(
                  width: 16,
                  height: barValue * 100,
                  color: Colors.white.withOpacity(0.7),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}




class QuizAssessment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset('assets/images/test.png', width: 100, height: 100), // Add the image here
            SizedBox(width: 2),
            Text('QUIZ ASSESSMENT', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold , color: Colors.brown)),
          ],
        ),
        SizedBox(height: 20),
        Text(
          'Embark on a transformative journey. Discover yourself through our engaging quiz. Start now to unlock valuable insights and self-awareness.',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 30), // Add space between paragraphs
        Text(
          'How Quiz will help you?', // New text
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.brown), // Bold and brown color
        ),
        SizedBox(height: 30),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            InfoCard(title: 'Self-Awareness', icon: Icons.self_improvement),
            InfoCard(title: 'Separate Myths from Facts', icon: Icons.fact_check),
            InfoCard(title: 'Take charge of your well-being', icon: Icons.health_and_safety),
          ],
        ),
        SizedBox(height: 40),
        Text(
          'Choose Your Test',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.brown), // Bold and brown color
        ),
        SizedBox(height: 40),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 20.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            TestCard(
              title: 'Anxiety',
              image: AssetImage('assets/images/anxiety.png'),
              onTap: () {
                Navigator.pushNamed(context, '/anxiety_quiz'); // Navigate to AnxietyScreen
              },
            ),
            TestCard(
              title: 'Depression',
              image: AssetImage('assets/images/depression.jpg'),
              onTap: () {
                Navigator.pushNamed(context, '/depression'); // Handle tap event
              },
            ),
            TestCard(
              title: 'Stress',
              image: AssetImage('assets/images/stress.png'),
              onTap: () {
                Navigator.pushNamed(context, '/stress');// Handle tap event
              },
            ),
            TestCard(
              title: 'Eating Habits',
              image: AssetImage('assets/images/eat.png'),
              onTap: () {
                Navigator.pushNamed(context, '/eating');// Handle tap event
              },
            ),
            TestCard(
              title: 'Communication',
              image: AssetImage('assets/images/comm.jpg'),
              onTap: () {
                Navigator.pushNamed(context, '/communication');// Handle tap event
              },
            ),
            TestCard(
              title: 'Sleep Hygiene',
              image: AssetImage('assets/images/sleep.png'),
              onTap: () {
                Navigator.pushNamed(context, '/sleep');// Handle tap event
              },
            ),
          ],
        ),
      ],
    );
  }
}



class InfoCard extends StatelessWidget {
  final String title;
  final IconData icon;

  InfoCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: Colors.brown),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class TestCard extends StatelessWidget {
  final String title;
  final ImageProvider image;
  final VoidCallback onTap;

  TestCard({required this.title, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,  // Adjust width to match the image
        height: 500, // Increase height to fit all content
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xFFF2EDE5),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: image, width: 60, height: 60, fit: BoxFit.contain), // Adjusted image size
            SizedBox(height: 1), // Adjust spacing
            Text(
              title,
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 2), // Adjust spacing
            Spacer(),
            ElevatedButton(
              onPressed: onTap,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFF6D89E)),
              ),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Take Test ->',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.brown),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class GuidedTipsSection extends StatelessWidget {
  final List<Map<String, String>> tips = [
    {"title": "Benefits Of Meditation", "image": "assets/images/meditation.png", "route": "/article1"},
    {"title": "Finding joy in Everyday Moments", "image": "assets/images/joy.jpg", "route": "/article2"},
    {"title": "Tips For Boosting Immunity", "image": "assets/images/imm.jpg", "route": "/article3"},
    {"title": "Mantra Of Success", "image": "assets/images/success.jpg", "route": "/article4"},
    {"title": "Setting And Achieving Personal Goals", "image": "assets/images/goals.jpg", "route": "/article5"},
    {"title": "How Exercise Improve the Outlook of Your Life", "image": "assets/images/exerc.jpg", "route": "/article6"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Guided Tips',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.brown),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 400,
          child: ListView.builder(
            itemCount: tips.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, tips[index]['route']!); // Navigate to the article screen
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.amber.shade100,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(tips[index]['image']!),
                        radius: 30,
                      ),
                      title: Text(tips[index]['title']!),
                      trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {
// Add action here
                        },
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}



class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    if (index == 1) {
      Navigator.pushNamed(context, '/chat');// Navigate to ChatStarted screen
    }else  if (index == 3) {
      Navigator.pushNamed(context, '/to-do');// Navigate to ChatStarted screen
    }else  if (index == 2) {
      Navigator.pushNamed(context, '/review');// Navigate to ChatStarted screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTap,
      backgroundColor: Color(0xFF9EBEF6),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 38, color: Colors.brown),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message_rounded, size: 38, color: Colors.brown),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.create, size: 38, color: Colors.brown),
          label: 'Reviews',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule, size: 38, color: Colors.brown),
          label: 'Todo List',
        ),
      ],
    );
  }
}












