class Qtl866 < Formula
  desc "GUI for minipro tool"
  homepage "https://github.com/wd5gnr/qtl866"
  head "https://github.com/wd5gnr/qtl866.git", :revision => "1173c3e048c9b777611b379892f397dd5c64a261"

  depends_on "minipro"
  depends_on "qt"

  def install
    system "qmake"
    system "make"
    bin.install "binhexedit"
    prefix.install "qtl866.app"
    prefix.install_symlink "/Applications/qtl866.app" => prefix/"qtl866.app"
  end

  test do
    True
  end
end
