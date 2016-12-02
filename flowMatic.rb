=begin
|~~ |~~
| |
:$: HIS MAJESTY'S FLOWMATIC SOMETHING-OR-OTHER :$:
`'''''''''''''''''''''''''''''''''''''''''''''`
~= Instructions =~
1. Water should flow if flowmatic_on is true and
water_available is true.
2. If flowmatic_on is false, the message
"Flowmatic is off!" should appear.
3. If water_available is false, the message
"No water!" should appear.
4. If the flow_rate is above 50, the warning
"Warning! flow_rate is above 50!" should
appear, along with the current flow rate.
5. If the flow_rate is below 50, the warning
"Warning! flow_rate is below 50!" should
appear, along with the current flow rate.
=end

flowmatic_on=true
water_available=true
if flowmatic_on&&water_available
  puts"Water is flowing!"
elsif !flowmatic_on
  puts"Flowmatic is off!"
elsif !water_available
  puts"No water!"

end
flow_rate=60
if flow_rate==50
  puts"Everything is running smoothly!"
elsif flow_rate<50
  puts"Warning! flow rate is below 50!"
elsif flow_rate>50
  puts"Warning! flow rate is above 50!"

end
