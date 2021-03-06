require 'rspec'
require 'ssh_scan/constants'

describe SSHScan::Constants do
  it "should have the right value for DEFAULT_KEY_INIT_RAW" do
    default_key_init_raw = ("d8eb97b11b6cacbc3285473f08004500019ceccf40004006663fc0a80a7c3ff" +
                            "5db33cdfd0016982e6062988da97e801810154d2b00000101080a03a6399f3d" +
                            "f735d6000001640414e33f813f8cdcc6b00a3d852ec1aea4980000001a64696" +
                            "66669652d68656c6c6d616e2d67726f7570312d736861310000000f7373682d" +
                            "6473732c7373682d727361000000576165733132382d6362632c336465732d6" +
                            "362632c626c6f77666973682d6362632c6165733139322d6362632c61657332" +
                            "35362d6362632c6165733132382d6374722c6165733139322d6374722c61657" +
                            "33235362d637472000000576165733132382d6362632c336465732d6362632c" +
                            "626c6f77666973682d6362632c6165733139322d6362632c6165733235362d6" +
                            "362632c6165733132382d6374722c6165733139322d6374722c616573323536" +
                            "2d63747200000021686d61632d6d64352c686d61632d736861312c686d61632" +
                            "d726970656d6431363000000021686d61632d6d64352c686d61632d73686131" +
                            "2c686d61632d726970656d64313630000000046e6f6e65000000046e6f6e650" +
                            "00000000000000000000000006e05b3b4").unhexify
    expect(SSHScan::Constants::DEFAULT_KEY_INIT_RAW).to eql(default_key_init_raw)
  end

  it "should have the right value for DEFAULT_CLIENT_BANNER" do
    default_banner = "SSH-2.0-ssh_scan"
    expect(SSHScan::Constants::DEFAULT_CLIENT_BANNER).to be_kind_of(SSHScan::Banner)
    expect(SSHScan::Constants::DEFAULT_CLIENT_BANNER.to_s).to eql(default_banner)
  end

  it "should have the right value for DEFAULT_SERVER_BANNER" do
    default_banner = "SSH-2.0-server"
    expect(SSHScan::Constants::DEFAULT_SERVER_BANNER).to be_kind_of(SSHScan::Banner)
    expect(SSHScan::Constants::DEFAULT_SERVER_BANNER.to_s).to eql(default_banner)
  end
end
