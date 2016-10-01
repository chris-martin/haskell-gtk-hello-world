module HelloWorldGtk3 (main) where

import Control.Monad.IO.Class (liftIO)

import Data.Functor (($>))

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
    Gtk.on button Gtk.buttonActivated $ putStrLn "Hello World"
    Gtk.on window Gtk.deleteEvent $ liftIO $ Gtk.mainQuit $> True
    Gtk.widgetShowAll window
    Gtk.mainGUI
