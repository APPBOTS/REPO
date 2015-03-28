//
//  ListTableViewController.swift
//  APLICATION
//
//  Created by JULIO BARBERAN on 27/3/15.
//  Copyright (c) 2015 JULIO BARBERAN. All rights reserved.
//

import UIKit
import CoreData

class ListTableViewController: UITableViewController , NSFetchedResultsControllerDelegate{

    var fetchedResultsController : NSFetchedResultsController {
        if _fetchedResultsController != nil{
            return _fetchedResultsController!
        }
        
        let fRequest = fetchRequest()
        
        let aFetchedResultsController = NSFetchedResultsController(fetchRequest: fRequest, managedObjectContext: core.managedObjectContext!, sectionNameKeyPath: nil, cacheName: nil)
        aFetchedResultsController.delegate = self
        _fetchedResultsController = aFetchedResultsController
        
        var error: NSError? = nil
        
        if !_fetchedResultsController!.performFetch(&error){
        }
        
        return _fetchedResultsController!
    }
    
    var _fetchedResultsController: NSFetchedResultsController? = nil
    
    func fetchRequest() -> NSFetchRequest{
        let fetchRequest = NSFetchRequest(entityName: "Entity")
        fetchRequest.fetchBatchSize = 20
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: false)
        fetchRequest.sortDescriptors = [sortDescriptor]
        return fetchRequest
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchedResultsController.performFetch(nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func controllerDidChangeContent(controller: NSFetchedResultsController) {
        println("Called")
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let entity = self.fetchedResultsController.fetchedObjects as [Entity]
        println(entity)
        return entity.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        let entity = self.fetchedResultsController.objectAtIndexPath(indexPath) as Entity
        cell.textLabel?.text = entity.menuText
        return cell
    }
    


    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
