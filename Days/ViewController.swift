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
        calendarView.delegate = self
        calendarView.dataSource = self
        calendarView.locale = Locale(identifier: "ko_KR")
        calendarView.appearance.headerDateFormat = "YYYY년 MM월"
        calendarView.scrollEnabled = true
        calendarView.scrollDirection = .horizontal
    }
}

