require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb

class NtpDev < Formula
  url "http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ntp-dev/ntp-dev-4.2.7p419.tar.gz"
  version "4.2.7p419"
  homepage "http://www.ntp.org/index.html"
  sha1 "e9216f772d8defbc5208e1e03e429176c40773e8"

  def install
    args = ["--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--disable-silent-rules"]

    system "./configure", *args
    system "make", "install"
  end

  test do
    system "false"
  end
end
