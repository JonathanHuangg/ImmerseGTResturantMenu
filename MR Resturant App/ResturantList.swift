//
//  ResturantList.swift
//  MR Resturant App
//
//  Created by Jonathan Huang on 4/8/23.
//

import Foundation
import SwiftUI

struct Resturant: Codable {
    var id: Int
    var name: String
    var weeklyschedule: WeeklySchedule
    var location: Location
    
    struct Location: Codable {
        var country: String
        var state: String
        var localAddress: String //ex: 935 Peachtree St NE UNIT 935,
        var zipcode: Int
    }

    struct WeeklySchedule: Codable {
        var monday: HoursOfOperation
        var tuesday: HoursOfOperation
        var wednesday: HoursOfOperation
        var thursday: HoursOfOperation
        var friday: HoursOfOperation
        var saturday: HoursOfOperation
        var sunday: HoursOfOperation
    }


    struct HoursOfOperation: Codable {
        var openingHour: Int
        var openingMinute: Int
        var closingHour: Int
        var closingMinute: Int
        
        func getTime() -> String {
            return "\(openingHour):\(openingMinute) AM - \(closingHour):\(closingHour) PM"
        }
    }
    var description: String
    private var imagename: String
    var image: Image {
        Image(imagename)
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        weeklyschedule = try container.decode(WeeklySchedule.self, forKey: .weeklyschedule)
        location = try container.decode(Location.self, forKey: .location)
        description = try container.decode(String.self, forKey: .description)
        imagename = try container.decode(String.self, forKey: .imagename)
    }
}




