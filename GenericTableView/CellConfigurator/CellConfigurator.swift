import UIKit

protocol ConfigurableCell {
    associatedtype GenericDataType
    func configure(data: GenericDataType)
}

protocol CellConfigurator {
    static var reuseId: String { get }
    func configure(cell: UIView)
}

class GenericTableCellConfigurator<CellType: ConfigurableCell, GenericDataType>: CellConfigurator where CellType.GenericDataType == GenericDataType, CellType: UITableViewCell {
    
    static var reuseId: String { return String(describing: CellType.self) }
    
    let item: GenericDataType
    
    init(item: GenericDataType) {
        self.item = item
    }
    
    func configure(cell: UIView) {
        (cell as! CellType).configure(data: item)
    }
}
