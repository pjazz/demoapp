module Fog
  module Compute
    class Brightbox
      class Real
        # @param [String] identifier Unique reference to identify the resource
        #
        # @return [Hash] if successful Hash version of JSON object
        #
        # @see https://api.gb1.brightbox.com/1.0/#database_snapshot_unlock_resource_database_snapshot
        #
        def unlock_resource_database_snapshot(identifier)
          return nil if identifier.nil? || identifier == ""
          wrapped_request("put", "/1.0/database_snapshots/#{identifier}/unlock_resource", [200])
        end

      end
    end
  end
end
