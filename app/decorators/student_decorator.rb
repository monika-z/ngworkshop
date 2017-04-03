class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    avg = SubjectItemNote.for_subject_item(subject_item).average('value')
    avg = 0 if avg.nil?
    
    '%.2f' % avg
  end
  def birth_day
    bday = "-"
    bday = "#{birthday.year}-#{birthday.month}_#{birthday.day}" if birthday
    "#{bday}"
  end  
end
