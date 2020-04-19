#include <date.au3>
$systemtime=_date_time_getsystemtime()
clipput(_datediff("s", "1970/01/01 00:00:00", _Date_Time_SystemTimeToDateTimeStr($systemtime, 1)))
