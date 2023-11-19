//
//  CalendarSetup.swift
//  Days
//
//  Created by shyn on 11/19/23.
//

import Foundation
import FSCalendar
import SwiftUI
import UIKit

class CalendarSetup {
    static func setupCalendar(_ calendarView: FSCalendar) {
        
        //calendar locale - 한국
        calendarView.locale = Locale(identifier: "ko_KR")
        
        //캘린더 스크롤 가능하게 설정
        calendarView.scrollEnabled = true
        
        //캘린더 스크롤 방향 지정 - 가로
        calendarView.scrollDirection = .horizontal
        
        //Calendar title format 형식
        calendarView.appearance.headerDateFormat = "YYYY년 MM월"
        
        //title 폰트
        //calendarView.appearance.headerTitleFont = UIFont.폰트(type: .Bold, size: 20)
        
        //title 색
        calendarView.appearance.headerTitleColor = UIColor(named: "FFFFFF")?.withAlphaComponent(0.9)
        
        //title 정렬 방식 - center
        calendarView.appearance.headerTitleAlignment = .center
    }
}
