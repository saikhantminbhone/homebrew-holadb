class Holadb < Formula
  desc "Database engine written in Rust (developer beta)"
  homepage "https://holadb.com"
  url "https://holadb.com/download/holadb-0.1.0-beta.1-aarch64-apple-darwin.tar.gz"
  version "0.1.0-beta.1"
  sha256 "693d917397f8eeae0736d6cf9f4a6b3540fb0483b79a8c9a994c301747d5585e"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "bin/holadb", "bin/holadb-server"
    doc.install Dir["docs/*"]
  end

  test do
    assert_match version.to_s.split("-").first, shell_output("#{bin}/holadb version")
  end
end
