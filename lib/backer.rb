class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        supporters = ProjectBacker.all.select do |support|
            support.backer == self
        end
        supporters.map do |support|
            support.project
        end
    end
end