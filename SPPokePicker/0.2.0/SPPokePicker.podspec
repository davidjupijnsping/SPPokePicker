#
#  Be sure to run `pod spec lint SPPokePicker.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#

Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "SPPokePicker"
s.summary = "SPPokePicker lets a user select a Pokemon."
s.requires_arc = true

# 2
s.version = "0.2.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "David Jupijn" => "d.jupijn@sping.nl" }

# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/davidjupijnsping/SPPokePicker"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/davidjupijnsping/SPPokePicker.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"

# 8
s.source_files = "SPPokePicker/**/*.{swift}"

# 9
s.resources = "SPPokePicker/**/*.{png,storyboard}"

end
