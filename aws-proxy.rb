class AwsProxy < Formula
  desc "AWS Lightsail SOCKS Proxy"
  homepage "https://github.com/popularsizzle/aws-proxy"
  url "https://github.com/popularsizzle/aws-proxy/archive/0.9.0.tar.gz"
  sha256 "834f926165824d92c6a256597b8f195d4a0e84e43cde1c827d395a9b1f0df64f"
  depends_on "awscli"

  def install
    bin.install "aws-proxy"
  end

  def caveats
    <<~EOS
      AWS credentials need to be set in ~/.aws/credentials. You can do this by running:
          aws configure

      Alternatively set the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variables.

      The following is an example IAM policy with the the minimum required permissions:
          {
              "Version": "2012-10-17",
              "Statement": [
                  {
                      "Effect": "Allow",
                      "Action": [
                          "sts:GetCallerIdentity",
                          "lightsail:DownloadDefaultKeyPair",
                          "lightsail:GetBlueprints",
                          "lightsail:GetBundles",
                          "lightsail:CreateInstances",
                          "lightsail:GetInstance",
                          "lightsail:DeleteInstance"
                      ],
                      "Resource": "*"
                  }
              ]
          }
    EOS
  end
end
