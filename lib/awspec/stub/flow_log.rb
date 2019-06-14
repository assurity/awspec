Aws.config[:ec2] = {
  stub_responses: {
    describe_flow_logs: {
      flow_logs: [
        {
          creation_time: Time.new(2019, 6, 14, 10, 00, 00, '+00:00'),
          deliver_logs_status: 'SUCCESS',
          flow_log_id: 'fl-0352aa981f58a64de',
          flow_log_status: 'ACTIVE',
          resource_id: 'vpc-02162417d9c5b8bf7',
          traffic_type: 'ALL',
          log_destination_type: 's3',
          log_destination: 'arn:aws:s3:::temp-flow-log'
        }
      ]
    }
  }
}
