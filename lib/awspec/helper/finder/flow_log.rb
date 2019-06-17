module Awspec::Helper
  module Finder
    module FlowLog
      def find_flow_log(id)
        res = ec2_client.describe_flow_logs({
                                              filter: [{name: 'flow-log-id', values: [id]}]
                                            })
        res.flow_logs.single_resource(id)
      end

      def select_flow_log_by_vpc_id(vpc_id)
        res = ec2_client.describe_flow_logs({
                                              filters: [{name: 'vpc-id', values: [vpc_id]}]
                                            })
        res.flow_logs
      end
    end
  end
end
