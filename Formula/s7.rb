
class S7 < Formula
  desc "Git submodules system for mere mortals."
  homepage "https://github.com/readdle/system7"
  license "MIT"

  url "https://github.com/readdle/system7/releases/download/v1.0/s7"
  sha256 "fcbcc4d2cefa5ed9e3bf8e2bcd13ab016ced2ec7bb52f245d8c4fbc5ccc9adcb"
  version "1.0" # have to specify version explicitly as automatic detection is confused by 7 in the name of s7 :)

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
