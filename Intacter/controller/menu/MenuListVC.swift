//
//  MenuListVC.swift
//  Intacter
//
//  Created by Muraino Yakubu on 5/24/20.
//  Copyright © 2020 Muraino Yakubu. All rights reserved.
//

import UIKit

class MenuListVC: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        NotificationCenter.default.post(name: NSNotification.Name("MenuBarSideBar"), object: nil)

        switch indexPath.row {
        case 0:  NotificationCenter.default.post(name: NSNotification.Name("ShowProfile"), object: nil)
        case 1: NotificationCenter.default.post(name : NSNotification.Name("ShowInbox"),object : nil)
        case 2 : NotificationCenter .default.post(name: NSNotification.Name("ShowPrint"), object: nil)

            
        default:
            NotificationCenter .default.post(name: NSNotification.Name("ShowPrint"), object: nil)
        }
    }

}
