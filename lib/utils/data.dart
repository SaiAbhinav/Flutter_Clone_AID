import 'package:flutter/material.dart';

final List<Map<String, dynamic>> drawerOptions = [
  {'icon': Icon(Icons.home), 'name': 'Home'},
  {'icon': Icon(Icons.chat), 'name': 'News'},
  {'icon': Icon(Icons.info), 'name': 'About the app'},
  {'icon': Icon(Icons.info), 'name': 'Invite'},
  {'icon': Icon(Icons.settings), 'name': 'Settings'}
];

final List<Map<String, dynamic>> attendanceDetails = [
  {
    'title': 'Big Data Analytics',
    'classes': {
      'totalClasses': 53,
      'attendedClasses': 53,
    }
  },
  {
    'title': 'Software Project Management',
    'classes': {
      'totalClasses': 42,
      'attendedClasses': 32,
    }
  }
];

final List<Map<String, dynamic>> performanceDetails = [
  {
    'title': 'Big Data Analytics',
    'code': '15CSE334',
    'batch': 'Regular',
    'grade': 'O'
  },
  {
    'title': 'Project Phase II',
    'code': '15CSE499',
    'batch': 'Regular',
    'grade': 'A+'
  },
  {
    'title': 'Software Project Management',
    'code': '15CSE411',
    'batch': 'Regular',
    'grade': 'A'
  }
];

final List<Map<String, dynamic>> cards = [
  {
    'icon': Icons.calendar_today,
    'title': 'Attendance Status',
    'subtitle':
        'Have you been bunking claases ? Check your curren attendance levels here'
  },
  {
    'icon': Icons.donut_large,
    'title': 'Your Performance',
    'subtitle':
        'Have a look at how you have performed acrross various semesters'
  },
  {
    'icon': Icons.list,
    'title': 'Your Marks',
    'subtitle': 'Check you periodicals and continuous assessment marks'
  },
  {
    'icon': Icons.cloud,
    'title': 'Course Resources',
    'subtitle': 'View and download resource material uploaded by your faculty'
  }
];

final List<String> semesters = [
  '1',
  '2',
  'Vacation 1',
  '3',
  '4',
  'Vacation 2',
  '5',
  '6',
  'Vacation 3',
  '7,' '8',
  'Vacation 4',
  '9',
  '10',
  'Vacation 5',
  '11',
  '12',
  'Vacation 6',
  '13',
  '14',
  '15'
];

final List<Map<String, dynamic>> dashboardOptions = [
  {
    'color': Color.fromRGBO(254, 193, 7, 0.75),
    'icon': Icons.fiber_new,
    'name': 'News'
  },
  {
    'color': Color.fromRGBO(234, 30, 99, 0.75),
    'icon': Icons.lock,
    'name': 'Amrita UMS Login'
  },
  {
    'color': Color.fromRGBO(255, 83, 83, 0.75),
    'icon': Icons.calendar_today,
    'name': 'Academic Calender'
  },
  {
    'color': Color.fromRGBO(0, 151, 136, 0.50),
    'icon': Icons.face,
    'name': 'GPMS Login'
  },
  {
    'color': Color.fromRGBO(156, 40, 177, 0.65),
    'icon': Icons.alarm,
    'name': 'Train & Bus Timings'
  },
  {
    'color': Colors.blueAccent.withOpacity(0.85),
    'icon': Icons.notifications,
    'name': 'Announcements'
  },
  {'color': Colors.lightGreen, 'icon': Icons.book, 'name': 'Currculum Info'},
  {
    'color': Colors.lightBlue.withOpacity(0.50),
    'icon': Icons.info,
    'name': 'About Amrita'
  }
];

final List<String> aboutContent = [
  'About the Coimbatore campus',
  'The beginnings of Amrita University can be traced to 1994 when a School fo Engineering was started in an obscure village named Ettimadai, at the foothills of Bouluvampatty ranges of the Western Ghats in the Coimbatore district of Tamil Nadu',
  'At that time there were 120 students and 13 faculty members. Today, Amrita Vishwa Vidyapeetham has five campuses in three different states of India. there is a student population of over 12,000 and faculty strength of nearly 1500. Over 120 UG, PG and doctoral programs are offered.',
  'When Amrita became a university in January 2003, it was the youngest group of institutions to be conferred this status. As Amrita\'s forst campus, Coimbatore is home to the administrative headquarters of Amrita University.',
  'Schools of Engineering and Business in addition to Departments of Social Work and Communication are llocated on located on this campus. Research centers include AMBE, CEN, CES and Cybersecurity, The campus has nearly 3500 students and about 600 faculty and staff members',
  'This sprawling 400-acre campus is often likened to an oasis in a desert. Massive tree-planting and forestation activities undertaken over the past decade have converted the once-barren land into a lush green and beautiful place.',
  'A lot of emphasis is placed on eco-friendly and conservation practices. Waste water from the hostels and faculty and staff quarters is treated using EM; no chemicals are used in the process. Organic fertilizers are made using vermi-compost, pesticides have been avoided since the very beginning. The tranquil surroundings, away from the pollution and the bustle of city life, are home to several exotic birds, including parrots and peacocks.'
];

final List<String> courses = [
  'Aerospace Engineering',
  'Civil Engineering',
  'Chemical Engineering',
  'Computer Science Engineering',
  'Electrical & Electronic Engineering',
  'Electronics & Communication Engineering',
  'Electronics & Instrumentation Engineering',
  'Mechanical Engineering'
];

final List<String> tranports = [
  'Trains from Coimbatore',
  'Trains from Palgaht',
  'Trains to Coimbatore',
  'Trains to Palghat',
  'Buses from Coimbatore',
  'Buses to Coimbatore'
];

