import UIKit

class VRTableViewDataSource: NSObject {
    
    fileprivate weak var tableView: UITableView!
    fileprivate var cellModelArray: [CellConfigurator]!
    init(tableView: UITableView, modelTypeArray: [CellConfigurator]) {
        self.tableView = tableView
        self.cellModelArray = modelTypeArray
    }
}

extension VRTableViewDataSource: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cellModelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = self.cellModelArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: type(of: item).reuseId)!
        item.configure(cell: cell)
        
        return cell
    }
}
