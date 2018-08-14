import UIKit

class ArticleCollectionCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    static let cellHeight: CGFloat = 70.0
    static let cellMargin: CGFloat = 8.0
    
    func update(title: String, date: Date) {
        titleLabel.text = title
        dateLabel.text = date.description
    }
}
