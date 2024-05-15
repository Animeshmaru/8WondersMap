import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
//        Location(
//            name: "Colosseum",
//            cityName: "Rome",
//            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
//            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
//            imageNames: [
//                "rome-colosseum-1",
//                "rome-colosseum-2",
//                "rome-colosseum-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Colosseum"),
//        Location(
//            name: "Pantheon",
//            cityName: "Rome",
//            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
//            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
//            imageNames: [
//                "rome-pantheon-1",
//                "rome-pantheon-2",
//                "rome-pantheon-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
//        Location(
//            name: "Trevi Fountain",
//            cityName: "Rome",
//            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
//            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
//            imageNames: [
//                "rome-trevifountain-1",
//                "rome-trevifountain-2",
//                "rome-trevifountain-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
//        Location(
//            name: "Eiffel Tower",
//            cityName: "Paris",
//            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
//            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
//            imageNames: [
//                "paris-eiffeltower-1",
//                "paris-eiffeltower-2",
//            ],
//            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
//        Location(
//            name: "Louvre Museum",
//            cityName: "Paris",
//            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
//            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
//            imageNames: [
//                "paris-louvre-1",
//                "paris-louvre-2",
//                "paris-louvre-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Louvre"),
      Location(
        name: "Taj Mahal",
        cityName: "Agra",
        coordinates: CLLocationCoordinate2D(latitude: 27.1751, longitude: 78.0421),
        description: "The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1631 by the Mughal emperor Shah Jahan to house the tomb of his favorite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself. The tomb is the centerpiece of a 17-hectare complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.",
        imageNames: [
          "taj-mahal-1",
          "taj-mahal-2",
          "taj-mahal-3",
        ],
        link: "https://en.wikipedia.org/wiki/Taj_Mahal"
      ),
      Location(
        name: "Great Wall of China",
        cityName: "China",
        coordinates: CLLocationCoordinate2D(latitude: 40.4319, longitude: 116.5704),
        description: "The Great Wall of China is a series of fortifications made of stone, brick, tamped earth, wood, and other materials, generally built along an east-to-west line across the historical northern borders of China to protect the Chinese states and empires against the raids and invasions of the various nomadic groups.",
        imageNames: [
          "great-wall-1",
          "great-wall-2",
          "great-wall-3",
        ],
        link: "https://en.wikipedia.org/wiki/Great_Wall_of_China"
      ),
      Location(
        name: "Petra",
        cityName: "Jordan",
        coordinates: CLLocationCoordinate2D(latitude: 30.3285, longitude: 35.4444),
        description: "Petra is a historical and archaeological city in southern Jordan. It is famous for its rock-cut architecture and water conduit system. Established possibly as early as 312 BC as the capital city of the Nabataeans, it is a symbol of Jordan, as well as its most-visited tourist attraction.",
        imageNames: [
          "petra-1",
          "petra-2",
          "petra-3",
        ],
        link: "https://en.wikipedia.org/wiki/Petra"
      ),
      Location(
        name: "Christ the Redeemer",
        cityName: "Rio de Janeiro",
        coordinates: CLLocationCoordinate2D(latitude: -22.9519, longitude: -43.2105),
        description: "Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil, created by French sculptor Paul Landowski and built by Brazilian engineer Heitor da Silva Costa, in collaboration with French engineer Albert Caquot. The statue is 30 metres tall, not including its 8-metre pedestal, and its arms stretch 28 metres wide.",
        imageNames: [
          "christ-redeemer-1",
          "christ-redeemer-2",
          "christ-redeemer-3",
        ],
        link: "https://en.wikipedia.org/wiki/Christ_the_Redeemer_(statue)"
      ),
      Location(
        name: "Machu Picchu",
        cityName: "Cusco",
        coordinates: CLLocationCoordinate2D(latitude: -13.1631, longitude: -72.5450),
        description: "Machu Picchu is a 15th-century Inca citadel located in the Eastern Cordillera of southern Peru on a 2,430-meter mountain ridge. It is located in the Machupicchu District within Urubamba Province above the Sacred Valley, which is 80 kilometers northwest of Cuzco.",
        imageNames: [
          "machu-picchu-1",
          "machu-picchu-2",
        ],
        link: "https://en.wikipedia.org/wiki/Machu_Picchu"
      ),
      Location(
        name: "Chichen Itza",
        cityName: "Yucatan",
        coordinates: CLLocationCoordinate2D(latitude: 20.6843, longitude: -88.5678),
        description: "Chichen Itza was a large pre-Columbian city built by the Maya people in the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico. Chichen Itza was a major focal point in the Northern Maya Lowlands from the Late Classic (c. AD 600–900) through the Terminal Classic (c. AD 800–900) and into the early portion of the Postclassic period (c. AD 900–1200).",
        imageNames: [
          "chichen-itza-1",
          "chichen-itza-2",
          "chichen-itza-3",
        ],
        link: "https://en.wikipedia.org/wiki/Chichen_Itza"
      ),
      Location(
        name: "Roman Colosseum",
        cityName: "Rome",
        coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
        description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
        imageNames: [
          "rome-colosseum-1",
          "rome-colosseum-2",
          "rome-colosseum-3",
        ],
        link: "https://en.wikipedia.org/wiki/Colosseum"
      ),
      Location(
        name: "Roman Pantheon",
        cityName: "Rome",
        coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
        description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
        imageNames: [
          "rome-pantheon-1",
          "rome-pantheon-2",
          "rome-pantheon-3",
        ],
        link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"
      )
    ]
}
