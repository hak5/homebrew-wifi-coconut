class WifiCoconut < Formula
  desc "macOS userspace utilities for the Hak5 WiFi Coconut"
  homepage "https://hak5.org"
  url "https://github.com/hak5/hak5-wifi-coconut/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "0483faca4ccc5b56e3b4150c4d19bda64d592c6d4e0f51d4fd20e65896b35185"
  license "GPL-2.0"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "libusb" 

  def install
    mkdir "build" do
      system "echo $(pwd)"
      system "cmake", "-S", "../", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end

  test do
    system "false"
  end
end
