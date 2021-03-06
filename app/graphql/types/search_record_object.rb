# frozen_string_literal: true

module Types
  class SearchRecordObject < BaseUnion
    graphql_name "SearchRecord"
    description "Objects which may be search result"

    possible_types UserObject, DocObject, GroupObject

    def self.resolve_type(object, context)
      case object.class.name
      when "User"
        Types::UserObject
      when "Doc"
        Types::DocObject
      when "Group"
        Types::GroupObject
      else
        raise "Can't resolve_type for #{object.inspect}"
      end
    end
  end
end