final Map<String, List<String>> subjects = {
  'Semester I': [
    'Communication English I',
    'Physics/Chemistry',
    'Calculus and Matrix Algebra',
    'Electrical Engineering',
    'Computer Programming',
    'Engineering Mechanics / Introduction to Thermodynamics',
    'Engineering Drawing I',
    'Physics Lab / Chemistry Lab',
    'Workshop B / Workshop A',
    'Computer Programming Lab',
    'Cultural Education'
  ],
  'Semester II': [
    'Humanities Elective I',
    'Physics/Chemistry',
    'Vector Calculus and Ordinary Differential Equations',
    'Electronics Engineering',
    'Object Oriented Programming',
    'Engineering Mechanics / Introduction of Thermodynamics',
    'Engineering Drawing II',
    'Physics Lab / Chemistry Lab',
    'Workshop B / Workshop A',
    'Object Oriented Programming Lab',
    'Cultural Education'
  ],
  'Semester III': [
    'Integral Transforms and Complex Analysis',
    'Discrete Mathematics',
    'Object Oriented Programming',
    'Digital Systems',
    'Environmental Studies',
    'Humanities Elective I',
    'Object Oriented Programming Lab',
    'Digital Systems Lab',
    'Digital Systems Lab'
  ],
  'Semester IV': [
    'Mathematical Statistics and Numerical Methods',
    'Computer Organisation and Architecture',
    'Structure and Interpretation or Computer Programs',
    'Data Structures',
    'Introduction to Embedded Systems',
    'Humanities Elective II',
    'Data Structures Lab',
    'Embedded Systems Lab',
    'Embedded Systems Lab',
    'SOFT SKILLS I'
  ],
  'Semester V': [
    'Operating Systems',
    'Design and Analysis of Algorithms',
    'Database Management Systems',
    'Introduction to Digital Signal Processing',
    'Introduction to Digital Signal Processing',
    'Science Elective I',
    'Java Programming',
    'Database Management Systems Lab',
    'Operating Systems Lab',
    'SOFT SKILLS II'
  ],
  'Semester VI': [
    'Computer Networks',
    'Software Engineering',
    'Formal Languages and Automata',
    'Elective I',
    'Elective I',
    'Science Elective II',
    'Software Engineering Lab',
    'Computer Networks Lab',
    'SOFT SKILLS III'
  ],
  'Semester VII': [
    'Computer Graphics and Visualisation',
    'Net-centric Programming',
    'Computer Language Engineering',
    'Principles of Management',
    'Computer Graphics and Visualisation Lab',
    'Computer Language Engineering Lab',
    'Seminar'
  ],
  'Semester VIII': ['Elective III', 'Management Elective', 'Project']
};

final Map<String, List<Map<String, String>>> transportDetails = {
  'Trains from Coimbatore': [
    {
      'transportNo': '56323',
      'transportName': 'Coimbatore Mangalore Fast Passenger',
      'source': 'Coimbatore',
      'destination': 'Ettimadai',
      'departs': '07:30',
      'reaches': '08:00',
      'running': 'All Days'
    },
    {
      'transportNo': '66605',
      'transportName': 'Coimbatore Shoranur Passenger',
      'source': 'Coimbatore',
      'destination': 'Ettimadai',
      'departs': '09:45',
      'reaches': '14:14',
      'running': 'All Days'
    },
    {
      'transportNo': '66609',
      'transportName': 'Erode Palakkad MEMU',
      'source': 'Coimbatore',
      'destination': 'Ettimadai',
      'departs': '10:30',
      'reaches': '11:04',
      'running': 'All Days Except Thursday'
    },
    {
      'transportNo': '56651',
      'transportName': 'Coimbatore Kannur Fast Passenger',
      'source': 'Coimbatore',
      'destination': 'Ettimadai',
      'departs': '14:10',
      'reaches': '14:36',
      'running': 'All Days'
    },
    {
      'transportNo': '56605',
      'transportName': 'Coimbatore Thrissur Passenger',
      'source': 'Coimbatore',
      'destination': 'Ettimadai',
      'departs': '16:40',
      'reaches': '17:07',
      'running': 'All Days'
    },
    {
      'transportNo': '66607',
      'transportName': 'Coimbatore Palakkad Town Passenger',
      'source': 'Coimbatore',
      'destination': 'Ettimadai',
      'departs': '18:10',
      'reaches': '18:37',
      'running': 'All Days Except Sundays'
    },
    {
      'transportNo': '56713',
      'transportName': 'Trichy - Palakkad Town Fast Passenger',
      'source': 'Coimbatore',
      'destination': 'Ettimadai',
      'departs': '18:30',
      'reaches': '19:03',
      'running': 'All Days'
    }
  ]
};

final List<String> campuses = [
  'Ettimadai',
  'Amritapuri',
  'Bangalore',
  'Mysore',
  'AIMS',
  'Business schools',
  'ASAS Kochi'
];

final List<Map<String, dynamic>> news = [
  {
    'color': Colors.lightGreen.shade300,
    'title':
        'Marita Faculty Member on Fulbright-Nehru Specialist Program Review Panel'
  },
  {
    'color': Colors.brown.shade300,
    'title':
        'Amrita Faculty Members Attend IEEE Global Engineering Educatioon Conference 2018, Dubai'
  },
  {
    'color': Colors.yellow.shade300,
    'title':
        'Amrita Participates is \'Study in India\' Educational Conclave & Fair of MHRD, Govt. of India, at Nepal'
  },
  {
    'color': Colors.red.shade300,
    'title':
        'Students and Faculty Participates if Live-in-Labs Workshop at Coimbatore Campus'
  }
];
