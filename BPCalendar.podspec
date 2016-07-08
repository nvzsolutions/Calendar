#
# Be sure to run `pod lib lint BPCalendar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BPCalendar'
  s.version          = '1.0.0'
  s.summary          = 'A set of views and controllers for displaying and scheduling events on iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Displaying the calendar from your device
Note: This is a fork from `https://github.com/jumartin/Calendar.git` with fixes since we couldn't create PR with fixes
                       DESC

  s.homepage         = 'https://github.com/nvzsolutions/Calendar'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Julien Martin" => "julienmartin@hotmail.com",
                         'Nico van Zijl' => 'nico@blueprint-software.nl',
                         'Rutger Nijhuis' => 'rutger@blueprint-software.nl' }
  s.source           = { :git => 'https://github.com/nvzsolutions/Calendar.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'BPCalendar/Classes/**/*'
  
   s.resource_bundles = {
     'BPCalendar' => ['BPCalendar/Assets/*.lproj']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = "EventKit", "EventKitUI", "UIKit", "Foundation", "CoreGraphics"
    s.dependency "OSCache", "~> 1.2"
    s.dependency "OrderedDictionary", "~> 1.2"
end
