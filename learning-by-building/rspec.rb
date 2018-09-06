class Expect

    def initialize(val)
        @val = val
    end

    def to(comparison)
        if  comparison.compare(@val)
            "Test passes! :)"
        else
            "Test fails! D:"
        end
    end

end

class Equal

    def initialize(val)
        @val = val
    end

    def compare(comparison)
        @val == comparison
    end

end

class Include

    def initialize(val)
        @val = val
    end

    def compare(comparison)
        comparison.include? @val
    end

end

def expect(value)
    Expect.new(value)
end

def eq(value)
    Equal.new(value)
end

def include(value)
    Include.new(value)
end