class TowersOfHanoi
    attr_accessor :board 
    
    def initialize
        @board = [[5,4,3,2,1],[],[]]
    end

    def move(pos)
        start_pos, end_pos = pos
        disk = board[start_pos].last
        target = board[end_pos].last
        target ||= 6
        raise StandardError if disk > target
        board[end_pos] << board[start_pos].pop
    end

    def won?
        return true if board == [[],[],[5,4,3,2,1]]
        false
    end
end
