class AwsProxy < Formula
  desc "AWS Lightsail SOCKS Proxy"
  homepage "https://github.com/popularsizzle/aws-proxy"
  url "https://github.com/popularsizzle/aws-proxy/archive/0.9.0.tar.gz"
  sha256 "834f926165824d92c6a256597b8f195d4a0e84e43cde1c827d395a9b1f0df64f"
  depends_on "awscli"

  def install
    bin.install "aws-proxy"
  end
end
