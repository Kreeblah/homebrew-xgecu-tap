class Tl866 < Formula
  desc "Tool for firmware modification for TL866A and TL866 CS devices"
  homepage "https://github.com/radiomanV/TL866"
  head "https://github.com/radiomanV/TL866.git", :revision => "834710336d23899dc3a5ca6710b78ed51eec2d55"

  depends_on "pkg-config" => :build
  depends_on "libusb"
  depends_on "qt"

  def install
    Dir.chdir("TL866_Updater/QT")
    system "qmake"
    system "make"
    prefix.install "TL866_Updater.app"
    prefix.install_symlink "/Applications/TL866_Updater.app" => prefix/"TL866_Updater.app"
  end

  test do
    True
  end
end
