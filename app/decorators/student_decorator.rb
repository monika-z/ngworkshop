class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    avg = SubjectItemNote.for_subject_item(subject_item).average('value')
    avg = 0 if avg.nil?
    
    '%.2f' % avg
  end
end
