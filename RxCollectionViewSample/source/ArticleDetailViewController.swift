import UIKit

class ArticleDetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    private var article: Article?
    
    convenience init(article: Article) {
        self.init(nib: R.nib.articleDetailViewController)
        self.article = article
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = article?.title
        self.dateLabel.text = article?.updatedAt.description
    }
}
