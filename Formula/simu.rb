class Simu < Formula
  desc "CLI tool to manage Apple simulators and Android emulators"
  homepage "https://github.com/yefga/Simu"
  url "https://github.com/yefga/Simu/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "fee22646915f4e75131ae81aaa6543c1e38dd96a842616ffc61d5595e2f1bbc3"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "build", "simu.gemspec"
    system "gem", "install", "simu-0.4.1.gem"
    bin.install libexec/"bin/simu"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end

  test do
    assert_match "0.4.1", shell_output("#{bin}/simu version")
  end
end
