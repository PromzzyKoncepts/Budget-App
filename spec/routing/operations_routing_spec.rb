require 'rails_helper'

RSpec.describe OperationsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/groups/1/operations').to route_to('operations#index', group_id: '1')
    end

    it 'routes to #new' do
      expect(get: '/groups/1/operations/new').to route_to('operations#new', group_id: '1')
    end

    it 'routes to #show' do
      expect(get: '/groups/1/operations/1').to route_to('operations#show', group_id: '1', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/groups/1/operations/1/edit').to route_to('operations#edit', group_id: '1', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/groups/1/operations').to route_to('operations#create', group_id: '1')
    end

    it 'routes to #update via PUT' do
      expect(put: '/groups/1/operations/1').to route_to('operations#update', group_id: '1', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/groups/1/operations/1').to route_to('operations#update', group_id: '1', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/groups/1/operations/1').to route_to('operations#destroy', group_id: '1', id: '1')
    end
  end
end
