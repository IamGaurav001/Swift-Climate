
import Foundation

struct WeatherModel
{
    let temperature : Double
    let cityName : String
    let conditionid : Int
    
    var temperatureString : String {
        return String(format: "%.0f", temperature)
    }
    
    var conditionName : String {
        switch conditionid {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}
