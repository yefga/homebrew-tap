class Xunsu < Formula
  desc 'Swift-native iOS/macOS automation tool - a lightweight fastlane alternative'
  homepage 'https://github.com/yefga/Xunsu'
  url 'https://github.com/yefga/Xunsu/archive/refs/tags/v0.1.1.tar.gz'
  sha256 'ac950e324ba8e7a020ad04cad9e776a6c2dd71cdfa81372ac1932a95537610f1'
  license 'MIT'

  depends_on xcode: ['16.0', :build]
  depends_on :macos

  def install
    system 'swift', 'build', '-c', 'release', '--disable-sandbox'
    bin.install '.build/release/xunsu'
  end

  test do
    assert_match '0.1.1', shell_output("#{bin}/xunsu --version")
  end
end
