#!/bin/sh

export PYTHONPATH="/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python"

function CFPreferencesAppSynchronize() {
    python - <<END
from Foundation import CFPreferencesAppSynchronize
CFPreferencesAppSynchronize('$1')
END
}

###########################################################
# Safari
###########################################################

# Show Safari status bar
defaults write com.apple.Safari ShowStatusBar -boolean true

CFPreferencesAppSynchronize "com.apple.Safari"
