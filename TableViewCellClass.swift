import UIKit

class TableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    

    @IBOutlet weak var UserPhoto: UIImageView!
    //用户头像
    @IBOutlet weak var UserName: UILabel!
    //用户名称
    @IBOutlet weak var PublishTime: UILabel!
    //发表时间
    @IBOutlet weak var PublishContent: UITextView!
    //发布内容
    @IBOutlet weak var PublishImageA: UIImageView!
    //发布图片
    @IBOutlet weak var PublishImageB: UIImageView!
    @IBOutlet weak var PublishImageC: UIImageView!
    

}

