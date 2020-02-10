//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by damir hodez on 08/02/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class MessageCell: UITableViewCell {

    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 5
    }
    
    func setMessages(message: Message) {
        if message.sender == Auth.auth().currentUser?.email {
            leftImageView.isHidden = true
            rightImageView.isHidden = false
            messageBubble.backgroundColor = UIColor(named: K.BrandColors.purple)
            label.textColor = UIColor(named: K.BrandColors.lightPurple)
        } else {
            leftImageView.isHidden = false
            rightImageView.isHidden = true
            messageBubble.backgroundColor = UIColor(named: K.BrandColors.lightPurple)
            label.textColor = UIColor(named: K.BrandColors.purple)
        }
        label.text = message.body
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
