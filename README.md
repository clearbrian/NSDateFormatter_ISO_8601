NSDateFormatter_ISO_8601 -  Category on NSString to Convert Date String in ISO_8601 Format to NSDate

 
 Use
 
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSSZZZZZ"];


 To convert

    2014-03-04T11:19:40.0139887+00:00
 
 to an NSDate
 
    2014-03-04 11:19:40 +0000
 
 Should handle time zone correctly [+01:00]
 
 EXAMPLE
 
 We had a token issued with a
 
    start date[2014-03-04] (GMT +00:00)
    
    NSString:@"2014-03-04T11:19:40.0139887+00:00"
    
 and
 
 enddate [month later] [2014-04-01]
 
    NSString:@"2014-04-01T11:19:40.0139887+01:00"
 
    End date was in (British Summer Time) BST so one hour ahead (+01:00)
 
 Using
 
    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSSZZZZZ"];

 
 start date
 
    IN :NSString:2014-03-04T11:19:40.0139887+00:00
    
    OUT:  NSDate:2014-03-04 11:19:40 +0000
 

 enddate

    IN :NSString:2014-04-01T11:19:40.0139887+01:00
    OUT:  NSDate:2014-04-01 10:19:40 +0000
 
 
 
 HANDLING 'T'
 
 Items in single quotes arent parsed and are returned as is
 so 'T' always maps to 'T'
    

 
 TIMEZONE - Z Zulu time
 
    http://en.wikipedia.org/wiki/ISO_8601#Time_offsets_from_UTC

    FROM
    http://stackoverflow.com/questions/3094730/iphone-nsdateformatter-timezone-conversion
    
    To process the time zone with the colon in it, you just need to use 5 'Z's.
    
    OTHER
    
    http://www.unicode.org/reports/tr35/tr35-25.html#Date_Format_Patterns
    
    Timezones - http://www.unicode.org/reports/tr35/tr35-25.html#Time_Zone_Fallback
    
