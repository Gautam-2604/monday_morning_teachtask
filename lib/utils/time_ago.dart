import 'package:intl/intl.dart';

class TimeAgo{
  static String timeAgoSinceDate(int time){
    DateTime NotiTime = DateTime.fromMillisecondsSinceEpoch(time);
    final date2 = DateTime.now();
    final diff = date2.difference(NotiTime);
    if(diff.inDays>8)
      return DateFormat("dd-MM-yyyy HH:mm:ss").format(NotiTime);
    else if (diff.inDays / 7.floor()>=1)
      return "Last Week";
    else if (diff.inDays >=2)
      return '${diff.inDays} days ago';
    else if(diff.inDays>=1)
      return "1 day ago";
    else if(diff.inHours>=2)
      return '${diff.inHours} hours ago';
    else if(diff.inHours>=1)
      return '1 hour ago';
    else if(diff.inMinutes>=2)
      return '${diff.inMinutes} minutes ago';
    else if(diff.inMinutes>=1)
      return '1 minute ago';
    else if(diff.inSeconds>=3)
      return '${diff.inSeconds} seconds ago';
    else
      return "Just Now";


  }
}