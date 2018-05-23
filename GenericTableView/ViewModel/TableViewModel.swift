import UIKit

typealias UserCellModel = GenericTableCellConfigurator<UserDataCell, UserDataModel>
typealias MessageCellModel = GenericTableCellConfigurator<MessageDataCell, String>
typealias ImageCellModel = GenericTableCellConfigurator<ImageDataCell, URL>

class TableViewModel {
    let items: [CellConfigurator] = [
        UserCellModel.init(item: UserDataModel(name: "VR Dev", imageName: "Hat.jpg")),
        
        MessageCellModel.init(item: "This is Demo for Dynamic Tableview"),
        ImageCellModel.init(item: Bundle.main.url(forResource: "Hat", withExtension: "jpg")!),
        UserCellModel.init(item: UserDataModel(name: "Goa", imageName: "Hat.jpg")),
        MessageCellModel.init(item: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
        GenericTableCellConfigurator<WarningDataCell, String>.init(item: "Warning Message")
    ]
}
