//
//  ViewController.swift
//  Days
//
//  Created by shyn on 11/18/23.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, FSCalendarDataSource, FSCalendarDelegate, FSCalendarDelegateAppearance{
    @IBOutlet weak var calendarView: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        CalendarSetup.setupCalendar(calendarView)
        calendarView.delegate = self
        calendarView.dataSource = self
        
    } 
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
            guard let modalPresentView = self.storyboard?.instantiateViewController(identifier: "dateModalViewController") as? dateModalViewController else { return }
            
            // 날짜를 원하는 형식으로 저장하기 위한 방법입니다.
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            modalPresentView.date = dateFormatter.string(from: date)
            self.present(modalPresentView, animated: true, completion: nil)
        }
    
}
