module Awspec::Type
  class FlowLog < ResourceBase
      def initialize(flow_log_id)
        super
        @flow_log_id = flow_log_id
      end

    def resource_via_client
      @resource_via_client ||= find_flow_log(@flow_log_id)
    end

    def id
     @id ||= resource_via_client.flow_log_id if resource_via_client
    end
  end
end
