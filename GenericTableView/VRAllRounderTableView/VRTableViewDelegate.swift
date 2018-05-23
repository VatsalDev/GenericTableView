import UIKit

protocol TableViewInteractionDelegate: class {
    func tableView(_ tableView: UITableView,  at indexPath: IndexPath)
}

class VRTableViewDelegate: NSObject {
    weak var interactionDelegate: TableViewInteractionDelegate?
    fileprivate weak var tableView: UITableView!
    init(tableView: UITableView) {
        self.tableView = tableView
    }
}

extension VRTableViewDelegate: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.interactionDelegate?.tableView(tableView, at: indexPath)
    }
}
