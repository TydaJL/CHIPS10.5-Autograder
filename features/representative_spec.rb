# frozen_string_literal: true

require 'rails_helper'
require 'google/apis/civicinfo_v2'

RSpec.describe Representative, type: :model do
  describe 'civic_api_to_representative_params method' do
    service = Google::Apis::CivicinfoV2::CivicInfoService.new
    service.key = Rails.application.credentials[:GOOGLE_API_KEY]

    it 'does not create representative more than once' do
      result = service.representative_info_by_address(address: 'Honululu')

      described_class.civic_api_to_representative_params(result)
      described_class.civic_api_to_representative_params(result)

      expect(described_class.where(name: 'Joseph R. Biden').count).to eq 1
    end
  end
end