defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 15
defaults write com.apple.finder _FXShowPosixPathInTitle -boolean true

sudo spctl --master-enable
