require 'spec_helper'

RSpec.describe 'Shippo::API::Order' do
  let(:params) { { object_id:     'afa9fa09fa809f98f0a',
                   'object_owner' => 'shippo@shippotest.com',
                   deliver_by:    Time.now.to_s } }

  let(:shipment) { Shippo::Order.from(params.dup) }

  describe '#from' do
    it 'should propertly initialize self and ApiObject' do
      expect(shipment).to be_kind_of(Shippo::Order)
      expect(shipment.object.owner).to eql('shippo@shippotest.com')
      expect(shipment.object.id).to eql('afa9fa09fa809f98f0a')
    end
  end
end
