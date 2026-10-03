class Beemr < Formula
  desc "Peer-to-peer file and message sharing. No servers, no accounts, no setup"
  homepage "https://github.com/osmanahmadxai/beemr"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.1/beemr-macos-aarch64"
      sha256 "0b924b614cf6ba9042107fa4ad09288c5c1af2c3342b3206ef45f0770d1e9382"
    end
    on_intel do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.1/beemr-macos-x86_64"
      sha256 "ce8e884d507ffedef89b202092f2d7b8763359f2a7e4698b87cdc9100aab1adc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.1/beemr-linux-aarch64"
      sha256 "a4dff615e942dd2b55c0606cd6de5500d9aed40b08e887e224ab83269dae2826"
    end
    on_intel do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.1/beemr-linux-x86_64"
      sha256 "dee0274dda30a40a81aa8bd2ef1ce0cec3ac7569d25fef2b0c283aec31048083"
    end
  end

  def install
    bin.install Dir["beemr-*"].first => "beemr"
  end

  service do
    run [opt_bin/"beemr", "daemon", "run"]
    keep_alive true
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beemr --version")
  end
end
