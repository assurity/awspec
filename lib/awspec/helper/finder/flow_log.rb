module Awspec::Helper
  module Finder
    module FlowLog
      def find_flow_log(id)
        res = ec2_client.describe_flow_logs({
                                         filter: [{ name: 'flow-log-id', values: [id] }]
                                       })
        res.flow_logs.single_resource(id)
      end
    end
  end
end
