# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Demp < Formula
  desc "A CLI tool for doing X, Y, and Z."
  homepage "https://github.com/rianfowler/demp"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rianfowler/demp/releases/download/v0.1.6/demp_0.1.6_darwin_amd64.tar.gz"
      sha256 "6c74f01d5a1f50f6dc920ec5e78dd0b275fcd409624a70e66b4745de22cc9fef"

      def install
        bin.install "demp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rianfowler/demp/releases/download/v0.1.6/demp_0.1.6_darwin_arm64.tar.gz"
      sha256 "e659fbccacb34cf4a58ca008f929e707fe614f2b90ddcf5a90a3efdd82cce1ec"

      def install
        bin.install "demp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rianfowler/demp/releases/download/v0.1.6/demp_0.1.6_linux_amd64.tar.gz"
        sha256 "90adbd15e05dd2442ae2dcc08c460c35dce71a8e0f19ebfd4c53b4248c0210f5"

        def install
          bin.install "demp"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rianfowler/demp/releases/download/v0.1.6/demp_0.1.6_linux_arm64.tar.gz"
        sha256 "6878512e65cb5fb84720d74181b2102262e96381fee36f094d475a7765eea4ff"

        def install
          bin.install "demp"
        end
      end
    end
  end

  test do
    system "#{bin}/demp", "--help"
  end
end
