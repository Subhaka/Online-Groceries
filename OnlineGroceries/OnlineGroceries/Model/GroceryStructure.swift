
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
    let catName: String
    let divisionName: String
    
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
        case catName = "cat_name"
        case divisionName = "division_name"
    }
    
    var formattedOfferPrice: String{
        return String(format:"%.2f", offerPrice)
    }
}
