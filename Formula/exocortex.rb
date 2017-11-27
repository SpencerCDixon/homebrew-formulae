class Exocortex < Formula
  desc "A modern git based personal wiki"
  homepage "https://github.com/SpencerCDixon/exocortex"
  url "https://github.com/SpencerCDixon/exocortex/releases/download/v0.1.1/exocortex_0.1.1_macOS_64-bit.tar.gz"
  version "0.1.1"
  sha256 "93493edb53f684cda77ff0a5bd313dafe94bc7a3c37ab47ec00050a4e41d3a39"

  def install
    bin.install "exo"
  end
end
