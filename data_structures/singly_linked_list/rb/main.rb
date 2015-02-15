require_relative 'singly_linked_list'

basketball_teams = SinglyLinkedList.new
basketball_teams.insert("Lakers", "head");
basketball_teams.insert("Blazers", "Lakers");
basketball_teams.insert("Celtics", "Blazers");
basketball_teams.insert("Kings", "Celtics");
basketball_teams.display();
puts "\n\n\nRemoving Celtics"
basketball_teams.remove("Celtics");
basketball_teams.display();
