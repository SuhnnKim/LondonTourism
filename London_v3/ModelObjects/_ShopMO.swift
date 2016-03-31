// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ShopMO.swift instead.

import CoreData

public enum ShopMOAttributes: String {
    case address = "address"
    case image = "image"
    case name = "name"
    case phone = "phone"
    case rating = "rating"
    case type = "type"
}

public class _ShopMO: NSManagedObject {

    // MARK: - Class methods

    public class func entityName () -> String {
        return "Shop"
    }

    public class func entity(managedObjectContext: NSManagedObjectContext) -> NSEntityDescription? {
        return NSEntityDescription.entityForName(self.entityName(), inManagedObjectContext: managedObjectContext)
    }

    // MARK: - Life cycle methods

    public override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }

    public convenience init?(managedObjectContext: NSManagedObjectContext) {
        guard let entity = _ShopMO.entity(managedObjectContext) else { return nil }
        self.init(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged public
    var address: String?

    @NSManaged public
    var image: String?

    @NSManaged public
    var name: String?

    @NSManaged public
    var phone: String?

    @NSManaged public
    var rating: NSNumber?

    @NSManaged public
    var type: String?

    // MARK: - Relationships

}

