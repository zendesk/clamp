# frozen_string_literal: true

module Clamp
  module Subcommand

    Definition = Struct.new(:name, :description, :subcommand_class, :subheading) do

      def initialize(names, description, subcommand_class, subheading)
        @names = Array(names)
        @description = description
        @subcommand_class = subcommand_class
        @subheading = subheading
      end

      attr_reader :names, :description, :subcommand_class, :subheading

      def is_called?(name)
        names.member?(name)
      end

      def help
        [names.join(", "), description]
      end

    end

  end
end
