import UIKit

class UserCenterCellClass: UITableViewCell {
    
    
    var userImage : UIImageView!
    var cellTitle = UILabel()
    var cellDetail = UILabel()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style , reuseIdentifier: reuseIdentifier)
     
        
        userImage = UIImageView(frame: CGRectMake(10, 10, 30, 30))
        cellTitle = UILabel(frame: CGRectMake(70, 15, 200, 30))
        cellDetail = UILabel(frame: CGRectMake(10, 10, 10, 10))
            

        self.contentView.addSubview(userImage)
        self.contentView.addSubview(cellDetail)
        self.contentView.addSubview(cellTitle)
        }
    

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    
}




