#!/bin/bash

dmtsai:$6$M4IphgNP2TmlXaSS$B418YFroYxxmm....:16559:5:60:7:5:16679:
這表示什麼呢？先要注意的是 16559 是 2015/05/04 。所以 dmtsai 這個使用者的密碼相關意義是：

由於密碼幾乎僅能單向運算(由明碼計算成為密碼，無法由密碼反推回明碼)，因此由上表的資料我們無法得知 dmstai 的實際密碼明文 (第二個欄位)；

此帳號最近一次更動密碼的日期是 2015/05/04 (16559)；

能夠再次修改密碼的時間是 5 天以後，也就是 2015/05/09 以前 dmtsai 不能修改自己的密碼；如果使用者還是嘗試要更動自己的密碼，系統就會出現這樣的訊息：
You must wait longer to change your password
passwd: Authentication token manipulation error
畫面中告訴我們：你必須要等待更久的時間才能夠變更密碼之意啦！

由於密碼過期日期定義為 60 天後，亦即累積日數為： 16559+60=16619，經過計算得到此日數代表日期為 2015/07/03。 這表示：『使用者必須要在 2015/05/09 (前 5 天不能改) 到 2015/07/03 之間的 60 天限制內去修改自己的密碼，若 2015/07/03 之後還是沒有變更密碼時，該密碼就宣告為過期』了！

警告日期設為 7 天，亦即是密碼過期日前的 7 天，在本例中則代表 2015/06/26 ~ 2015/07/03 這七天。 如果使用者一直沒有更改密碼，那麼在這 7 天中，只要 dmtsai 登入系統就會發現如下的訊息：
Warning: your password will expire in 5 days

如果該帳號一直到 2015/07/03 都沒有更改密碼，那麼密碼就過期了。但是由於有 5 天的寬限天數， 因此 dmtsai 在 2015/07/08 前都還可以使用舊密碼登入主機。 不過登入時會出現強制更改密碼的情況，畫面有點像底下這樣：
You are required to change your password immediately (password aged)
WARNING: Your password has expired.
You must change your password now and login again!
Changing password for user dmtsai.
Changing password for dmtsai
(current) UNIX password:
你必須要輸入一次舊密碼以及兩次新密碼後，才能夠開始使用系統的各項資源。如果你是在 2015/07/08 以後嘗試以 dmtsai 登入的話，那麼就會出現如下的錯誤訊息且無法登入，因為此時你的密碼就失效去啦！
Your account has expired; please contact your system administrator

如果使用者在 2015/07/03 以前變更過密碼，那麼第 3 個欄位的那個 16559 的天數就會跟著改變，因此， 所有的限制日期也會跟著相對變動喔！^_^

無論使用者如何動作，到了 16679 (大約是 2015/09/01 左右) 該帳號就失效了～

#########################################################################################################
Administrator:$1$5f4EKtje$bA96TdSL3X3SSmgD.8Iho.:18951:0:99999:7:::
#第三栏
#mydate=$(date --date=2021/11/20 +%s)
#echo $((mydate/60/60/24+1))
#18951
#第四位
#密碼不可被更動的天數：(與第 3 欄位相比)
#第四個欄位記錄了：這個帳號的密碼在最近一次被更改後需要經過幾天才可以再被變更！如果是 0 的話， 表示密碼隨時可以更動的意思。
#第五位
#密碼需要重新變更的天數：(與第 3 欄位相比)
#指定在最近一次更改密碼後， 在多少天數內需要再次的變更密碼才行。你必須要在這個天數內重新設定你的密碼，否則這個帳號的密碼將會『變為過期特性』。 而如果像上面的 99999 (計算為 273 年) 的話，那就表示，呵呵，密碼的變更沒有強制性之意
#第六位
#密碼需要變更期限前的警告天數：(與第 5 欄位相比)
#當帳號的密碼有效期限快要到的時候 (第 5 欄位)，系統會依據這個欄位的設定，發出『警告』言論給這個帳號，提醒他『再過 n 天你的密碼就要過期了，請盡快重新設定你的密碼呦！』，如上面的例子，則是密碼到期之前的 7 天之內，系統會警告該用戶。
#第七位
#密碼過期後的帳號寬限時間(密碼失效日)：(與第 5 欄位相比)
#密碼有效日期為『更新日期(第3欄位)』+『重新變更日期(第5欄位)』，過了該期限後使用者依舊沒有更新密碼，那該密碼就算過期了。 雖然密碼過期但是該帳號還是可以用來進行其他工作的，包括登入系統取得 bash 。不過如果密碼過期了， 那當你登入系統時，系統會強制要求你必須要重新設定密碼才能登入繼續使用喔，這就是密碼過期特性。
#第八位
#帳號失效日期：
#這個日期跟第三個欄位一樣，都是使用 1970 年以來的總日數設定。這個欄位表示： 這個帳號在此欄位規定的日期之後，將無法再使用。 就是所謂的『帳號失效』，此時不論你的密碼是否有過期，這個『帳號』都不能再被使用！ 這個欄位會被使用通常應該是在『收費服務』的系統中，你可以規定一個日期讓該帳號不能再使用啦！
#第九位
#保留：
#最後一個欄位是保留的，看以後有沒有新功能加入。
















