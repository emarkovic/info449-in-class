//
//  TodoTableViewController.swift
//  ToDoList
//
//  Created by iGuest on 3/28/17.
//  Copyright © 2017 iGuest. All rights reserved.
//

import UIKit

class TodoTableViewController: UITableViewController {
    
    @IBOutlet weak var nagivationItem: UINavigationItem!
    var todoItems = [
        Task(title: "Groceries", due: Date()),
        Task(title: "Go to bank", due: Date()),
        Task(title: "Do iOS homework", due: Date())
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nagivationItem.title = "INFO 449 ToDo List"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.todoItems.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TodoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath) as! TodoTableViewCell

        let rowIndex = indexPath.row
        cell.myLabel.text = self.todoItems[rowIndex].title;
        
        let task = self.todoItems[indexPath.row]
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yy"
        cell.dateLabel.text = formatter.string(from: task.due)
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
    }
    
    // MARK: - swipe to delete
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // can only delete even rows
//        return indexPath.row % 2 == 0
        
        // can delete all rows
        return true
    }
    // this method is called when you press the delete btn
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            // handle delete (by removing the data from your array and updating the tableview)
            print("delete btn pressed")
            self.tableView.beginUpdates()
            // remove data from data source
            self.todoItems.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
            self.tableView.endUpdates()
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func addTask(_ sender: Any) {
        print("gotHere")
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc: AddTaskViewController = sb.instantiateViewController(withIdentifier: "AddTaskViewController") as! AddTaskViewController
        vc.todoItems = self.todoItems
        vc.todoTableViewController = self;
        self.navigationController?.present(vc, animated: true, completion: nil)
    }
}
