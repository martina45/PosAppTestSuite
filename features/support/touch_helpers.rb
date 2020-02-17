module Calabash
  module Android
    module TouchHelpers
      include ::Calabash::Android::Gestures

      def execute_gesture(multi_touch_gesture)
        result = JSON.parse(http("/gesture", JSON.parse(multi_touch_gesture.to_json), read_timeout: multi_touch_gesture.timeout+10))

        if result['outcome'] != 'SUCCESS'
          raise "Failed to perform gesture. #{result['reason']}"
        end

        nil
      end

      def long_press(query_string, options={})
        if query_result?(query_string)
          center_x, center_y = find_coordinate(query_string, options)
          length = options[:length]

          perform_action("long_press_coordinate", center_x, center_y, *(length unless length.nil?))
        else
          length = options[:length]

          if length
            puts "Using the length key is deprecated. Use 'time' (in seconds) instead."
            options[:time] = length/1000.0
          end

          options[:time] ||= 1

          touch(query_string, options)
        end
      end
end 
end
end