import Foundation

@objc(EatMO)
public class EatMO: _EatMO, Selectable {
    var displayName : String {
        return self.name ?? ""
    }
    
    var displayType : String {
        return self.type ?? ""
    }
    
    var displayPhone : String {
        return self.phone ?? ""
    }
    
    var displayImage : String {
        return self.image ?? ""
    }
    
    var displayAddress : String {
        return self.address ?? ""
    }
    
    var displayRating : NSNumber {
        return self.rating ?? 0
    }
}
