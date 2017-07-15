//
//  ViewController.swift
//  swiftDemo
//
//  Created by Vikash on 15/07/17.
//  Copyright © 2017 Vikash. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableview: UITableView!
    var tableArray = NSArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableArray=["Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.","Lorem Ipsum is simply dummy text of the printing and typesetting industry.","Lorem Ipsum is simply dummy text of the printing","Lorem Ipsum"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return tableArray.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.selectionStyle=UITableViewCellSelectionStyle.none
        cell.label.text = self.tableArray.object(at: indexPath.row) as? String
        cell.labelWidthContraint.constant = UIScreen.main.bounds.size.width-120
        cell.label.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        self.tableview.estimatedRowHeight=160;
        return UITableViewAutomaticDimension
    }
    

}

