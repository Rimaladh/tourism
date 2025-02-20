import 'package:tourism/model/landmarks.dart';

final landmarks = <Landmark>[
  Landmark(
    en_name: ' The Archaeological Museum ',
    ar_name: 'المتحف الأثري ',
    info:
        "The Archaeological Museum of Sousse is one of Tunisia’s most important cultural landmarks. Located within the Kasbah of Sousse, it houses a remarkable collection of artifacts that tell the story of the city’s rich and diverse history, from the Punic era to the Byzantine period.",
    images: [
      'images/musee/Archeological/arc1.JPG',
      'images/musee/Archeological/arc2.jpg',
      'images/musee/Archeological/arc3.jpg',
      'images/musee/Archeological/arc4.jpg',
      'images/musee/Archeological/arc5.jpg',
      'images/musee/Archeological/arc6.jpg',
      'images/musee/Archeological/arc7.jpg',
      'images/musee/Archeological/arc8.jpg',
      'images/musee/Archeological/arc9.jpg',
      'images/musee/Archeological/arc10.jpg',
    ],
    history: [
      HistorySection(
          title: 'Historical Background',
          content:
              "Originally founded by the Phoenicians, later flourished under Roman rule as Hadrumetum. The city played a crucial role in trade and military defense throughout history. The museum, established within the ancient fortress, preserves and displays treasures that reflect the region’s dynamic past."),
      HistorySection(
          title: 'Architectural Significance',
          content:
              "The museum is set within the Kasbah, a historic fortification that offers breathtaking views of the Medina and the Mediterranean Sea. Its traditional courtyards and stone walls create an authentic atmosphere that enhances the visitor experience."),
      HistorySection(
          title: 'Collections and Exhibits',
          content:
              "Roman mosaics : \n – Some of the finest and most detailed in Tunisia, depicting mythological scenes and daily life. \n Punic and Roman artifacts : \n – Pottery, statues, and coins that reveal the commercial and cultural exchanges of ancient Sousse. \n Islamic ceramics : \n – A rich collection of glazed pottery that showcases the city’s artistic heritage. \n Byzantine relics : \n  – Christian symbols and decorative pieces reflecting the transition from Roman to Byzantine rule."),
    ],
     
    longitude: 10.635317355672358,
    latitude: 35.82303695635557,
  ),
  Landmark(
    en_name: 'Ribat Sousse',
    ar_name: 'الرباط',
    info:
        "The Ribat of Sousse, built in the 8th century, is an iconic fortress that once defended the coast of Tunisia. It played an important role as both a military stronghold and a religious retreat. Today, it is a UNESCO World Heritage site and stands as a testament to Tunisia's rich historical and architectural legacy .",
    images: [
      'images/ribat/ribat5.jpg',
      'images/ribat/ribat1.jpg',
      'images/ribat/ribat3.jpg',
    ],
    history: [
      HistorySection(
        title: 'Historical Significance',
        content:
            "The Ribat was constructed during the Aghlabid dynasty, serving both as a defense against invasions and as a place of religious devotion for monks and soldiers.",
      ),
      HistorySection(
        title: 'Role in Defense',
        content:
            "The fortress was strategically placed to protect Tunisia's coastal region from foreign invaders, ensuring the safety and stability of the area.",
      ),
      HistorySection(
        title: 'UNESCO World Heritage',
        content:
            "Now a UNESCO World Heritage site, the Ribat attracts visitors from around the world, offering a glimpse into the region's history and impressive Islamic architecture.",
      ),
    ],
     
    longitude: 10.638792493086545,
    latitude: 35.827682799001956,
  ),
  Landmark(
    en_name: 'The Great Mosque',
    ar_name: 'الجامع الكبير',
    info:
        "The Great Mosque of Sousse is one of Tunisia’s most significant Islamic landmarks. Built in the 9th century during the Aghlabid era, it stands out with its fortress-like design, reflecting the military character of the city at the time.",
    images: [
      'images/jemaa/jemaa1.jpg',
      'images/jemaa/jemaa2.jpg',
      'images/jemaa/jemaa3.jpg',
      'images/jemaa/jemaa4.jpg',
      'images/jemaa/jemaa5.jpg',
    ],
    history: [
      HistorySection(
          title: 'History & Foundation',
          content:
              'The mosque was built in 850 AD by order of the Aghlabid ruler Abu al-Abbas Muhammad, making it one of the oldest mosques in Tunisia.'),
      HistorySection(
          title: 'Architecture & Design',
          content:
              'Unlike traditional mosques, the Great Mosque features massive stone walls and watchtower-like structures, resembling a fortress. It notably lacks a minaret, emphasizing its defensive purpose'),
      HistorySection(
          title: 'Historical Significance',
          content:
              'Beyond being a place of worship, the mosque played a key role in the city’s religious and cultural life. Today, it remains one of Sousse’s most important historical monuments.'),
    ],
     
    longitude: 10.639783189634016,
    latitude: 35.826997054263565,
  ),
];
