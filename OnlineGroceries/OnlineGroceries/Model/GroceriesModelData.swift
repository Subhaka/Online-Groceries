import Foundation

class GroceriesModelData: ObservableObject {
    @Published var modelData: [GroceryStructure] = []
    @Published var modelCatData: [CategoryStructure] = []
    
    init(){
        loadData()
        loadCatData()
    }
    
    func loadData() {
        if let url = Bundle.main.url(forResource: "groceries", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                self.modelData = try decoder.decode([GroceryStructure].self, from: data)
                
                // Data has been loaded into modelData
                print("Loaded data: \(modelData)")
            } catch {
                print("Error loading data: \(error)")
            }
        } else {
            print("File not found")
        }
    }
    
    
    func loadCatData() {
        if let url = Bundle.main.url(forResource: "category", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                self.modelCatData = try decoder.decode([CategoryStructure].self, from: data)
                
                // Data has been loaded into modelData
                print("Loaded data Cat: \(modelCatData)")
            } catch {
                print("Error loading Cat data: \(error)")
            }
        } else {
            print("Cat File not found")
        }
    }
}
