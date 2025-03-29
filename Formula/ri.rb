# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ri < Formula
  desc "A CLI tool for doing X, Y, and Z."
  homepage "https://github.com/rianfowler/ri"
  version "0.0.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rianfowler/ri/releases/download/v0.0.22/ri_0.0.22_darwin_amd64.tar.gz"
      sha256 "9ddf5c5bf007503ab8846b0c700fbc43d563d4c8ed04136b9265169daa2ab580"

      def install
        bin.install "ri"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rianfowler/ri/releases/download/v0.0.22/ri_0.0.22_darwin_arm64.tar.gz"
      sha256 "2b9717faf075740cef80ac4b68f99268506d6b83827fec9a475bc99e4e538da2"

      def install
        bin.install "ri"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rianfowler/ri/releases/download/v0.0.22/ri_0.0.22_linux_amd64.tar.gz"
        sha256 "c263eda635981072959dc5de73fcba90981ae98702d71cb58bcf410b62bac6a3"

        def install
          bin.install "ri"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rianfowler/ri/releases/download/v0.0.22/ri_0.0.22_linux_arm64.tar.gz"
        sha256 "8c3baa0e59850043c495afbdf79129b9f79343fea51b660d2e491ea8c1f456cf"

        def install
          bin.install "ri"
        end
      end
    end
  end

  test do
    system "#{bin}/ri", "--help"
  end
end
