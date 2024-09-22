% Submitted by Harshit Maurya %
% Roll number: 22126022 %
% Topic: Feature Normalisation % 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Read the student performance data from a CSV file %
data = readtable('student_performance_data.csv');

% Extract relevant columns %
Attendance = data.Attendance;
Hours_Studied = data.Hours_Studied;
Sleep_Hours = data.Sleep_Hours;
Previous_Scores = data.Previous_Scores;
Tutoring_Sessions = data.Tutoring_Sessions;
Physical_Activity = data.Physical_Activity;

% Perform Min-Max scaling %
scaled_Attendance = minMaxScaling(Attendance);
scaled_Hours_Studied = minMaxScaling(Hours_Studied);
scaled_Sleep_Hours = minMaxScaling(Sleep_Hours);
scaled_Previous_Scores = minMaxScaling(Previous_Scores);
scaled_Tutoring_Sessions = minMaxScaling(Tutoring_Sessions);
scaled_Physical_Activity = minMaxScaling(Physical_Activity);

% Write the scaled data back to a new CSV file %
scaled_data = data;
scaled_data.Attendance = scaled_Attendance;
scaled_data.Hours_Studied = scaled_Hours_Studied;
scaled_data.Sleep_Hours = scaled_Sleep_Hours;
scaled_data.Previous_Scores = scaled_Previous_Scores;
scaled_data.Tutoring_Sessions = scaled_Tutoring_Sessions;
scaled_data.Physical_Activity = scaled_Physical_Activity;
writetable(scaled_data, 'scaled_student_performance_data.csv');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
