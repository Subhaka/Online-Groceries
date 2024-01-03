

import Foundation
struct GroceryStructure: Codable, Identifiable {
    let id: Int
    let offerPrice: Double
    let startDate: String
    let endDate: String
    let brandId: Int
    let name: String
    let details: String
    let unitName: String
    let unitValue: Int
    let nutritionWeight: String
    let price: Double
    let image: String
    let color: String
    let categoryName: String
    let divisionName: String
    let nutrition: Nutrition
    
    enum CodingKeys: String, CodingKey {
        case id
        case offerPrice = "offer_price"
        case startDate = "start_date"
        case endDate = "end_date"
        case brandId = "brand_id"
        case name
        case details
        case unitName = "unit_name"
        case unitValue = "unit_value"
        case nutritionWeight = "nutrition_weight"
        case price
        case image
        case color
        case categoryName = "cat_name"
        case divisionName = "division_name"
        case nutrition
    }
    var formattedOfferPrice: String{
            return String(format:"%.2f", offerPrice)
        }

}

struct Nutrition: Codable {
    let carbohydrates: Double
       let fats: Double
       let lipids: Double
       let protein: Double
       let vitamin_A: Double // Ensure it matches the key in your JSON data
       let vitamin_C: Double
       let vitamin_D: Double
    
    enum CodingKeys: String, CodingKey {
        case carbohydrates
        case fats
        case lipids
        case protein
        case vitamin_A = "vitamin_A"
        case vitamin_C
        case vitamin_D
    }
}
