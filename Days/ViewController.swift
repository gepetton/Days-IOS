//
//  ViewController.swift
//  Days
//
//  Created by shyn on 11/18/23.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance{

    @IBOutlet weak var calendarView: FSCalendar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        CalendarSetup.setupCalendar(calendarView)
        calendarView.delegate = self
        calendarView.dataSource = self
        
    }
}

