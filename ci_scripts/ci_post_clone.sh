#!/bin/sh

#  ci_post_clone.sh
#  NinjacordApp
#
#  Created by 村石 拓海 on 2024/05/01.
#  

brew install swiftlint
defaults write com.apple.dt.Xcode IDESkipPackagePluginFingerprintValidatation -bool YES
defaults write com.apple.dt.Xcode IDESkipMacroFingerprintValidation -bool YES
