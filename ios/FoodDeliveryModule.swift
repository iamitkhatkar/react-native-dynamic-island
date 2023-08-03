//
//  FoodDeliveryModule.swift
//  RNDynamicIsland
//
//  Created by Amit Khatkar on 21/04/23.
//

import Foundation
import ActivityKit

@objc(FoodDelivery)
class FoodDelivery: NSObject {
  
  @objc(startActivity)
  func startActvity(){
    do{
      if #available(iOS 16.1, *){
        let foodDeliveryAttributes = FoodDeliveryAttributes(name: "Food Delivery")
        let foodDeliveryContentState = FoodDeliveryAttributes.ContentState(leadingName: "Leading N")
        let activity = try Activity<FoodDeliveryAttributes>.request(attributes: foodDeliveryAttributes, contentState: foodDeliveryContentState,  pushType: nil)
        
      }else{
        print("Dynamic Island and live activies not supported")
      }
      
    }catch (_){
      print("there is some error")
    }
  }
  
  @objc(updateActivity:)
  func updateActivity(name: String){
    do{
      if #available(iOS 16.1, *){
        let foodDeliveryContentState = FoodDeliveryAttributes.ContentState(leadingName: name)
        Task{
          for activity in Activity<FoodDeliveryAttributes>.activities {
            await activity.update(using: foodDeliveryContentState)
          }
        }
      }
    }catch(_){
      print("some error")
    }
  }
  
 @objc(endActivity)
  func endActivity(){
    Task{
      for activity in Activity<FoodDeliveryAttributes>.activities {
        await activity.end()
      }
    }
  }
}
