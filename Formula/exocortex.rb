class Exocortex < Formula
  desc "A modern git based personal wiki"
  homepage "https://github.com/spencercdixon/exocortex"
  url "https://github.com/SpencerCDixon/exocortex/releases/download/v0.2.3/exocortex_0.2.3_macOS_64-bit.tar.gz"
  version "0.2.3"
  sha256 "d277c569e46c05ce2b7fe331748240a8ec93f19de456de21ec3dbcdf8fee472b"

  def install
    bin.install "exo"
  end

  plist_options :startup => false

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>KeepAlive</key>
  <true/>
  <key>Label</key>
  <string>#{plist_name}</string>
  <key>ProgramArguments</key>
  <array>
    <string>#{opt_bin}/exo</string>
    <string>start</string>
  </array>
  <key>RunAtLoad</key>
  <true/>
  <key>StandardErrorPath</key>
  <string>#{var}/log/exocortex-error.log</string>
  <key>StandardOutputPath</key>
  <string>#{var}/log/exocortex.log</string>
</dict>
</plist>

    EOS
  end

  test do
    
  end
end
