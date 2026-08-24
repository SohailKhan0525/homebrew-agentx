class Agentx < Formula
  desc "AI agent that builds production-ready websites from your terminal"
  homepage "https://github.com/SohailKhan0525/agentx-cli"
  url "https://registry.npmjs.org/@agent-qofeno/agentx-cli/-/agentx-cli-2.0.4.tgz"
  sha256 "aebf0464d66350e626c92ad73d00faf73d50cfe3c2f86b519ac28b3e5fb4dbf6"
  license "MIT"
  depends_on "node"
  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  test do
    system "#{bin}/agentx", "--version"
  end
end
