class ConcourseUp < Formula
  desc "A tool for easily deploying Concourse in a single command. "
  homepage "https://github.com/EngineerBetter/concourse-up"
  url "https://github.com/EngineerBetter/concourse-up/releases/download/0.20.2/concourse-up-darwin-amd64"
  sha256 "d9f4631d9b3281f9100e4bc42a593dffb50ac249639ce3a50b1b078faf841319"

  bottle :unneeded

  def install
    bin.install "concourse-up-darwin-amd64" => "concourse-up"
  end

  test do
    system "#{bin}/concourse-up", "-v"
  end
end