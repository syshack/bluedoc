# frozen_string_literal: true

class Types::Query < Types::BaseQuery
  depends_on :root, :search, :docs
end
