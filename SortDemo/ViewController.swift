//
//  ViewController.swift
//  SortDemo
//
//  Created by ChangLing on 6/5/16.
//  Copyright © 2016 ChangLing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1.0 quick sort
        self.testQickSort1()
        self.testQickSort2()
    }

    func testQickSort1(){
        var array = [233,12,44,78,11,32,45,12]
        QickSortHandler.sort(&array, left: 0, right: array.count-1)
        print(array)
    }
    
    func testQickSort2(){
        var array = [233,12,44,78,11,32,45,12]
        QickSortHandler.quickSort2(&array, left: 0, right:array.count-1)
        print(array)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

