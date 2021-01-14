class Project
    attr_reader :title

    # @@all = []

    def initialize(title)
        @title = title
        # @@all << self
    end

    # def self.all
    #     @@all 
    # end     

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        i = ProjectBacker.all.select do |y|
            y.project == self
        end
        i.map do |a|
            a.backer
        end

    end 
end 