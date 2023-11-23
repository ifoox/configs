# Remaps keys on a mac to help us a French keyboard layout in a way more
#  familiar to someone used to an English layout. Specifically:
#  * The Ù key becomes another left shift
#  * The "\/|" key below esc becomes the ~` key.
# The key mapping values can be seen here: https://opensource.apple.com/source/IOHIDFamily/IOHIDFamily-421.6/IOHIDFamily/IOHIDUsageTables.h.auto.html
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000035,"HIDKeyboardModifierMappingDst":0x7000000E1},{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x700000035}]}'
