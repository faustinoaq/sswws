require "./spec_helper"

describe Sswws do
  # TODO: Write more tests

  it "works" do
    Sswws.server_listen
    HTTP::Client.get("http://127.0.0.1:8080").status_code.should eq(200)
    Sswws.server_stop
  end

end
