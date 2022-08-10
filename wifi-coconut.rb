class WifiCoconut < Formula
  desc "macOS userspace utilities for the Hak5 WiFi Coconut"
  homepage "https://hak5.org"
  url "https://github.com/hak5/hak5-wifi-coconut/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "1c8620796dc09f60fc13c06722a1f35b6d67a3f313e83dce0329dd1c22b15f63"
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
