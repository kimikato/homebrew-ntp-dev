require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb

class NtpDev < Formula
  url "http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-dev/ntp-dev-4.2.7p415.tar.gz"
  version "4.2.7p415"
  homepage "http://www.ntp.org/index.html"
  sha1 "fa8895b3b5b76a2b75f1a4636155923a66a239c2"

  def install
    args = ["--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--disable-silent-rules"]

    system "./configure", *args
    system "make", "install"
  end

  test do
    system "false"
  end
end
