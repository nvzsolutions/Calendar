Pod::Spec.new do |s|
	s.name         = "BPCalendar"
	s.version      = "1.0.1"
	s.summary      = "A set of views and controllers for displaying and scheduling events on iOS"
	s.description  = "Displaying the calendar from your device\nNote: This is a fork from `https://github.com/jumartin/Calendar.git` with fixes since we couldn't create PR with fixes"
	s.homepage     = "https://github.com/jumartin/Calendar"
	s.license      = "MIT"
	s.author       = { "Julien Martin" => "julienmartin@hotmail.com", "Nico van Zijl" => "nico@blueprint-software.nl", "Rutger Nijhuis" => "rutger@blueprint-software.nl"}
	s.platform     = :ios, "8.0"
	s.source       = { :git => "https://github.com/nvzsolutions/Calendar.git", :tag => s.version.to_s }
    s.source_files  = "CalendarLib/**/*.{h,m}"
    s.public_header_files = "CalendarLib/{MGCDateRange.h,NSCalendar+MGCAdditions.h,NSAttributedString+MGCAdditions.h,MGCDayPlannerEKViewController.h,MGCMonthPlannerEKViewController.h,MGCEventView.h,MGCStandardEventView.h,MGCDayPlannerView.h,MGCDayPlannerViewController.h,MGCMonthPlannerView.h,MGCMonthPlannerViewController.h,MGCMonthMiniCalendarView.h,MGCYearCalendarView.h,MGCReusableObjectQueue.h}"
	s.resource_bundle = { 'CalendarLib' => ['CalendarLib/*.lproj'] }                    
	s.frameworks = "EventKit", "EventKitUI", "UIKit", "Foundation", "CoreGraphics"
	s.dependency "OSCache", "~> 1.2"
	s.dependency "OrderedDictionary", "~> 1.2" 
end
