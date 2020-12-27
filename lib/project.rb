class Project 
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        supporters = ProjectBacker.all.select do |support|
            support.project == self
        end
        supporters.map do |support|
            support.backer
        end
    end
end