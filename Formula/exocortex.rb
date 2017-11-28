class Exocortex < Formula
  desc "A modern git based personal wiki"
  homepage "https://github.com/spencercdixon/exocortex"
  url "https://github.com/SpencerCDixon/exocortex/releases/download/v0.1.5/exocortex_0.1.5_macOS_64-bit.tar.gz"
  version "0.1.5"
  sha256 "513f56035a1e2db4cae805dc0c75f36c81f28632ad0f2c6c3589dec35902fc25"

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
    <string>--debug</string>
  </array>
  <key>RunAtLoad</key>
  <true/>
  <key>WorkingDirectory</key>
  <string>#{system "echo $EXO_WIKI"}</string>
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
