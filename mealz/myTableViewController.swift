//
//  myTableViewController.swift
//  mealz
//
//  Created by Mahima Borah on 02/10/18.
//  Copyright © 2018 Mahima Borah. All rights reserved.
//

import UIKit

class myTableViewController: UITableViewController {
        
    var meals: [Meal] {
        
        let firstBreakfastFood = Food(name: "Eggs", description: "Scrambled with bacon in a frying pan.")
        let secondBreakfastFood = Food(name: "Hashbrowns", description: "Cut potatoes then fry in oil until brown")
        let thirdBreakfastFood = Food(name: "Bacon", description: "Key food in all breakfast meals.")
        let breakfast = Meal(name: "Breakfast", food: [firstBreakfastFood, secondBreakfastFood, thirdBreakfastFood])
        
        let firstLunchFood = Food(name: "Sandwich", description: "Easy to fix. Always delicious")
        let secondLunchFood = Food(name: "Chips", description: "Put a few in the sandwhich for enhanced flavor")
        let thirdLunchFood = Food(name: "Apple", description: "An apple a day keeps the doctor away.")
        let lunch = Meal(name: "Lunch", food: [firstLunchFood, secondLunchFood, thirdLunchFood])
        
        let firstDinnerFood = Food(name: "Steak", description: "Everyone needs some good protein.")
        let secondDinnerFood = Food(name: "Potatoes", description: "Great addition to go along with steak.")
        let thirdDinnerFood = Food(name: "Brocolli", description: "Always finish out the food pyramid.")
        let dinner = Meal(name: "Dinner", food: [firstDinnerFood, secondDinnerFood, thirdDinnerFood])
        
        return [breakfast, lunch, dinner]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

}
