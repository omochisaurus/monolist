class RankingsController < ApplicationController
    
    def have
        ids = Have.group('item_id').order("count_item_id desc").limit(10).count(:item_id).keys
        @rank_have = Item.find(ids).sort_by{ |item| ids.index(item.id) }
    end
    
    def want
        ids = Want.group('item_id').order("count_item_id desc").limit(10).count(:item_id).keys
        @rank_want = Item.find(ids).sort_by{ |item| ids.index(item.id) }
    end
    
end