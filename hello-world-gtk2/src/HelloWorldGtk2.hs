module HelloWorldGtk2 (main) where

import qualified Graphics.UI.Gtk as Gtk
import           Graphics.UI.Gtk (AttrOp(..))

main :: IO ()
main = do
    Gtk.initGUI
    window <- Gtk.windowNew
    button <- Gtk.buttonNew
    Gtk.set window [ Gtk.containerBorderWidth := 10
                   , Gtk.containerChild := button ]
    Gtk.set button [ Gtk.buttonLabel := "Hello World" ]
    Gtk.onClicked button $ putStrLn "Hello World"
    Gtk.onDestroy window Gtk.mainQuit
    Gtk.widgetShowAll window
    Gtk.mainGUI
