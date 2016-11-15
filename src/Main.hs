module Main where

import           Crypto.Hash.SHA3
import qualified Data.ByteString  as BS
import           GHC.IO.Handle    (Handle)
import           System.Process

main :: IO ()
main = do
  -- fork a process that keeps pinging www.google.com and outputs lines containing the time it took to reach the host
  (_, Just hout, _, _) <- createProcess (proc "ping" [ "www.google.com" ]){ std_out = CreatePipe }

  -- loop to read from the resulting stream represented by 'hout' handle and produce random sequence
  loop hout

loop :: Handle -> IO ()
loop hout = do
  -- read a line from the stream
  line <- BS.hGetLine hout
  -- hash the line and output to stdout
  BS.putStr $ hash 256 line
  -- loop forever
  loop hout

