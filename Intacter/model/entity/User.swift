
import Foundation

            




struct  UserBase : Codable {
    
    var message : String
    var error : Bool
       var data : User?
    
    
    enum CodingKeys: String, CodingKey {
          case error, data ,
            message
      }
}

struct User : Codable{
    var id  : String?
    var staff_id : String?
    var fname : String?
     var mobile : String?

    var lname : String?


    var oname : String?
    var image : String?
    
    var personal_email : String?
     var gender: String?
     var designation : String?
    var address : String?
    var email : String?
    var authorization : String?
    
    enum CodingKeys: String, CodingKey {
        case id   , staff_id,mobile,oname,personal_email,gender,designation,address,email,authorization,
        image = "profile_image",
          fname  = "first_name",
        lname = "last_name"
    }

}






