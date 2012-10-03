set fish_greeting 'Type "help" for instructions on how to use fish'

function fish_prompt
    echo -n "[$USER@"
    echo -n (hostname -s)
    echo -n " "
    set_color $fish_color_cwd
    set wd (pwd)
    echo -n (basename $wd)
    set_color normal
    echo -n ' $] '
end

function mplayer
    # MPlayer Exe Pointer
    /Applications/MPlayer\ OSX\ Extended.app/Contents/Resources/Binaries/mpextended.mpBinaries/Contents/mpextended-mt.mpBinaries/Contents/MacOS/mplayer $argv
end

function runzoped
    # Run zope from any working directory..
    cd /Users/shamail/Baton/batonSites/VerificationManager/bin
    ./runzoped
end

function b
    # Shortcut to move to baton working directory..
    cd /Users/shamail/Baton/batonSites/VerificationManager/lib/python/baton
end

function js
    # Shortcut to move to baton js directory..
    cd /Users/shamail/Baton/batonSites/VerificationManager/lib/python/baton/browser/skin/resource/js
end

