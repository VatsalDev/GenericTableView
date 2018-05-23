import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    internal let viewModel = TableViewModel()
    var vrTableViewDataSource: VRTableViewDataSource!
    var vrTableViewDelegate: VRTableViewDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialize()
    }
    
    fileprivate func initialize() {
        let vrTableViewDatasource = VRTableViewDataSource(tableView: self.tableView, modelTypeArray: self.viewModel.items)
        self.tableView.dataSource = vrTableViewDatasource
        self.vrTableViewDataSource = vrTableViewDatasource
        
        let vrTableViewDelegate = VRTableViewDelegate(tableView: self.tableView)
        self.tableView.delegate = vrTableViewDelegate
        self.vrTableViewDelegate = vrTableViewDelegate
        self.vrTableViewDelegate.interactionDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: TableViewInteractionDelegate {
    func tableView(_ tableView: UITableView, at indexPath: IndexPath) {
        print("From indexpath get the selected value from model and do further stuffs. Use this method depeding on the Architecture pattern you follow in your project.")
        print("Selected Row = \(indexPath.row)")
    }
}
