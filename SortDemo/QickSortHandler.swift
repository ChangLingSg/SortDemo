//
//  QickSortHandler.swift
//  SortDemo
//
//  Created by ChangLing on 6/5/16.
//  Copyright © 2016 ChangLing. All rights reserved.
//

import UIKit

class QickSortHandler: NSObject {

    // MARK -first method
    class func partition( array:inout [Int],low:Int,high:Int)->Int{
    
       var i = low
       var j = high
       let temp = array[i]
        
        while i<j {
           
            while i<j&&array[j]>=temp{
                j -= 1
            }
            array[i] = array[j]
            array[j] = temp
            
            while i<j&&array[i]<=temp{
                i += 1
            }
            array[j] = array[i]
            array[i] = temp
        }
        return i
    }
    
    class func sort( array:inout [Int],left:Int,right:Int){
    
        if  right>left{
            let i = partition(array: &array, low: left, high: right)
            sort(array: &array, left: left, right: i-1)
            sort(array: &array, left: i+1, right:right)
        }
    }
 
    //MARK - second method(refer to other person's demo.only improved with new swift grammar)
    class func partition2( dataList: inout [Int], low: Int, high: Int) -> Int {
        var pivotPos = low
        let pivot = dataList[low]
        
        for i in low+1 ... high {
            if dataList[i] < pivot && pivotPos != i {
                (dataList[pivotPos], dataList[i]) = (dataList[i], dataList[pivotPos])
            }
        }
        
        (dataList[low], dataList[pivotPos]) = (dataList[pivotPos], dataList[low])
        return pivotPos
    }
    
   class func quickSort2( dataList: inout [Int], left: Int, right: Int) {
        if left < right {
            let pivotPos = partition2(dataList: &dataList, low: left, high: right)
            quickSort2(dataList: &dataList, left: left, right: pivotPos - 1)
            quickSort2(dataList: &dataList, left: pivotPos + 1, right: right)
        }
    }
}
