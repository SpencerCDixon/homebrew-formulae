class Exocortex < Formula
  desc "A modern git based personal wiki"
  homepage "https://github.com/spencercdixon/exocortex"
  url "https://github.com/SpencerCDixon/exocortex/releases/download/v0.2.1/exocortex_0.2.1_macOS_64-bit.tar.gz"
  version "0.2.1"
  sha256 "e98b229dafc5cce11e5941b10d88efc838f96fbaf7d982bef19ae315b94a502a"

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
