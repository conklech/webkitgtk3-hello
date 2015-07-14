module Main where

import Graphics.UI.Gtk
import Graphics.UI.Gtk.WebKit.WebView

main :: IO ()
main = do
  initGUI
  window <- windowNew
  sw <- scrolledWindowNew Nothing Nothing
  webView <- webViewNew

  on window objectDestroy mainQuit

  containerAdd window sw
  containerAdd sw webView

  webViewLoadUri webView "http://google.com"

  widgetShowAll window
  mainGUI
