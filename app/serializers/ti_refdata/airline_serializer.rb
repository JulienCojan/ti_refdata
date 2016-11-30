# encoding: utf-8

module TiRefdata
  class AirlineSerializer < ActiveModel::Serializer
    attributes :id, :unified_code, :icao_code, :iata_code, :numeric_code,
               :name, :alliance_code, :alliance_status, :type_code, :carrier_unique_id,
               :persistent_id, :version

    def id
      unified_code
    end

    def include_name?
      !name.nil?
    end

    def name2
      name2_normalized
    end
  end
end
