require 'spec_helper'
Awspec::Stub.load 'flow_log'

describe flow_log('fl-0352aa981f58a64de') do
  it { should exist }
end
