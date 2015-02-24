import UIKit

class UserCenterCellClass: UITableViewCell {
    
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
//        
//    }
// 
//     required init(coder aDecoder: NSCoder) {
//         fatalError("init(coder:) has not been implemented")
//     }
//   

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

        var userImage = UIImageView(frame:CGRectMake(15, 15, 50, 50))
        var title = UILabel(frame: CGRectMake(175, 20, 200,20))
        var detail = UILabel(frame:CGRectMake(75, 40, 200, 20))


}


