import 'package:tourism/model/musees.dart';

final museum = <Musee>[
  Musee(
    engname: 'The "Koubba" Museum ',
    arbname: ' متحف القبة',
    info:
        "The Koubba Museum is a small museum located in the heart of the Medina of Sousse. It is housed in a restored 11th-century building that was once part of a palace complex. The museum showcases a collection of artifacts from the Islamic period, including ceramics, coins, and jewelry. Visitors can explore the museum's exhibits and learn about the history and culture of the region.",
    image: 'images/musee/koubba/musee2.jpg',
    images: [
      'images/musee/koubba/musee1.jpg',
      'images/musee/koubba/musee2.jpg',
      'images/musee/koubba/musee3.jpg',
      'images/musee/koubba/musee4.jpg',
      'images/musee/koubba/musee5.jpg',
      'images/musee/koubba/musee6.jpg',
      'images/musee/koubba/musee7.jpg',
      'images/musee/koubba/musee8.jpg',
      'images/musee/koubba/musee9.jpg',
      'images/musee/koubba/musee10.jpg',
    ],
    mhistory: [
      MuseumHistory(
        title: 'Historical Background',
        content:
            "The museum is housed in a restored traditional building known as a Kobba a type of vaulted structure, originally used as a meeting space or residence. Its strategic location within the Medina gives it a deep connection to the city's history ",
      ),
      MuseumHistory(
        title: 'Cultural and Archaeological Significance',
        content:
            "The Museum of Kobba showcases a diverse range of artifacts, including Roman mosaics, Islamic pottery, and other archaeological treasures. These collections highlight the region's evolution from antiquity through the Islamic period",
      ),
      MuseumHistory(
        title: 'Educational Role',
        content:
            "As a key educational resource, the museum serves as a place of learning for visitors, offering insights into Tunisia's ancient civilizations and the development of its cultural heritage over time.",
      ),
      MuseumHistory(
        title: 'Preservation and Tourism',
        content:
            "The Museum of Kobba, part of Sousse's UNESCO World Heritage site, attracts tourists who seek to explore the history, art, and architecture that define this ancient city. It plays an important role in preserving Tunisia's rich cultural legacy.",
      ),
    ],
    longitude: 10.638188315279788,
    latitude: 35.82510561841018,
  ),
  Musee(
    engname: 'Dar Essid Museum',
    arbname: 'متحف دار الصيد',
    info:
        "Dar Essid is a beautifully preserved traditional Tunisian house located in the heart of Sousse Medina. Now a museum, it offers visitors a unique glimpse into the daily life of a wealthy 19th-century Tunisian family.",
    image: 'images/musee/darsid/darsid1.jpg',
    images: [
      'images/musee/darsid/darsid1.jpg',
      'images/musee/darsid/darsid2.jpg',
      'images/musee/darsid/darsid3.jpg',
      'images/musee/darsid/darsid4.jpg',
      'images/musee/darsid/darsid5.jpg',
    ],
    mhistory: [
      MuseumHistory(
          title: 'Historical Background',
          content:
              "Originally built in the 18th century, Dar Essid belonged to a noble family and reflects the elegance of traditional Tunisian architecture. The house was later converted into a museum to showcase the rich heritage of Sousse’s aristocratic past"),
      MuseumHistory(
          title: 'Architecture and Design',
          content:
              "The mansion is known for its intricate tilework, carved wooden doors, and stunning courtyards. Inside, visitors can admire original furnishings, delicate stucco decorations, and beautiful mosaics that illustrate the luxurious lifestyle of its former residents."),
      MuseumHistory(
          title: 'Tourism and Preservation ',
          content:
              "Today, Dar Essid is a must-visit for history and culture enthusiasts. As part of the UNESCO-listed Medina of Sousse, it helps preserve Tunisia’s rich heritage while offering an immersive experience for visitors exploring the old city."),
    ],
    longitude: 10.635528659207624,
    latitude: 35.82715558341977,
  ),
  Musee(
    engname: 'Dar Baba Museum',
    arbname: 'متحف دار بابا',
    info: "",
    image: 'images/musee/darbaba/baba1.jpg',
    images: [
      'images/musee/darbaba/baba1.jpg',
      'images/musee/darbaba/baba2.jpg',
      'images/musee/darbaba/baba3.jpg',
      'images/musee/darbaba/baba4.jpg',
      'images/musee/darbaba/baba5.jpg',
      'images/musee/darbaba/baba6.jpg',
      'images/musee/darbaba/baba7.jpg',
    ],
    mhistory: [
      MuseumHistory(
          title: 'Historical Background',
          content:
              "Originally founded by the Phoenicians, later flourished under Roman rule as Hadrumetum. The city played a crucial role in trade and military defense throughout history. The museum, established within the ancient fortress, preserves and displays treasures that reflect the region’s dynamic past."),
      MuseumHistory(
          title: 'Architectural Significance',
          content:
              "The museum is set within the Kasbah, a historic fortification that offers breathtaking views of the Medina and the Mediterranean Sea. Its traditional courtyards and stone walls create an authentic atmosphere that enhances the visitor experience."),
      MuseumHistory(
          title: 'Collections and Exhibits',
          content:
              "Roman mosaics : \n – Some of the finest and most detailed in Tunisia, depicting mythological scenes and daily life. \n Punic and Roman artifacts : \n – Pottery, statues, and coins that reveal the commercial and cultural exchanges of ancient Sousse. \n Islamic ceramics : \n – A rich collection of glazed pottery that showcases the city’s artistic heritage. \n Byzantine relics : \n  – Christian symbols and decorative pieces reflecting the transition from Roman to Byzantine rule."),
    ],
    longitude: 10.637660612461552,
    latitude: 35.82281370508118,
  ),
];
