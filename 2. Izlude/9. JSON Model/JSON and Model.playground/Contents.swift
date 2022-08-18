import UIKit

let json =
"""
[
 {
   "id" : "1",
   "type" : "Banking",
   "name" : "Saving",
   "amount": 929466.23,
   "created_date_time" : "2013-07-21T19:32:00Z"
 },
 {
   "id" : "2",
   "type" : "Investment",
   "name" : "No-Fee",
   "amount": 929466.23,
   "created_date_time" : "2022-08-17T19:32:00Z"
 }
]
"""

enum AccountType: String, Codable {
    case Saving
    case Investment
}

struct Account: Codable {
    let id: String
    let type: AccountType
    let name: String
    let amount: Decimal
    let createdDateTime: Date
}

let jsonData = json.data(using: .utf8)!

let decoder = JSONDecoder()
decoder.keyDecodingStrategy = .convertFromSnakeCase
decoder.dateDecodingStrategy = .iso8601

let result = try! decoder.decode(Account.self, from: jsonData)

print(result)
//if let result = try? decoder.decode(Acoount.self, from: jsonData) {
//    print(result)
//}





