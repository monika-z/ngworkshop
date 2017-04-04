puts "Seeds: start"

TEACHER_TITLES = %w(Dr. Prof. TA)
FIRST_NAMES = %w(Clint Kate Steve Natasha Antony Carol Peter Wanda Bruce Jessica Luke Janet Sam Barbara Daniel Jennifer Matthew Henry Maria Simon Patricia Reed Susan James Mary Harry Gwen Miles)
LAST_NAMES = %w(Barton Bishop Rogers Romanoff Stark Danvers Parker Maximoff Banner Drew Cage Dyne Wilson Morse Rand Walters Murdock Pym Hill Williams Walker Richards Storm Rhodes Watson Osborn Stacy Morales)
TITLES = %w(Math Science History Biology Art Literature Chemistry)
User.create!(email: 'admin@admin.com',password: 'adminadmin')

3.times do
  Teacher.create!(
    first_name: FIRST_NAMES.sample,
    last_name: LAST_NAMES.sample,
    academic_title: TEACHER_TITLES.sample
  )
end

teachers = Teacher.all
5.times do
  SubjectItem.create!(
    title: TITLES.sample,
    teacher: teachers.sample
  )
end

25.times do
  Student.create!(
    first_name: FIRST_NAMES.sample,
    last_name: LAST_NAMES.sample
  )
end

students = Student.all
SubjectItem.all.each do |subject_item|
  subject_item.students << students.sample(rand(1..5))
end

SubjectItem.all.each do |subject_item|
  subject_item.students.each do |student|
    rand(1..5).times do
      subject_item.subject_item_notes << SubjectItemNote.create(student: student,
                                                                subject_item: subject_item,
                                                                value: rand(1..6))
    end
  end
end

from = Date.today
to = Date.today + 2.years
4.times do
    Tuition.create!(
    deadline: Time.at((from.to_time.to_f - to.to_time.to_f) * rand +
               to.to_time.to_f)
  )
end  

puts "Seeds: done"
