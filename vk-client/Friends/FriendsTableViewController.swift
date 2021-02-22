//
//  FriendsTableViewController.swift
//  vk-client
//
//  Created by i.vasilyev on 19.02.2021.
//

import UIKit

class FriendsTableViewController: UITableViewController {

     let friendList = [
        User(name:"Sharik",avatar:UIImage(named: "Sharik"),arrayImages: [UIImage(named: "sharik11"),UIImage(named: "sharik12"),]),
        User(name:"Bobick",avatar:UIImage(named: "Bobick"),arrayImages: [UIImage(named: "bobik11"),UIImage(named: "bobik12"),]),
        User(name:"Barbos",avatar:UIImage(named: "Barbos"),arrayImages: [UIImage(named: "barbos11"),UIImage(named: "barbos12"),]),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
  //      tableView.dataSource = self
        
    }

    // MARK: - Table view data source

 //   override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
 //       return 0
 //   }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return friendList.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyFriend", for: indexPath) as? FriendCell else {return UITableViewCell()}

        cell.friendLable.text = friendList[indexPath.row].name
        cell.friendAvatar.image = friendList[indexPath.row].avatar

        return cell
    }
   
   
  

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       if segue.identifier == "ShowFriendImages",
          let senderCell = sender as? FriendCell,
          let cellIndexPath = tableView.indexPath(for: senderCell),
          let imageCollectionVievController = segue.destination as? ImagesCollectionViewController {
          let selectedFriend = friendList[cellIndexPath.row]
        imageCollectionVievController.userName = selectedFriend.name
        imageCollectionVievController.userImages = selectedFriend.arrayImages
       }
        
    }
   

}
