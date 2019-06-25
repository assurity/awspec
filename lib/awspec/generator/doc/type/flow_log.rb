module Awspec::Generator
  module Doc
    module Type
      class FlowLog < Base
        def initialize
          super
          @type_name = 'FlowLog'
          @type = Awspec::Type::FlowLog.new('my-flow-log')
          @ret = @type.resource_via_client
          @matchers = []
          @ignore_matchers = []
          @describes = []
        end
      end
    end
  end
end
