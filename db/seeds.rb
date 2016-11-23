# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if State.count == 0
  puts "Creating States..."
  states =
  [
    {ansi_code: "AL",iso: "US-AL", name: "Alabama"},
    {ansi_code: "AK",iso: "US-AK", name: "Alaska"},
    {ansi_code: "AZ",iso: "US-AZ", name: "Arizona"},
    {ansi_code: "AR",iso: "US-AR", name: "Arkansas"},
    {ansi_code: "CA",iso: "US-CA", name: "California"},
    {ansi_code: "CO",iso: "US-CO", name: "Colorado"},
    {ansi_code: "CT",iso: "US-CT", name: "Connecticut"},
    {ansi_code: "DE",iso: "US-DE", name: "Delaware"},
    {ansi_code: "DC",iso: "US-DC", name: "District of Columbia"},
    {ansi_code: "FL",iso: "US-FL", name: "Florida"},
    {ansi_code: "GA",iso: "US-GA", name: "Georgia"},
    {ansi_code: "HI",iso: "US-HI", name: "Hawaii"},
    {ansi_code: "ID",iso: "US-ID", name: "Idaho"},
    {ansi_code: "IL",iso: "US-IL", name: "Illinois"},
    {ansi_code: "IN",iso: "US-IN", name: "Indiana"},
    {ansi_code: "IA",iso: "US-IA", name: "Iowa"},
    {ansi_code: "KS",iso: "US-KS", name: "Kansas"},
    {ansi_code: "KY",iso: "US-KY", name: "Kentucky"},
    {ansi_code: "LA",iso: "US-LA", name: "Louisiana"},
    {ansi_code: "ME",iso: "US-ME", name: "Maine"},
    {ansi_code: "MD",iso: "US-MD", name: "Maryland"},
    {ansi_code: "MA",iso: "US-MA", name: "Massachusetts"},
    {ansi_code: "MI",iso: "US-MI", name: "Michigan"},
    {ansi_code: "MN",iso: "US-MN", name: "Minnesota"},
    {ansi_code: "MS",iso: "US-MS", name: "Mississippi"},
    {ansi_code: "MO",iso: "US-MO", name: "Missouri"},
    {ansi_code: "MT",iso: "US-MT", name: "Montana"},
    {ansi_code: "NE",iso: "US-NE", name: "Nebraska"},
    {ansi_code: "NV",iso: "US-NV", name: "Nevada"},
    {ansi_code: "NH",iso: "US-NH", name: "New Hampshire"},
    {ansi_code: "NJ",iso: "US-NJ", name: "New Jersey"},
    {ansi_code: "NM",iso: "US-NM", name: "New Mexico"},
    {ansi_code: "NY",iso: "US-NY", name: "New York"},
    {ansi_code: "NC",iso: "US-NC", name: "North Carolina"},
    {ansi_code: "ND",iso: "US-ND", name: "North Dakota"},
    {ansi_code: "OH",iso: "US-OH", name: "Ohio"},
    {ansi_code: "OK",iso: "US-OK", name: "Oklahoma"},
    {ansi_code: "OR",iso: "US-OR", name: "Oregon"},
    {ansi_code: "PA",iso: "US-PA", name: "Pennsylvania"},
    {ansi_code: "RI",iso: "US-RI", name: "Rhode Island"},
    {ansi_code: "SC",iso: "US-SC", name: "South Carolina"},
    {ansi_code: "SD",iso: "US-SD", name: "South Dakota"},
    {ansi_code: "TN",iso: "US-TN", name: "Tennessee"},
    {ansi_code: "TX",iso: "US-TX", name: "Texas"},
    {ansi_code: "UT",iso: "US-UT", name: "Utah"},
    {ansi_code: "VT",iso: "US-VT", name: "Vermont"},
    {ansi_code: "VA",iso: "US-VA", name: "Virginia"},
    {ansi_code: "WA",iso: "US-WA", name: "Washington"},
    {ansi_code: "WV",iso: "US-WV", name: "West Virginia"},
    {ansi_code: "WI",iso: "US-WI", name: "Wisconsin"},
    {ansi_code: "WY",iso: "US-WY", name: "Wyoming"},
    {ansi_code: "AB", iso: "CA-AB", name: "Alberta"},
    {ansi_code: "BC", iso: "CA-BC", name: "British Columbia"},
    {ansi_code: "MB", iso: "CA-MB", name: "Manitoba"},
    {ansi_code: "NB", iso: "CA-NB", name: "New Brunswick"},
    {ansi_code: "NL", iso: "CA-NL", name: "Newfoundland and Labrador"},
    {ansi_code: "NS", iso: "CA-NS", name: "Nova Scotia"},
    {ansi_code: "ON", iso: "CA-ON", name: "Ontario"},
    {ansi_code: "PE", iso: "CA-PE", name: "Prince Edward Island"},
    {ansi_code: "QC", iso: "CA-QC", name: "Quebec"},
    {ansi_code: "SK", iso: "CA-SK", name: "Saskatchewan"},
    {ansi_code: "NT", iso: "CA-NT", name: "Northwest Territories"},
    {ansi_code: "NU", iso: "CA-NU", name: "Nunavut"},
    {ansi_code: "YT", iso: "CA-YT", name: "Yukon Territory"}
  ]
  total = states.length.to_f
  process_counter = 0
  process_display = 0
  states.each do |state|
    State.create(state)
    process_counter+=1
    percent = ((process_counter/total) * 100).round(1)
    display = case process_display
                when 0
                  process_display+=1
                  "|"
                when 1
                  process_display+=1
                  "/"
                when 2
                  process_display+=1
                  "-"
                when 3
                  process_display+=1
                  "|"
                when 4
                  process_display+=1
                  "-"
                when 5
                  process_display=0
                  "\\"
              end
    print "\r\r Creating states #{percent}% #{display}"
  end
  print "\n"
