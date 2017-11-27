class Exocortex < Formula
  desc ""
  homepage ""
  url "https://github.com/SpencerCDixon/exocortex/releases/download/v0.1.2/exocortex_0.1.2_macOS_64-bit.tar.gz"
  version "0.1.2"
  sha256 "c667e0e217b1b466f74d8013933cf056d971251b1a4207ddd294b0ca82bdcbd1"

  def install
    bin.install "exo"
  end

  test do
    
  end
end
