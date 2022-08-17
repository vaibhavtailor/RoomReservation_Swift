//
//  Hotel.swift
//  
//

import Foundation

//Defining an array to store movie information
struct Hotel {
    let name: String
    let ratings: String
    let location: String
    let hotelDetails: String
    let roomDetails: String
    let roomPrice: String
    let image: String
}

//Populating array with movie objects
var hotels: [Hotel] = [
    Hotel(name: "L Hotel (SHA Extra Plus)", ratings: "4.3/5", location: "Khon Kaen, Thailand", hotelDetails: "The hotel is located at 88/333 Lao Nadi Road, Nai Muang Sub-District,, Khon Kaen City Center, Khon Kaen, Thailand. The hotel is very luxurious and a very nice place yo live. ", roomDetails: "The hotle has 1BHK and 2BHK rooms availabe. The rooms are clean.", roomPrice: "150", image: "a"),
    Hotel(name: "President Hotel", ratings: "3.5/5", location: "Benidorm, Spain", hotelDetails: "The hotel is located at Philippines Avenue, 10 Levante Beach, 03503 Benidorm Spain. The beaches and market are very close and convenient.", roomDetails: "The hotel has many diffrent kinds of room. Rooms give a satisfying environment to live.", roomPrice: "130", image: "b"),
    Hotel(name: "Best Western Hotel Cristal", ratings: "4.5/5", location: "Białystok, Poland", hotelDetails: "The hotel is located at Lipowa 3, 15-424 Białystok, Poland. This is a 4-star hotel.", roomDetails: "The rooms are luxurious.", roomPrice: "170", image: "c"),
    Hotel(name: "Miracle Resort Hotel", ratings: "4.5/5", location: "Bialystok, a 0.3 km de: Best Western Hotel Cristal",
     hotelDetails: "Children are welcome Children can stay for free if using existing beds when occupying the parent or guardian's room Rollaway/extra beds are not available Free cribs are available on request at the property",
     roomDetails: "Free WiFi, If you have requests for specific accessibility needs, please contact the property using the information on the reservation confirmation received after booking.", roomPrice: "213", image: "d"),
     Hotel(name: "Royal & Spa",ratings: "3.0/5", location:"Guatemala City, Guatemala", hotelDetails: "Disinfectant is used to clean the property. High-touch surfaces are cleaned and disinfected Sheets and towels are washed at 60°C/140°F or hotter", roomDetails: "Free Wifi, good natural lightning and airflow. Furnitured and all utilities are included.", roomPrice: "192", image: "e"),
      Hotel(name:"Barcelo Guatemala City", ratings:"4.3/5",
     location:"Cancum", hotelDetails: "Follows standard cleaning and disinfection practices of Clean Promise (IHG).Follows industry cleaning and disinfection practices of COVID-19 Guidelines (WHO)", roomDetails: "room with sound proof walls, nice for streamers or games.", roomPrice: "173", image: "f"),
    Hotel(name:"SLS Cancun Hotel & Residences", ratings:"3.8/5", location:"HOLLYWOOD, FL", hotelDetails: "Contactless check-out, Cashless transactions are available for all charges at the property", roomDetails: "With great air conditioning, spacious for studio work, fine with color theme.", roomPrice: "312", image: "g"),
      Hotel(name:"GLō", ratings:"4.6/5", location:"32 East Main Street, Dahlonega 30533, United States", hotelDetails: "Social distancing measures in place, Contactless room service is available", roomDetails: "Premium bedding, bed sheets provided. Egyptian cotton sheets", roomPrice: "200", image: "h"),
      Hotel(name:"Holiday Inn Express", ratings:"3.9/5", location:"Guatemala City, Guatemala", hotelDetails: "Personal protective equipment worn by staff and temperature checks given to staff. Masks and gloves available", roomDetails: "LCD TV with cable service, pay movies and 1 meeting room, Desk and Conference space (1100 square feet)", roomPrice: "190", image: "i"),
      Hotel(name:"Waterton Lakes Lodge", ratings:"4.9/5", location:"Waterton Park", hotelDetails: "Near a metro station, in the city center and in the historical district. 24-hour fitness center and Fitness facilities nearby", roomDetails: "With great air conditioning, spacious for studio work, fine with color theme.", roomPrice: "199", image: "j"),
    
]


