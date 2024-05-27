import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Logo Quiz',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: QuizScreen(),
    );
  }
}

class CountryLogo {
  final String imagePath;
  final String correctAnswer;

  CountryLogo({required this.imagePath, required this.correctAnswer});
}

List<CountryLogo> countryLogos = [
  CountryLogo(imagePath: 'assets/images/ad.png', correctAnswer: 'Andorra'),
  CountryLogo(imagePath: 'assets/images/ao.png', correctAnswer: 'Angola'),
  CountryLogo(imagePath: 'assets/images/ai.png', correctAnswer: 'Anguilla'),
  CountryLogo(imagePath: 'assets/images/aq.png', correctAnswer: 'Antarctica'),
  CountryLogo(imagePath: 'assets/images/ag.png', correctAnswer: 'Antigua and Barbuda'),
  CountryLogo(imagePath: 'assets/images/ar.png', correctAnswer: 'Argentina'),
  CountryLogo(imagePath: 'assets/images/am.png', correctAnswer: 'Armenia'),
  CountryLogo(imagePath: 'assets/images/aw.png', correctAnswer: 'Aruba'),
  CountryLogo(imagePath: 'assets/images/au.png', correctAnswer: 'Australia'),
  CountryLogo(imagePath: 'assets/images/at.png', correctAnswer: 'Austria'),
  CountryLogo(imagePath: 'assets/images/az.png', correctAnswer: 'Azerbaijan'),
  CountryLogo(imagePath: 'assets/images/bs.png', correctAnswer: 'Bahamas (the)'),
  CountryLogo(imagePath: 'assets/images/bh.png', correctAnswer: 'Bahrain'),
  CountryLogo(imagePath: 'assets/images/bd.png', correctAnswer: 'Bangladesh'),
  CountryLogo(imagePath: 'assets/images/bb.png', correctAnswer: 'Barbados'),
  CountryLogo(imagePath: 'assets/images/by.png', correctAnswer: 'Belarus'),
  CountryLogo(imagePath: 'assets/images/be.png', correctAnswer: 'Belgium'),
  CountryLogo(imagePath: 'assets/images/bz.png', correctAnswer: 'Belize'),
  CountryLogo(imagePath: 'assets/images/bj.png', correctAnswer: 'Benin'),
  CountryLogo(imagePath: 'assets/images/bm.png', correctAnswer: 'Bermuda'),
  CountryLogo(imagePath: 'assets/images/bt.png', correctAnswer: 'Bhutan'),
  CountryLogo(imagePath: 'assets/images/bo.png', correctAnswer: 'Bolivia (Plurinational State of)'),
  CountryLogo(imagePath: 'assets/images/bq.png', correctAnswer: 'Bonaire, Sint Eustatius and Saba'),
  CountryLogo(imagePath: 'assets/images/ba.png', correctAnswer: 'Bosnia and Herzegovina'),
  CountryLogo(imagePath: 'assets/images/bw.png', correctAnswer: 'Botswana'),
  CountryLogo(imagePath: 'assets/images/bv.png', correctAnswer: 'Bouvet Island'),
  CountryLogo(imagePath: 'assets/images/br.png', correctAnswer: 'Brazil'),
  CountryLogo(imagePath: 'assets/images/io.png', correctAnswer: 'British Indian Ocean Territory (the)'),
  CountryLogo(imagePath: 'assets/images/bn.png', correctAnswer: 'Brunei Darussalam'),
  CountryLogo(imagePath: 'assets/images/bg.png', correctAnswer: 'Bulgaria'),
  CountryLogo(imagePath: 'assets/images/bf.png', correctAnswer: 'Burkina Faso'),
  CountryLogo(imagePath: 'assets/images/bi.png', correctAnswer: 'Burundi'),
  CountryLogo(imagePath: 'assets/images/cv.png', correctAnswer: 'Cabo Verde'),
  CountryLogo(imagePath: 'assets/images/kh.png', correctAnswer: 'Cambodia'),
  CountryLogo(imagePath: 'assets/images/cm.png', correctAnswer: 'Cameroon'),
  CountryLogo(imagePath: 'assets/images/ca.png', correctAnswer: 'Canada'),
  CountryLogo(imagePath: 'assets/images/ky.png', correctAnswer: 'Cayman Islands (the)'),
  CountryLogo(imagePath: 'assets/images/cf.png', correctAnswer: 'Central African Republic (the)'),
  CountryLogo(imagePath: 'assets/images/td.png', correctAnswer: 'Chad'),
  CountryLogo(imagePath: 'assets/images/cl.png', correctAnswer: 'Chile'),
  CountryLogo(imagePath: 'assets/images/cn.png', correctAnswer: 'China'),
  CountryLogo(imagePath: 'assets/images/cx.png', correctAnswer: 'Christmas Island'),
  CountryLogo(imagePath: 'assets/images/cc.png', correctAnswer: 'Cocos (Keeling) Islands (the)'),
  CountryLogo(imagePath: 'assets/images/co.png', correctAnswer: 'Colombia'),
  CountryLogo(imagePath: 'assets/images/km.png', correctAnswer: 'Comoros (the)'),
  CountryLogo(imagePath: 'assets/images/cd.png', correctAnswer: 'Congo (the Democratic Republic of the)'),
  CountryLogo(imagePath: 'assets/images/cg.png', correctAnswer: 'Congo (the)'),
  CountryLogo(imagePath: 'assets/images/ck.png', correctAnswer: 'Cook Islands (the)'),
  CountryLogo(imagePath: 'assets/images/cr.png', correctAnswer: 'Costa Rica'),
  CountryLogo(imagePath: 'assets/images/hr.png', correctAnswer: 'Croatia'),
  CountryLogo(imagePath: 'assets/images/cu.png', correctAnswer: 'Cuba'),
  CountryLogo(imagePath: 'assets/images/cw.png', correctAnswer: 'Curaçao'),
  CountryLogo(imagePath: 'assets/images/cy.png', correctAnswer: 'Cyprus'),
  CountryLogo(imagePath: 'assets/images/cz.png', correctAnswer: 'Czechia'),
  CountryLogo(imagePath: 'assets/images/ci.png', correctAnswer: 'Côte d\'Ivoire'),
  CountryLogo(imagePath: 'assets/images/dk.png', correctAnswer: 'Denmark'),
  CountryLogo(imagePath: 'assets/images/dj.png', correctAnswer: 'Djibouti'),
  CountryLogo(imagePath: 'assets/images/dm.png', correctAnswer: 'Dominica'),
  CountryLogo(imagePath: 'assets/images/do.png', correctAnswer: 'Dominican Republic (the)'),
  CountryLogo(imagePath: 'assets/images/ec.png', correctAnswer: 'Ecuador'),
  CountryLogo(imagePath: 'assets/images/eg.png', correctAnswer: 'Egypt'),
  CountryLogo(imagePath: 'assets/images/sv.png', correctAnswer: 'El Salvador'),
  CountryLogo(imagePath: 'assets/images/gq.png', correctAnswer: 'Equatorial Guinea'),
  CountryLogo(imagePath: 'assets/images/er.png', correctAnswer: 'Eritrea'),
  CountryLogo(imagePath: 'assets/images/ee.png', correctAnswer: 'Estonia'),
  CountryLogo(imagePath: 'assets/images/sz.png', correctAnswer: 'Eswatini'),
  CountryLogo(imagePath: 'assets/images/et.png', correctAnswer: 'Ethiopia'),
  CountryLogo(imagePath: 'assets/images/fk.png', correctAnswer: 'Falkland Islands (the) [Malvinas]'),
  CountryLogo(imagePath: 'assets/images/fo.png', correctAnswer: 'Faroe Islands (the)'),
  CountryLogo(imagePath: 'assets/images/fj.png', correctAnswer: 'Fiji'),
  CountryLogo(imagePath: 'assets/images/fi.png', correctAnswer: 'Finland'),
  CountryLogo(imagePath: 'assets/images/fr.png', correctAnswer: 'France'),
  CountryLogo(imagePath: 'assets/images/gf.png', correctAnswer: 'French Guiana'),
  CountryLogo(imagePath: 'assets/images/pf.png', correctAnswer: 'French Polynesia'),
  CountryLogo(imagePath: 'assets/images/tf.png', correctAnswer: 'French Southern Territories (the)'),
  CountryLogo(imagePath: 'assets/images/ga.png', correctAnswer: 'Gabon'),
  CountryLogo(imagePath: 'assets/images/gm.png', correctAnswer: 'Gambia (the)'),
  CountryLogo(imagePath: 'assets/images/ge.png', correctAnswer: 'Georgia'),
  CountryLogo(imagePath: 'assets/images/de.png', correctAnswer: 'Germany'),
  CountryLogo(imagePath: 'assets/images/gh.png', correctAnswer: 'Ghana'),
  CountryLogo(imagePath: 'assets/images/gi.png', correctAnswer: 'Gibraltar'),
  CountryLogo(imagePath: 'assets/images/gr.png', correctAnswer: 'Greece'),
  CountryLogo(imagePath: 'assets/images/gl.png', correctAnswer: 'Greenland'),
  CountryLogo(imagePath: 'assets/images/gd.png', correctAnswer: 'Grenada'),
  CountryLogo(imagePath: 'assets/images/gp.png', correctAnswer: 'Guadeloupe'),
  CountryLogo(imagePath: 'assets/images/gu.png', correctAnswer: 'Guam'),
  CountryLogo(imagePath: 'assets/images/gt.png', correctAnswer: 'Guatemala'),
  CountryLogo(imagePath: 'assets/images/gg.png', correctAnswer: 'Guernsey'),
  CountryLogo(imagePath: 'assets/images/gn.png', correctAnswer: 'Guinea'),
  CountryLogo(imagePath: 'assets/images/gw.png', correctAnswer: 'Guinea-Bissau'),
  CountryLogo(imagePath: 'assets/images/gy.png', correctAnswer: 'Guyana'),
  CountryLogo(imagePath: 'assets/images/ht.png', correctAnswer: 'Haiti'),
  CountryLogo(imagePath: 'assets/images/hm.png', correctAnswer: 'Heard Island and McDonald Islands'),
  CountryLogo(imagePath: 'assets/images/va.png', correctAnswer: 'Holy See (the)'),
  CountryLogo(imagePath: 'assets/images/hn.png', correctAnswer: 'Honduras'),
  CountryLogo(imagePath: 'assets/images/hk.png', correctAnswer: 'Hong Kong'),
  CountryLogo(imagePath: 'assets/images/hu.png', correctAnswer: 'Hungary'),
  CountryLogo(imagePath: 'assets/images/is.png', correctAnswer: 'Iceland'),
  CountryLogo(imagePath: 'assets/images/in.png', correctAnswer: 'India'),
  CountryLogo(imagePath: 'assets/images/id.png', correctAnswer: 'Indonesia'),
  CountryLogo(imagePath: 'assets/images/ir.png', correctAnswer: 'Iran (Islamic Republic of)'),
  CountryLogo(imagePath: 'assets/images/iq.png', correctAnswer: 'Iraq'),
  CountryLogo(imagePath: 'assets/images/ie.png', correctAnswer: 'Ireland'),
  CountryLogo(imagePath: 'assets/images/im.png', correctAnswer: 'Isle of Man'),
  CountryLogo(imagePath: 'assets/images/il.png', correctAnswer: 'Nothing'),
  CountryLogo(imagePath: 'assets/images/it.png', correctAnswer: 'Italy'),
  CountryLogo(imagePath: 'assets/images/jm.png', correctAnswer: 'Jamaica'),
  CountryLogo(imagePath: 'assets/images/jp.png', correctAnswer: 'Japan'),
  CountryLogo(imagePath: 'assets/images/je.png', correctAnswer: 'Jersey'),
  CountryLogo(imagePath: 'assets/images/jo.png', correctAnswer: 'Jordan'),
  CountryLogo(imagePath: 'assets/images/kz.png', correctAnswer: 'Kazakhstan'),
  CountryLogo(imagePath: 'assets/images/ke.png', correctAnswer: 'Kenya'),
  CountryLogo(imagePath: 'assets/images/ki.png', correctAnswer: 'Kiribati'),
  CountryLogo(imagePath: 'assets/images/kp.png', correctAnswer: 'Korea (the Democratic People\'s Republic of)'),
  CountryLogo(imagePath: 'assets/images/kr.png', correctAnswer: 'Korea (the Republic of)'),
  CountryLogo(imagePath: 'assets/images/xk.png', correctAnswer: 'Kosovo'),
  CountryLogo(imagePath: 'assets/images/kw.png', correctAnswer: 'Kuwait'),
  CountryLogo(imagePath: 'assets/images/kg.png', correctAnswer: 'Kyrgyzstan'),
  CountryLogo(imagePath: 'assets/images/la.png', correctAnswer: 'Lao People\'s Democratic Republic (the)'),
  CountryLogo(imagePath: 'assets/images/lv.png', correctAnswer: 'Latvia'),
  CountryLogo(imagePath: 'assets/images/lb.png', correctAnswer: 'Lebanon'),
  CountryLogo(imagePath: 'assets/images/ls.png', correctAnswer: 'Lesotho'),
  CountryLogo(imagePath: 'assets/images/lr.png', correctAnswer: 'Liberia'),
  CountryLogo(imagePath: 'assets/images/ly.png', correctAnswer: 'Libya'),
  CountryLogo(imagePath: 'assets/images/li.png', correctAnswer: 'Liechtenstein'),
  CountryLogo(imagePath: 'assets/images/lt.png', correctAnswer: 'Lithuania'),
  CountryLogo(imagePath: 'assets/images/lu.png', correctAnswer: 'Luxembourg'),
  CountryLogo(imagePath: 'assets/images/mo.png', correctAnswer: 'Macao'),
  CountryLogo(imagePath: 'assets/images/mg.png', correctAnswer: 'Madagascar'),
  CountryLogo(imagePath: 'assets/images/mw.png', correctAnswer: 'Malawi'),
  CountryLogo(imagePath: 'assets/images/my.png', correctAnswer: 'Malaysia'),
  CountryLogo(imagePath: 'assets/images/mv.png', correctAnswer: 'Maldives'),
  CountryLogo(imagePath: 'assets/images/ml.png', correctAnswer: 'Mali'),
  CountryLogo(imagePath: 'assets/images/mt.png', correctAnswer: 'Malta'),
  CountryLogo(imagePath: 'assets/images/mh.png', correctAnswer: 'Marshall Islands (the)'),
  CountryLogo(imagePath: 'assets/images/mq.png', correctAnswer: 'Martinique'),
  CountryLogo(imagePath: 'assets/images/mr.png', correctAnswer: 'Mauritania'),
  CountryLogo(imagePath: 'assets/images/mu.png', correctAnswer: 'Mauritius'),
  CountryLogo(imagePath: 'assets/images/yt.png', correctAnswer: 'Mayotte'),
  CountryLogo(imagePath: 'assets/images/mx.png', correctAnswer: 'Mexico'),
  CountryLogo(imagePath: 'assets/images/fm.png', correctAnswer: 'Micronesia (Federated States of)'),
  CountryLogo(imagePath: 'assets/images/md.png', correctAnswer: 'Moldova (the Republic of)'),
  CountryLogo(imagePath: 'assets/images/mc.png', correctAnswer: 'Monaco'),
  CountryLogo(imagePath: 'assets/images/mn.png', correctAnswer: 'Mongolia'),
  CountryLogo(imagePath: 'assets/images/me.png', correctAnswer: 'Montenegro'),
  CountryLogo(imagePath: 'assets/images/ms.png', correctAnswer: 'Montserrat'),
  CountryLogo(imagePath: 'assets/images/ma.png', correctAnswer: 'Morocco'),
  CountryLogo(imagePath: 'assets/images/mz.png', correctAnswer: 'Mozambique'),
  CountryLogo(imagePath: 'assets/images/mm.png', correctAnswer: 'Myanmar'),
  CountryLogo(imagePath: 'assets/images/na.png', correctAnswer: 'Namibia'),
  CountryLogo(imagePath: 'assets/images/nr.png', correctAnswer: 'Nauru'),
  CountryLogo(imagePath: 'assets/images/np.png', correctAnswer: 'Nepal'),
  CountryLogo(imagePath: 'assets/images/nl.png', correctAnswer: 'Netherlands (the)'),
  CountryLogo(imagePath: 'assets/images/nc.png', correctAnswer: 'New Caledonia'),
  CountryLogo(imagePath: 'assets/images/nz.png', correctAnswer: 'New Zealand'),
  CountryLogo(imagePath: 'assets/images/ni.png', correctAnswer: 'Nicaragua'),
  CountryLogo(imagePath: 'assets/images/ne.png', correctAnswer: 'Niger (the)'),
  CountryLogo(imagePath: 'assets/images/ng.png', correctAnswer: 'Nigeria'),
  CountryLogo(imagePath: 'assets/images/nu.png', correctAnswer: 'Niue'),
  CountryLogo(imagePath: 'assets/images/nf.png', correctAnswer: 'Norfolk Island'),
  CountryLogo(imagePath: 'assets/images/mp.png', correctAnswer: 'Northern Mariana Islands (the)'),
  CountryLogo(imagePath: 'assets/images/no.png', correctAnswer: 'Norway'),
  CountryLogo(imagePath: 'assets/images/om.png', correctAnswer: 'Oman'),
  CountryLogo(imagePath: 'assets/images/pk.png', correctAnswer: 'Pakistan'),
  CountryLogo(imagePath: 'assets/images/pw.png', correctAnswer: 'Palau'),
  CountryLogo(imagePath: 'assets/images/ps.png', correctAnswer: 'Palestine, State of'),
  CountryLogo(imagePath: 'assets/images/pa.png', correctAnswer: 'Panama'),
  CountryLogo(imagePath: 'assets/images/pg.png', correctAnswer: 'Papua New Guinea'),
  CountryLogo(imagePath: 'assets/images/py.png', correctAnswer: 'Paraguay'),
  CountryLogo(imagePath: 'assets/images/pe.png', correctAnswer: 'Peru'),
  CountryLogo(imagePath: 'assets/images/ph.png', correctAnswer: 'Philippines (the)'),
  CountryLogo(imagePath: 'assets/images/pn.png', correctAnswer: 'Pitcairn'),
  CountryLogo(imagePath: 'assets/images/pl.png', correctAnswer: 'Poland'),
  CountryLogo(imagePath: 'assets/images/pt.png', correctAnswer: 'Portugal'),
  CountryLogo(imagePath: 'assets/images/pr.png', correctAnswer: 'Puerto Rico'),
  CountryLogo(imagePath: 'assets/images/qa.png', correctAnswer: 'Qatar'),
  CountryLogo(imagePath: 'assets/images/mk.png', correctAnswer: 'Republic of North Macedonia'),
  CountryLogo(imagePath: 'assets/images/ro.png', correctAnswer: 'Romania'),
  CountryLogo(imagePath: 'assets/images/ru.png', correctAnswer: 'Russian Federation (the)'),
  CountryLogo(imagePath: 'assets/images/rw.png', correctAnswer: 'Rwanda'),
  CountryLogo(imagePath: 'assets/images/re.png', correctAnswer: 'Réunion'),
  CountryLogo(imagePath: 'assets/images/bl.png', correctAnswer: 'Saint Barthélemy'),
  CountryLogo(imagePath: 'assets/images/sh.png', correctAnswer: 'Saint Helena, Ascension and Tristan da Cunha'),
  CountryLogo(imagePath: 'assets/images/kn.png', correctAnswer: 'Saint Kitts and Nevis'),
  CountryLogo(imagePath: 'assets/images/lc.png', correctAnswer: 'Saint Lucia'),
  CountryLogo(imagePath: 'assets/images/mf.png', correctAnswer: 'Saint Martin (French part)'),
  CountryLogo(imagePath: 'assets/images/pm.png', correctAnswer: 'Saint Pierre and Miquelon'),
  CountryLogo(imagePath: 'assets/images/vc.png', correctAnswer: 'Saint Vincent and the Grenadines'),
  CountryLogo(imagePath: 'assets/images/ws.png', correctAnswer: 'Samoa'),
  CountryLogo(imagePath: 'assets/images/sm.png', correctAnswer: 'San Marino'),
  CountryLogo(imagePath: 'assets/images/st.png', correctAnswer: 'Sao Tome and Principe'),
  CountryLogo(imagePath: 'assets/images/sa.png', correctAnswer: 'Saudi Arabia'),
  CountryLogo(imagePath: 'assets/images/sn.png', correctAnswer: 'Senegal'),
  CountryLogo(imagePath: 'assets/images/rs.png', correctAnswer: 'Serbia'),
  CountryLogo(imagePath: 'assets/images/sc.png', correctAnswer: 'Seychelles'),
  CountryLogo(imagePath: 'assets/images/ua.png', correctAnswer: 'Ukraine'),
  CountryLogo(imagePath: 'assets/images/ae.png', correctAnswer: 'United Arab Emirates (the)'),
  CountryLogo(imagePath: 'assets/images/gb.png', correctAnswer: 'United Kingdom of Great Britain and Northern Ireland (the)'),
  CountryLogo(imagePath: 'assets/images/us.png', correctAnswer: 'United States of America (the)'),
  CountryLogo(imagePath: 'assets/images/uy.png', correctAnswer: 'Uruguay'),
  CountryLogo(imagePath: 'assets/images/uz.png', correctAnswer: 'Uzbekistan'),
  CountryLogo(imagePath: 'assets/images/vu.png', correctAnswer: 'Vanuatu'),
  CountryLogo(imagePath: 'assets/images/ve.png', correctAnswer: 'Venezuela (Bolivarian Republic of)'),
  CountryLogo(imagePath: 'assets/images/vn.png', correctAnswer: 'Vietnam'),
  CountryLogo(imagePath: 'assets/images/vg.png', correctAnswer: 'Virgin Islands (British)'),
  CountryLogo(imagePath: 'assets/images/vi.png', correctAnswer: 'Virgin Islands (U.S.)'),
  CountryLogo(imagePath: 'assets/images/wf.png', correctAnswer: 'Wallis and Futuna'),
  CountryLogo(imagePath: 'assets/images/eh.png', correctAnswer: 'Western Sahara'),
  CountryLogo(imagePath: 'assets/images/ye.png', correctAnswer: 'Yemen'),
  CountryLogo(imagePath: 'assets/images/zm.png', correctAnswer: 'Zambia'),
  CountryLogo(imagePath: 'assets/images/zw.png', correctAnswer: 'Zimbabwe'),

];

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;
  List<String> options = [];

  @override
  void initState() {
    super.initState();
    // Shuffle the countryLogos list at the beginning
    countryLogos.shuffle();
    generateOptions();
  }

  void generateOptions() {
    options.clear();

    // Include the correct answer
    options.add(countryLogos[currentQuestionIndex].correctAnswer);

    // Generate 3 random choices that are not the correct answer
    Set<String> usedCountries = {countryLogos[currentQuestionIndex].correctAnswer};
    while (usedCountries.length < 4) {
      int randomIndex = Random().nextInt(countryLogos.length);
      String randomCountry = countryLogos[randomIndex].correctAnswer;
      if (randomCountry != countryLogos[currentQuestionIndex].correctAnswer) {
        usedCountries.add(randomCountry);
      }
    }

    options = usedCountries.toList();
    options.shuffle();
  }


  void checkAnswer(String selectedAnswer) {
    String correctAnswer = countryLogos[currentQuestionIndex].correctAnswer;
    if (selectedAnswer == correctAnswer) {
      setState(() {
        score++;
      });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Incorrect'),
            content: Text('The correct answer is: $correctAnswer'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
    setState(() {
      currentQuestionIndex++;
      generateOptions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Question ${currentQuestionIndex + 1}/${countryLogos.length}',style: TextStyle(color: Colors.white,fontSize: 25),),
              Text('Score: $score',style: TextStyle(color: Colors.white,fontSize: 25),),
              SizedBox(height: 20),
              Image.asset(
                countryLogos[currentQuestionIndex].imagePath,
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Column(
                children: options.map((option) {
                  return ElevatedButton(
                    onPressed: () => checkAnswer(option),
                    child: Text(option),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 187, 61, 121)), // Set the desired color here
                    ),

                  );
                }).toList(),
              ),
              if (currentQuestionIndex >= countryLogos.length)
                Column(
                  children: [
                    Text('Quiz Completed!'),
                    Text('Your Final Score: $score/${countryLogos.length}'),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentQuestionIndex = 0;
                          score = 0;
                          generateOptions();
                        });
                      },
                      child: Text('Restart Quiz'),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
