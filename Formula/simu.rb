class Simu < Formula
  desc "CLI tool to manage Apple simulators and Android emulators"
  homepage "https://github.com/yefga/Simu"
  url "https://github.com/yefga/Simu/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "02f45255efc35109ada9e429b7d44be46c3ff6ae369ec10b52926b2c1efefef8"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "simu.gemspec"
    system "gem", "install", "simu-0.4.2.gem"
    bin.install libexec/"bin/simu"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end

  test do
    assert_match "0.4.2", shell_output("#{bin}/simu version")
  end
end
