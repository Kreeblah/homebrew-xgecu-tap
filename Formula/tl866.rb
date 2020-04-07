class Tl866 < Formula
  desc "Tool for firmware modification for TL866A and TL866 CS devices"
  homepage "https://github.com/radiomanV/TL866"
  head "https://github.com/radiomanV/TL866.git", :revision => "7a3bd38224ca39a4ac8cfac58872e7338ea7550c"

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
