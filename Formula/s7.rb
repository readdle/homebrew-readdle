
class S7 < Formula
  desc "Git submodules system for mere mortals."
  homepage "https://github.com/readdle/system7"
  license "MIT"

  url "https://github.com/readdle/system7/releases/download/v1.1.0/s7.tar.gz"
  sha256 "ad93276c351c0ee47996b91970ccf8fb3ae11fba53856a9102b082ad6398a8ea"
  version "1.1.0" # have to specify version explicitly as automatic detection is confused by 7 in the name of s7 :)

  def install
    bin.install "s7"
  end

  def caveats
    <<~EOS

      Update your git config to finish installation.
      This is optional, but will allow s7 to automatically take
      care of newly cloned s7 repos:

        $ git config --global filter.s7.smudge "s7 bootstrap"

    EOS
  end
end
