module BookKeeping
  VERSION = 3
end

class School
  def initialize
    @roster = {}
  end

  def students(grade)
    @roster.fetch(grade, [])
  end

  def add(name, grade)
    if @roster[grade].nil?
      @roster[grade] = [name]
    else
      @roster[grade].push(name)
      @roster[grade].sort!
    end
  end

  def students_by_grade
    @roster.reduce([]) do |sorted_roster, grade|
      sorted_roster.push({
        grade: grade[0],
        students: grade[1]
      }).sort_by {|grade| grade[:grade]}
    end
  end
end
