# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

User.where(:email => 'pjm1998+dotsearchfile@gmail.com').each {|u| u.delete}
user = User.create(:name => 'test', :password => 'password', :email => 'pjm1988+dotsearchfile@gmail.com')

sql_filter = Filter.find_or_create_by_filter('-"sql server"')
sql_filter.tags = [Tag.find_or_create_by_tag('lamp'), Tag.find_or_create_by_tag('postgresql'), Tag.find_or_create_by_tag('mysql')]

not_django_filter = Filter.find_or_create_by_filter('-"django"')
not_django_filter.tags = [Tag.find_or_create_by_tag('ruby on rails'), Tag.find_or_create_by_tag('cake php'), Tag.find_or_create_by_tag('zend'), Tag.find_or_create_by_tag('symphony')]

not_zend_filter = Filter.find_or_create_by_filter('-"zend"')
not_zend_filter.tags = [Tag.find_or_create_by_tag('ruby on rails'), Tag.find_or_create_by_tag('cake php'), Tag.find_or_create_by_tag('django')]

user.owned_filters = [sql_filter, not_django_filter, not_zend_filter]

list = List.find_or_create_by_name("patrick's programming list")
list.filters = [sql_filter, not_django_filter, not_zend_filter]
list.tags = [Tag.find_or_create_by_tag('ruby on rails'), Tag.find_or_create_by_tag(:tag => 'postgresql')]

user.owned_lists = user.owned_lists + [list]
user.lists = user.lists + [list]
user.save