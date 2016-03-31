import Foundation

@objc(EventMO)
public class EventMO: _EventMO {
    var displayName : String {
        return self.title ?? ""
    }
    
    var displayType : String {
        return self.location ?? ""
    }
    
    var displayPhone : String {
        return self.date ?? ""
    }
    
    var displayImage : String {
        return self.price ?? ""
    }
    
    
}
