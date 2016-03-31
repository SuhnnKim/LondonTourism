// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to EventMO.swift instead.

import CoreData

public enum EventMOAttributes: String {
    case date = "date"
    case location = "location"
    case price = "price"
    case title = "title"
}

public class _EventMO: NSManagedObject {

    // MARK: - Class methods

    public class func entityName () -> String {
        return "Event"
    }

    public class func entity(managedObjectContext: NSManagedObjectContext) -> NSEntityDescription? {
        return NSEntityDescription.entityForName(self.entityName(), inManagedObjectContext: managedObjectContext)
    }

    // MARK: - Life cycle methods

    public override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }

    public convenience init?(managedObjectContext: NSManagedObjectContext) {
        guard let entity = _EventMO.entity(managedObjectContext) else { return nil }
        self.init(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged public
    var date: String?

    @NSManaged public
    var location: String?

    @NSManaged public
    var price: String?

    @NSManaged public
    var title: String?

    // MARK: - Relationships

}