end

if Location.count == 0
  puts "Adding some locations"
  locations =
    [
      {name: "Montclair Public Library", street_address: "50 South Fullerton Ave", city: "Montclair", state_id: 31, zipcode: "07042" },
      {name: "Panera Bread", street_address: "15 Bloomfield Ave", city: "Montclair", state_id: 31, zipcode: "07042"}
    ]

  locations.each do |location|
    Location.create(location)
  end
end

if WorkShop.count == 0
  puts "Creating Some Workshops..."
  events =
  [
    {name: "MEMOIR GROUPS", description: 'Two groups meet alternate Wednesdays, 10-12, Library Conf. Room –Group 1 on 11/23 & 12/7; Group 2 on 11/30 & 12/14. No drop-ins.', drop_in: false},
    {name: "PROSE CRITIQUE GROUP", description: "Wednesdays, 6:30 PM at various eateries around Montclair, including Panera Bread and Manny’s Diner. Critique group for writers of any prose form. Writers share 10-page submissions in advance so meeting time can focus on feedback. Dinner (for those interested) at 6:30, critique at 7. No drop-ins. Limited space and the group is now full. Contact co-hosts if interested in joining: Melissa at meljsullivan@gmail.com or Ren at ironlime@gmail.com.", drop_in: false},
    {name: "NOVELIST CRITIQUE GROUPS", description: "Critiques for novelists & would-be novelists. No drop-ins.  Thursday Novel Group meets 10 am-1 pm, Library Conf. Rm. Full now; if interested, contact Kathleen McCoy at mccoy3a@gmail.com. Friday Novel Group meets from 10-12:30, and resumes after New Year’s. If interested, contact carlselinger1@gmail.com.", drop_in: false},
    {name: "FREE-FOR-ALLS FOR WRITERS", description: "Thursdays, 7-8:45 pm, Library Conf. Rm. Various writing events"},
    {name: 'FREE WRITE WRITING WORKSHOP', description: "Every Saturday morning, 10:15-1, Conf. Room. Write creatively to prompts! (Free Write Leader Rose Blessing at definitionsocial@gmail.com.)", drop_in: true}
  ]

  events.each do |workshop|
    WorkShop.create(workshop)
  end
end