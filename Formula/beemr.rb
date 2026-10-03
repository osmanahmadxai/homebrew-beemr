class Beemr < Formula
  desc "Peer-to-peer file and message sharing. No servers, no accounts, no setup"
  homepage "https://github.com/osmanahmadxai/beemr"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.0/beemr-macos-aarch64"
      sha256 "a0f93d2a4acc356fd10481a073088ea693c0bd11138a20e6338a9d0cb57ede93"
    end
    on_intel do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.0/beemr-macos-x86_64"
      sha256 "d34f32522b31f3949e2f25f02e36eccdef4dda6195a6b88865d3212ec62ff812"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.0/beemr-linux-aarch64"
      sha256 "c08e892b2fa2ee1471b91c9f5be5c8584dfb90baae101b81e3561642a3ab72c5"
    end
    on_intel do
      url "https://github.com/osmanahmadxai/beemr/releases/download/v0.2.0/beemr-linux-x86_64"
      sha256 "8878b8f27bda80ed68ef3585af03a61e204424dcc7fa7d390c1fb699aa3d5e09"
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
