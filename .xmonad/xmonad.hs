import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO


startup :: X ()
startup = do
--    spawn "xloadimage -onroot ~/Pictures/stripes1680x1050.png"
    spawn "xsetroot -cursor_name left_ptr"

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar ~/.xmobarrc"
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts $ layoutHook defaultConfig
        , startupHook = startup
        , logHook = dynamicLogWithPP xmobarPP
            { ppOutput = hPutStrLn xmproc
            , ppTitle = xmobarColor "#d33682" "" . shorten 50
            }
        , borderWidth = 2
        , terminal = "urxvt"
--        , modMask = mod4Mask
        }
