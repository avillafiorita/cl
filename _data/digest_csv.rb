require 'csv'

# one column has a very loooooooooooooooooooooooooooooooooong column name
SLIDES_COLUMN_NAME = "Slides ---- Format: Lesson.Part.slideVersion.Topic.Subtopic"

def emit_material row
  puts "    - topic: \"#{row["Subtopics"]}\""
  puts "      slides: \"#{row[SLIDES_COLUMN_NAME]}\""
end

def to_date string
  return if not string
  day, month = string.split("/")
  Date.new(2022, month.to_i, day.to_i)
end

def emit_row row, current_part, index
  puts %(
- date: #{to_date(row["Day"])}
  hours: #{row["Hours"]}
  time: #{row["Time"]}
  topic: "#{row["Topic"]}"
  part: "#{current_part}"
  lesson: "#{row["#"]}"
  index: #{index}
  materials:
)
end

def empty? obj
  obj == nil || obj == ""
end

def generate(input_file)
  # first step remove parts
  csv = CSV.read input_file, headers: true

  current_part = ""
  csv.each_with_index do |row, index|
    if row["#"] != nil && row["#"].include?("part")
      current_part = row["#"]
      next
    end

    if empty?(row["Day"]) && !empty?(row["Subtopics"])
      emit_material row
    else
      emit_row row, current_part, index
      emit_material row
    end
  end
end  

generate ARGV[0]
