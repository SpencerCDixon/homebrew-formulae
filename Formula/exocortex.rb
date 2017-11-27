class Exocortex < Formula
  desc "A modern git based personal wiki"
  homepage "https://github.com/spencercdixon/exocortex"
  url "https://github.com/SpencerCDixon/exocortex/releases/download/v0.1.3/exocortex_0.1.3_macOS_64-bit.tar.gz"
  version "0.1.3"
  sha256 "66949f2a3ce88b935008ab2defb0d0824ad88155391875edf9ef8e6d45dfafc5"

  def install
    bin.install "exo"
  end

  test do
    
  end
end
