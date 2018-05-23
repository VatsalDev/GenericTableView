import UIKit

class UserDataCell: UITableViewCell, ConfigurableCell {
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!

    func configure(data user: UserDataModel) {
        avatarView.image = UIImage(named: user.imageName)
        userNameLabel.text = user.name
    }
}

class MessageDataCell: UITableViewCell, ConfigurableCell {
    @IBOutlet weak var messageLabel: UILabel!

    func configure(data message: String) {
        messageLabel.text = message
    }
}


class ImageDataCell: UITableViewCell, ConfigurableCell {
    @IBOutlet weak var pictureView: UIImageView!

    func configure(data url: URL) {
        if let data = try? Data(contentsOf: url) {
            self.pictureView.image = UIImage(data: data)
        }
    }
}

class WarningDataCell: UITableViewCell, ConfigurableCell {
    @IBOutlet weak var messageLabel: UILabel!
    
    func configure(data message: String) {
        messageLabel.text = message
    }
}
