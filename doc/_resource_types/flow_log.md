### exist

```ruby
describe flow_log('my-flow-log') do
  it { should exist }
end
```

### advanced

`flow_log` can use `Aws::EC2::Types::FlowLog` resource (see https://docs.aws.amazon.com/sdkforruby/api/Aws/EC2/Types/FlowLog.html).
