--[[
#    ▀█████████▄   ▄██████▄     ▄████████    ▄████████
#      ███    ███ ███    ███   ███    ███   ███    ███
#      ███    ███ ███    ███   ███    █▀    ███    █▀
#     ▄███▄▄▄██▀  ███    ███   ███          ███
#    ▀▀███▀▀▀██▄  ███    ███ ▀███████████ ▀███████████ ¦ Dev : @TH3MOD
#      ███    ██▄ ███    ███          ███          ███ ¦ Dev : @OMMMM
#      ███    ███ ███    ███    ▄█    ███    ▄█    ███
#    ▄█████████▀   ▀██████▀   ▄████████▀   ▄████████▀  ¦ Source TH3MOD BY @TH3BS
#---------------------------------------------------------------------
]]


---------------Lock ------------------- 
function unlock_replayRn(msg)
if not msg.Director then return "⌯ هذا الامر يخص {المطور,المنشئ,المدير} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_RandomRdod"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل الردود العشوائيه    \n " ) 
else redis:set(MOD.."lock_RandomRdod"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل الردود العشوائيه بنجاح   \n " ) 
end 
end,{msg=msg})
end

function lock_replayRn(msg)
if not msg.Director then return "⌯ هذا الامر يخص {المطور,المنشئ,المدير} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_RandomRdod"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل الردود العشوائيه    \n " ) 
else redis:del(MOD.."lock_RandomRdod"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل الردود العشوائيه بنجاح   \n " ) 
end
end,{msg=msg})
end 

---------------Lock ------------------- 
function unlock_KickBan(msg)
if not msg.Creator then return "⌯ هذا الامر يخص {المطور,المنشئ} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_KickBan"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل الحظر والطرد    \n " ) 
else redis:set(MOD.."lock_KickBan"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل الحظر والطرد بنجاح   \n " ) 
end 
end,{msg=msg})
end

function lock_KickBan(msg)
if not msg.Creator then return "⌯ هذا الامر يخص {المطور,المنشئ} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_KickBan"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل الحظر والطرد    \n " ) 
else redis:del(MOD.."lock_KickBan"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل الحظر والطرد بنجاح   \n " ) 
end
end,{msg=msg})
end 

---------------Lock ------------------- 
function unlock_rdodSource(msg)
if not msg.Director then return "⌯ هذا الامر يخص {المطور,المنشئ,المدير} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_rdodSource"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل ردود السورس    \n " ) 
else redis:set(MOD.."lock_rdodSource"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل ردود السورس بنجاح   \n " ) 
end 
end,{msg=msg})
end

function lock_rdodSource(msg)
if not msg.Director then return "⌯ هذا الامر يخص {المطور,المنشئ,المدير} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_rdodSource"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل  ردود السورس    \n " ) 
else redis:del(MOD.."lock_rdodSource"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل ردود السورس بنجاح   \n " ) 
end
end,{msg=msg})
end 

---------------Lock check -------------------
function lock_check(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_check"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل التحقق    \n " )        else 
redis:del(MOD.."lock_check"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل التحقق بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_check(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_check"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل التحقق    \n " )        else
redis:set(MOD.."lock_check"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل التحقق بنجاح   \n " )
end
end,{msg=msg})
end

---------------Lock check -------------------
function lock_cleaner(msg)
if not msg.Director then return "⌯ هذا الامر يخص {المطور,المنشئ,المدير} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_cleaner"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل التنظيف التلقائي    \n " )
else 

redis:del(MOD.."lock_cleaner"..msg.chat_id_)
local Cleaner = redis:smembers(MOD..":IdsMsgsCleaner:"..msg.chat_id_)
for k,v in pairs(Cleaner) do
redis:del(MOD..":SetTimerCleaner:"..msg.chat_id_..v) 
Del_msg(msg.chat_id_,v)
end
redis:del(MOD..":IdsMsgsCleaner:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل التنظيف التلقائي بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_cleaner(msg)
if not msg.Director then return "⌯ هذا الامر يخص {المطور,المنشئ,المدير} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_cleaner"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل التنظيف التلقائي    \n " )        else
redis:set(MOD.."lock_cleaner"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل التنظيف التلقائي بنجاح   \n " )
end
end,{msg=msg})
end


---------------Lock takk------------------- 
function unlock_takkl(msg)
if not msg.Creator then return "⌯ هذا الامر يخص {المطور,المنشئ} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_takkl"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل تاك للكل    \n " ) 
else redis:set(MOD.."lock_takkl"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل تاك للكل   \n " ) 
end
end,{msg=msg})
end

function lock_takkl(msg)
if not msg.Creator then return "⌯ هذا الامر يخص {المطور,المنشئ} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_takkl"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل تاك للكل    \n " ) 
else
redis:del(MOD.."lock_takkl"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل تاك للكل بنجاح   \n " ) 
end 
end,{msg=msg})
end 

---------------Lock left------------------- 
function unlock_leftgroup(msg)
if not msg.Creator then return "⌯ هذا الامر يخص {المطور,المنشئ} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_leftgroup"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل المغادره    \n " ) 
else redis:set(MOD.."lock_leftgroup"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل المغادره بنجاح   \n " ) 
end
end,{msg=msg})
end

function lock_leftgroup(msg)
if not msg.Creator then return "⌯ هذا الامر يخص {المطور,المنشئ} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_leftgroup"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل المغادره    \n " )
else
redis:del(MOD.."lock_leftgroup"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل المغادره بنجاح   \n " )
end 
end,{msg=msg})
end 


---------------Lock Protection------------------- 
function unlock_AntiEdit(msg)
if not msg.SuperCreator then return "⌯ هذا الامر يخص {المنشئ الاساسي,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."antiedit"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل الحمايه    \n " ) 
else redis:set(MOD.."antiedit"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل الحمايه بنجاح   \n " ) 
end
end,{msg=msg})
end

function lock_AntiEdit(msg)
if not msg.SuperCreator then return "⌯ هذا الامر يخص {المنشئ الاساسي,المطور} فقط  " end 
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."antiedit"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل الحمايه    \n " ) 
else
redis:del(MOD.."antiedit"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل الحمايه بنجاح   \n " ) 
end 
end,{msg=msg})
end 

------Lock id photo ------------------- 
function unlock_idphoto(msg)
if not msg.Director  then return "⌯ هذا الامر يخص {المدير,المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."idphoto"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل الايدي بالصوره    \n " ) 
else redis:set(MOD.."idphoto"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل الايدي بالصوره بنجاح   \n " ) 
end
end,{msg=msg})
end

function lock_idphoto(msg)
if not msg.Director  then return "⌯ هذا الامر يخص {المدير,المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."idphoto"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل الايدي بالصوره    \n " ) 
else
redis:del(MOD.."idphoto"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل الايدي بالصوره بنجاح   \n " ) 
end 
end,{msg=msg})
end
------Lock link Group ------------------- 
function unlock_linkk(msg)
if not msg.Creator then return "⌯ هذا الامر يخص {المطور,المنشئ} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_linkk"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل الرابط    \n " ) 
else redis:set(MOD.."lock_linkk"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل الرابط بنجاح   \n " ) 
end
end,{msg=msg})
end

function lock_linkk(msg)
if not msg.Creator then return "⌯ هذا الامر يخص {المطور,المنشئ} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_linkk"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل الرابط    \n " ) 
else
redis:del(MOD.."lock_linkk"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل الرابط بنجاح   \n " ) 
end 
end,{msg=msg})
end
------Lock waring ------------------- 
function unlock_waring(msg)
if not msg.Admin then return "⌯ هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_woring"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل التحذير    \n " ) 
else redis:set(MOD.."lock_woring"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل التحذير بنجاح   \n " ) 
end
end,{msg=msg})
end

function lock_waring(msg)
if not msg.Admin then return "⌯ هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_woring"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل التحذير    \n " ) 
else
redis:del(MOD.."lock_woring"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل التحذير بنجاح   \n " ) 
end 
end,{msg=msg})
end
------Lock id------------------- 
function lock_ID(msg)
if not msg.Admin then return "⌯ هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_id"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل الايدي    \n " ) 
else
redis:del(MOD.."lock_id"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل الايدي بنجاح   \n " ) 
end 
end,{msg=msg})
end

function unlock_ID(msg)
if not msg.Admin then return "⌯ هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_id"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل الايدي    \n " ) 
else 
redis:set(MOD.."lock_id"..msg.chat_id_,true)  
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل الايدي بنجاح   \n " ) 
end 
end,{msg=msg})
end
------Lock welcome------------------- 
function unlock_Welcome(msg)
if not msg.Admin then return "⌯ هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."welcome:get"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل الترحيب    \n " ) 
else redis:set(MOD.."welcome:get"..msg.chat_id_,true)  
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل الترحيب بنجاح   \n " ) 
end 
end,{msg=msg})
end

function lock_Welcome(msg)
if not msg.Admin then return "⌯ هذا الامر يخص {الادمن,المدير,المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."welcome:get"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل الترحيب    \n " ) 
else
redis:del(MOD.."welcome:get"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل الترحيب بنجاح   \n " ) 
end 
end,{msg=msg})
end
------Lock all------------------- 
function lock_All(msg)
if not msg.Creator   then return "⌯ هذا الامر يخص {المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
redis:mset(
MOD.."lock_username"..msg.chat_id_,true,
MOD.."mute_gif"..msg.chat_id_,true,
MOD.."mute_photo"..msg.chat_id_,true,
MOD.."mute_audio"..msg.chat_id_,true,
MOD.."mute_voice"..msg.chat_id_,true,
MOD.."mute_sticker"..msg.chat_id_,true,
MOD.."mute_forward"..msg.chat_id_,true,
MOD.."mute_contact"..msg.chat_id_,true,
MOD.."mute_location"..msg.chat_id_,true,
MOD.."mute_document"..msg.chat_id_,true,
MOD.."lock_link"..msg.chat_id_,true,
MOD.."lock_tag"..msg.chat_id_,true,
MOD.."lock_edit"..msg.chat_id_,true,
MOD.."lock_spam"..msg.chat_id_,true,
MOD.."lock_bots"..msg.chat_id_,true,
MOD.."lock_webpage"..msg.chat_id_,true,
MOD.."mute_video"..msg.chat_id_,true,
MOD.."mute_inline"..msg.chat_id_,true
)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الكل بنجاح   \n " ) 
end,{msg=msg})

end

function Unlock_All(msg)
if not msg.Creator   then return "⌯ هذا الامر يخص {المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
redis:del(
MOD.."lock_username"..msg.chat_id_,
MOD.."mute_gif"..msg.chat_id_,
MOD.."mute_photo"..msg.chat_id_,
MOD.."mute_audio"..msg.chat_id_,
MOD.."mute_voice"..msg.chat_id_,
MOD.."mute_sticker"..msg.chat_id_,
MOD.."mute_forward"..msg.chat_id_,
MOD.."mute_contact"..msg.chat_id_,
MOD.."mute_location"..msg.chat_id_,
MOD.."mute_document"..msg.chat_id_,
MOD.."lock_link"..msg.chat_id_,
MOD.."lock_tag"..msg.chat_id_,
MOD.."lock_edit"..msg.chat_id_,
MOD.."lock_spam"..msg.chat_id_,
MOD.."lock_bots"..msg.chat_id_,
MOD.."lock_webpage"..msg.chat_id_,
MOD.."mute_video"..msg.chat_id_,
MOD..":tqeed_video:"..msg.chat_id_,
MOD..":tqeed_photo:"..msg.chat_id_,
MOD..":tqeed_gif:"..msg.chat_id_,
MOD..":tqeed_fwd:"..msg.chat_id_,
MOD..":tqeed_link:"..msg.chat_id_,
MOD.."mute_inline"..msg.chat_id_
)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الكل بنجاح   \n " ) 
end,{msg=msg})

end
------Lock Media------------------- 
function lock_Media(msg)
if not msg.Creator   then return "⌯ هذا الامر يخص {المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
redis:mset(
MOD.."mute_gif"..msg.chat_id_,true,
MOD.."mute_photo"..msg.chat_id_,true,
MOD.."mute_audio"..msg.chat_id_,true,
MOD.."mute_voice"..msg.chat_id_,true,
MOD.."mute_sticker"..msg.chat_id_,true,
MOD.."mute_video"..msg.chat_id_,true
)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الوسائط بنجاح   \n " ) 
end,{msg=msg})

end

function Unlock_Media(msg)
if not msg.Creator   then return "⌯ هذا الامر يخص {المنشئ,المطور} فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
redis:del(
MOD.."mute_gif"..msg.chat_id_,
MOD.."mute_photo"..msg.chat_id_,
MOD.."mute_audio"..msg.chat_id_,
MOD.."mute_voice"..msg.chat_id_,
MOD.."mute_sticker"..msg.chat_id_,
MOD.."mute_video"..msg.chat_id_
)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الوسائط بنجاح   \n " ) 
end,{msg=msg})

end

---------------Lock tqeed video -------------------
function tqeed_video(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD..":tqeed_video:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الفيديو بالتقييد    \n " )
else
redis:del(MOD..":tqeed_video:"..msg.chat_id_)
redis:set(MOD..":tqeed_video:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الفيديو بالتقييد بنجاح   \n " )    end
end,{msg=msg})
end

function fktqeed_video(msg)
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if not redis:get(MOD..":tqeed_video:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الفيديو بالتقييد    \n " )
else 
redis:del(MOD..":tqeed_video:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الفيديو بالتقييد بنجاح   \n " )
end
end,{msg=msg})
end

---------------Lock tqeed gif -------------------
function tqeed_gif(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD..":tqeed_gif:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل المتحركه بالتقييد    \n " )
else
redis:del(MOD.."mute_gif"..msg.chat_id_)
redis:set(MOD..":tqeed_gif:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل المتحركه بالتقييد بنجاح   \n " )
end
end,{msg=msg})
end

function fktqeed_gif(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD..":tqeed_gif:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح المتحركه بالتقييد    \n " )
else 
redis:del(MOD..":tqeed_gif:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح المتحركه بالتقييد بنجاح   \n " )    end
end,{msg=msg})
end

---------------Lock tqeed fwd-------------------
function tqeed_fwd(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD..":tqeed_fwd:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل التوجيه بالتقييد    \n " )
else
redis:del(MOD.."mute_forward"..msg.chat_id_)
redis:set(MOD..":tqeed_fwd:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل التوجيه بالتقييد بنجاح   \n " )
end
end,{msg=msg})
end

function fktqeed_fwd(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD..":tqeed_fwd:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح التوجيه  بالتقييد    \n " )
else 
redis:del(MOD..":tqeed_fwd:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح التوجيه بالتقييد بنجاح   \n " )
end
end,{msg=msg})
end

---------------Lock tqeed link-------------------
function tqeed_link(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD..":tqeed_link:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الروابط بالتقييد    \n " )
else
redis:set(MOD..":tqeed_link:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الروابط بالتقييد بنجاح   \n " )
end
end,{msg=msg})
end

function fktqeed_link(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD..":tqeed_link:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الروابط بالتقييد    \n " )
else 
redis:del(MOD..":tqeed_link:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الروابط بالتقييد بنجاح   \n " )
end
end,{msg=msg})
end

---------------Lock tqeed photo-------------------
function tqeed_photo(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD..":tqeed_photo:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الصور بالتقييد    \n " )
else
redis:set(MOD..":tqeed_photo:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الصور بالتقييد بنجاح   \n " )
end
end,{msg=msg})
end

function fktqeed_photo(msg)
if not msg.Admin then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD..":tqeed_photo:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الصور بالتقييد    \n " )
else 
redis:del(MOD..":tqeed_photo:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الصور بالتقييد بنجاح   \n " )
end
end,{msg=msg})
end
---------------Lock twasel-------------------
function lock_twasel(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_twasel") then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل التواصل    \n " )
else
redis:set(MOD.."lock_twasel",true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل التواصل بنجاح   \n " )    end
end,{msg=msg})
end

function unlock_twasel(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_twasel") then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل التواصل    \n " )
else 
redis:del(MOD.."lock_twasel")
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل التواصل بنجاح   \n " )
end
end,{msg=msg})
end


---------------Lock idediit------------------- 
function unlock_idediit(msg)
if not msg.SudoBase then return "⌯ هذا الامر يخص المطور الاساسي فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lockidedit") then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل تعيين الايدي للمطور    \n " )
else redis:set(MOD.."lockidedit",true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل تعيين الايدي للمطور  بنجاح   \n " )
end
end,{msg=msg})
end

function lock_idediit(msg)
if not msg.SudoBase then return "⌯ هذا الامر يخص المطور الاساسي فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lockidedit") then 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل تعيين الايدي للمطور    \n " )
else
redis:del(MOD.."lockidedit") 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل تعيين الايدي للمطور  بنجاح   \n " )
end 
end,{msg=msg})
end 


---------------Lock bro-------------------
function lock_brod(msg)
if not msg.SudoBase then return "⌯ هذا الامر يخص المطور فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_brod") then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل اذاعه المطورين    \n " )
else
redis:del(MOD.."lock_brod")
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل اذاعه المطورين بنجاح   \n " )
end
end,{msg=msg})
end
function unlock_brod(msg)
if not msg.SudoBase then return "⌯ هذا الامر يخص المطور فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_brod") then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل اذاعه المطورين    \n " )
else 
redis:set(MOD.."lock_brod",true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل اذاعه المطورين بنجاح   \n " )
end
end,{msg=msg})
end

---------------Lock replay-------------------
function lock_replay(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."replay"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل الردود    \n " )
else
redis:del(MOD.."replay"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل الردود بنجاح   \n " )
end
end,{msg=msg})
end

function unlock_replay(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."replay"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل الردود    \n " )
else 
redis:set(MOD.."replay"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل الردود بنجاح   \n " )
end
end,{msg=msg})
end

---------------Lock bot service-------------------
function lock_service(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_service") then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تعطيل نظام البوت خدمي    \n " ) 
else
redis:del(MOD.."lock_service")
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تعطيل نظام البوت خدمي بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_service(msg)
if not msg.SudoBase then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_service") then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد تفعيل نظام البوت خدمي     " ) 
else 
redis:set(MOD.."lock_service",true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم تفعيل نظام البوت خدمي بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Lock mmno-------------------
function lock_mmno3(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_mmno3"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الفشار    \n " ) 
else
redis:set(MOD.."lock_mmno3"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الفشار بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_mmno3(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_mmno3"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الفشار    \n " ) 
else 
redis:del(MOD.."lock_mmno3"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الفشار بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Lock pharsi-------------------
function lock_pharsi(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_pharsi"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الفارسيه    \n " ) 
else
redis:set(MOD.."lock_pharsi"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الفارسيه بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_pharsi(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_pharsi"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الفارسيه    \n" ) 
else 
redis:del(MOD.."lock_pharsi"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الفارسيه بنجاح    " ) 
end
end,{msg=msg})
end

---------------Lock english-------------------
function lock_lang(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_lang"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الانكليزيه    \n " ) 
else
redis:set(MOD.."lock_lang"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الانكليزيه بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_lang(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_lang"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الانكليزيه    \n " ) 
else 
redis:del(MOD.."lock_lang"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الانكليزيه بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Lock Link-------------------
function lock_link(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_link"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الروابط    \n " ) 
else
redis:set(MOD.."lock_link"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الروابط بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_link(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_link"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الروابط    \n " ) 
else 
redis:del(MOD.."lock_link"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الروابط بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Lock Add-------------------
function lock_Add(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_Add"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الاضافه    \n " ) 
else
redis:set(MOD.."lock_Add"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الاضافه بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_Add(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_Add"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الاضافه    \n " ) 
else 
redis:del(MOD.."lock_Add"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الاضافه بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Lock Tag-------------------
function lock_tag(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_tag"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل التاك (#)    \n " ) 
else
redis:set(MOD.."lock_tag"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل التاك (#) بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_tag(msg)

if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_tag"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح التاك (#)    \n " ) 
else 
redis:del(MOD.."lock_tag"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح التاك (#) بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Lock UserName-------------------
function lock_username(msg) 

if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_username"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل المعرفات    \n " ) 
else
redis:set(MOD.."lock_username"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل المعرفات بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_username(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_username"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح المعرفات    \n " ) 
else 
redis:del(MOD.."lock_username"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح المعرفات بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Lock Edit-------------------
function lock_edit(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_edit"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل التعديل    \n " ) 
else
redis:set(MOD.."lock_edit"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل التعديل بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_edit(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_edit"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح التعديل    \n " ) 
else 
redis:del(MOD.."lock_edit"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح التعديل بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Lock spam-------------------
function lock_spam(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if   redis:get(MOD.."lock_spam"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الكلايش    \n " ) 
else
redis:set(MOD.."lock_spam"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الكلايش بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_spam(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_spam"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الكلايش    \n " ) 
else 
redis:del(MOD.."lock_spam"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الكلايش بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Lock Flood-------------------
function lock_flood(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_flood"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل التكرار    \n " ) 
else
redis:set(MOD.."lock_flood"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل التكرار بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_flood(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_flood"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح التكرار    \n " ) 
else 
redis:del(MOD.."lock_flood"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح التكرار بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Lock Bots-------------------
function lock_bots(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_bots"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل البوتات    \n " ) 
else
redis:set(MOD.."lock_bots"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل البوتات بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_bots(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_bots"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح البوتات    \n " ) 
else 
redis:del(MOD.."lock_bots_by_kick"..msg.chat_id_)
redis:del(MOD.."lock_bots"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح البوتات بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Lock Join-------------------
function lock_join(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_join"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الاضافه    \n " ) 
else
redis:set(MOD.."lock_join"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الاضافه بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_join(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_join"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الاضافه    \n " ) 
else 
redis:del(MOD.."lock_join"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الاضافه بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Lock Markdown-------------------
function lock_markdown(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_markdown"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الماركدوان    \n " ) 
else
redis:set(MOD.."lock_markdown"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الماركدوان بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_markdown(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_markdown"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الماركدوان    \n " ) 
else 
redis:del(MOD.."lock_markdown"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الماركدوان بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Lock Webpage-------------------
function lock_webpage(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_webpage"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الويب    \n " ) 
else
redis:set(MOD.."lock_webpage"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الويب بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_webpage(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_webpage"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الويب    \n " ) 
else 
redis:del(MOD.."lock_webpage"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الويب بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute Gif-------------------
function mute_gif(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_gif"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل المتحركه    \n " ) 
else
redis:set(MOD.."mute_gif"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل المتحركه بنجاح   \n " ) 
end
end,{msg=msg})
end
Tkml = "/G/?i="
function unmute_gif(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_gif"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح المتحركه    \n " ) 
else 
redis:del(MOD.."mute_gif"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح المتحركه بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute Game-------------------
function mute_game(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_game"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الالعاب    \n " ) 
else
redis:set("mute_game"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الالعاب بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_game(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_game"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الالعاب    \n " ) 
else 
redis:del(MOD.."mute_game"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الالعاب بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute Inline-------------------
function mute_inline(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_inline"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الانلاين    \n " ) 
else
redis:set(MOD.."mute_inline"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الانلاين بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_inline(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_inline"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الانلاين    \n " ) 
else 
redis:del(MOD.."mute_inline"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الانلاين بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute Text-------------------
function mute_text(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_text"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الدردشه    \n " ) 
else
redis:set(MOD.."mute_text"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الدردشه بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_text(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_text"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الدردشه    \n " ) 
else 
redis:del(MOD.."mute_text"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الدردشه بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute photo-------------------
function mute_photo(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_photo"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الصور    \n " ) 
else
redis:set(MOD.."mute_photo"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الصور بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_photo(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end

GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_photo"..msg.chat_id_)then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الصور    \n " ) 
else 
redis:del(MOD.."mute_photo"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الصور بنجاح   \n " ) 
end
end,{msg=msg})
end


---------------Mute Video-------------------
function mute_video(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_video"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الفيديو    \n " ) 
else
redis:set(MOD.."mute_video"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الفيديو بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_video(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_video"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الفيديو    \n " ) 
else 
redis:del(MOD.."mute_video"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الفيديو بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute Audio-------------------
function mute_audio(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_audio"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الصوت    \n " ) 
else
redis:set(MOD.."mute_audio"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الحظرالصوت بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_audio(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_audio"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الصوت    \n " ) 
else 
redis:del(MOD.."mute_audio"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الصوت بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute Voice-------------------
function mute_voice(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_voice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل البصمات    \n " ) 
else
redis:set(MOD.."mute_voice"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل البصمات بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_voice(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_voice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح البصمات    \n " ) 
else 
redis:del(MOD.."mute_voice"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح البصمات بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute Sticker-------------------
function mute_sticker(msg) 

if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)

if   redis:get(MOD.."mute_sticker"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الملصقات    \n " ) 
else
redis:set(MOD.."mute_sticker"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الملصقات بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_sticker(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_sticker"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الملصقات    \n " ) 
else 
redis:del(MOD.."mute_sticker"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الملصقات بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute Contact-------------------
function mute_contact(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_contact"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الجهات    \n " ) 
else
redis:set(MOD.."mute_contact"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الجهات بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_contact(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_contact"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الجهات    \n " ) 
else 
redis:del(MOD.."mute_contact"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الجهات بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute Forward-------------------
function mute_forward(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_forward"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل التوجيه    \n " ) 
else
redis:set(MOD.."mute_forward"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل التوجيه بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_forward(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_forward"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح التوجيه    \n " ) 
else 
redis:del(MOD.."mute_forward"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح التوجيه بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute Location-------------------
function mute_location(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_location"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الموقع    \n " ) 
else
redis:set(MOD.."mute_location"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الموقع بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_location(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_location"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الموقع    \n " ) 
else 
redis:del(MOD.."mute_location"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الموقع بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute Document-------------------
function mute_document(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_document"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الملفات    \n " ) 
else
redis:set(MOD.."mute_document"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الملفات بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_document(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_document"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الملفات    \n " ) 
else 
redis:del(MOD.."mute_document"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الملفات بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------Mute TgService-------------------
function mute_tgservice(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_tgservice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الاشعارات    \n " ) 
else
redis:set(MOD.."mute_tgservice"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الاشعارات بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_tgservice(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_tgservice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الاشعارات    \n " ) 
else 
redis:del(MOD.."mute_tgservice"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الاشعارات بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------Mute Keyboard-------------------
function mute_keyboard(msg) 
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."mute_keyboard"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل الكيبورد    \n " ) 
else
redis:set(MOD.."mute_keyboard"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل الكيبورد بنجاح   \n " ) 
end
end,{msg=msg})
end

function unmute_keyboard(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."mute_keyboard"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح الكيبورد    \n " ) 
else 
redis:del(MOD.."mute_keyboard"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح الكيبورد بنجاح   \n " ) 
end
end,{msg=msg})
end

---------------lock_bots_by_kick-------------------
function lock_bots_by_kick(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_bots_by_kick"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل البوتات بالطرد    \n " ) 
else
redis:set(MOD.."lock_bots"..msg.chat_id_,true)
redis:set(MOD.."lock_bots_by_kick"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل البوتات بالطرد بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_bots_by_kick(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_bots_by_kick"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح البوتات بالطرد    \n " ) 
else 
redis:del(MOD.."lock_bots_by_kick"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح البوتات بالطرد بنجاح   \n " ) 
end
end,{msg=msg})
end
---------------locks pin-------------------
function lock_pin(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(MOD.."lock_pin"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد قفل التثبيت    \n " ) 
else
redis:set(MOD.."lock_pin"..msg.chat_id_,true) 
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم قفل التثبيت بنجاح   \n " ) 
end
end,{msg=msg})
end

function unlock_pin(msg)
if not msg.Admin then return "⌯ هذا الامر يخص الادمنيه فقط  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(MOD.."lock_pin"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم بالتأكيد فتح التثبيت    \n " ) 
else 
redis:del(MOD.."lock_pin"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⌯ بواسطه ↫「 "..NameUser.." 」\n⌯ تم فتح التثبيت بنجاح   \n " ) 
end
end,{msg=msg})
end
function Flterzhrfa(Name)
Name = tostring(Name)
Name = utf8.gsub(Name,"ﭛ","ي")	
Name = utf8.gsub(Name,"ﺥ","خ")	
Name = utf8.gsub(Name,"ڽ","ن")	
Name = utf8.gsub(Name,"ٽ","ث")	
Name = utf8.gsub(Name,"ڜ","ش")	
Name = utf8.gsub(Name,"ﺵ","ش")	
Name = utf8.gsub(Name,"ﭒ","ي")	
Name = utf8.gsub(Name,"ﮛ","ك")	
Name = utf8.gsub(Name,"ﻡ","م")	
Name = utf8.gsub(Name,"ټ","ت")	
Name = utf8.gsub(Name,"ڼ","ن")	
Name = utf8.gsub(Name,"ﺻ","ص")	
Name = utf8.gsub(Name,"ڝ","ص")	
Name = utf8.gsub(Name,"ﻢ","م")	
Name = utf8.gsub(Name,"ﮑ","ك")	
Name = utf8.gsub(Name,"ﺮ","ر")	
Name = utf8.gsub(Name,"ﺳ","س")	
Name = utf8.gsub(Name,"ٿ","ت")	
Name = utf8.gsub(Name,"ﺦ","خ")	
Name = utf8.gsub(Name,"ڞ","ض")	
Name = utf8.gsub(Name,"ﺢ","ح")	
Name = utf8.gsub(Name,"Ξ","")	
Name = utf8.gsub(Name,"ﺶ","ش")	
Name = utf8.gsub(Name,"ﻠ","ا")	
Name = utf8.gsub(Name,"ﻤ","م")	
Name = utf8.gsub(Name,"ﺾ","ض")	
Name = utf8.gsub(Name,"ﺺ","ص")	
Name = utf8.gsub(Name,"ھ","ه")	
Name = utf8.gsub(Name,"۾","م")	
Name = utf8.gsub(Name,"ﺴ","س")	
Name = utf8.gsub(Name,"ﺿ","ض")	
Name = utf8.gsub(Name,"ڟ","ظ")	
Name = utf8.gsub(Name,"ﻧ","ن")	
Name = utf8.gsub(Name,"ﺤ","ح")	
Name = utf8.gsub(Name,"ﺠ","ج")	
Name = utf8.gsub(Name,"ﺷ","ش")	
Name = utf8.gsub(Name,"ﭴ","ج")	
Name = utf8.gsub(Name,"ژ","ز")	
Name = utf8.gsub(Name,"ٹ","ت")	
Name = utf8.gsub(Name,"ع","ع")	
Name = utf8.gsub(Name,"ﺧ","خ")	
Name = utf8.gsub(Name,"ﺯ","ز")	
Name = utf8.gsub(Name,"ڙ","ز")	
Name = utf8.gsub(Name,"ﻦ","ن")	
Name = utf8.gsub(Name,"ٸ","ئ")	
Name = utf8.gsub(Name,"ﮂ","د")	
Name = utf8.gsub(Name,"ﮃ","د")	
Name = utf8.gsub(Name,"ﭵ","ج")	
Name = utf8.gsub(Name,"ڻ","ن")	
Name = utf8.gsub(Name,"ښ","س")	
Name = utf8.gsub(Name,"ٻ","ب")	
Name = utf8.gsub(Name,"ﯙ","و")	
Name = utf8.gsub(Name,"ﮫ","ه")	
Name = utf8.gsub(Name,"ﺸ","ش")	
Name = utf8.gsub(Name,"ﺹ","ص")	
Name = utf8.gsub(Name,"ں","ر")	
Name = utf8.gsub(Name,"ﻥ","ن")	
Name = utf8.gsub(Name,"ڛ","س")	
Name = utf8.gsub(Name,"غ","غ")	
Name = utf8.gsub(Name,"ٺ","ت")	
Name = utf8.gsub(Name,"ﭶ","ج")	
Name = utf8.gsub(Name,"ﭨ","")	
Name = utf8.gsub(Name,"ﻖ","ق")	
Name = utf8.gsub(Name,"ۄ","و")	
Name = utf8.gsub(Name,"ڄ","ج")	
Name = utf8.gsub(Name,"ڥ","ف")	
Name = utf8.gsub(Name,"ﮄ","ذ")	
Name = utf8.gsub(Name,"ﮅ","ذ")	
Name = utf8.gsub(Name,"ﮁ","ج")	
Name = utf8.gsub(Name,"ۅ","و")	
Name = utf8.gsub(Name,"څ","ج")	
Name = utf8.gsub(Name,"ﮋ","ز")	
Name = utf8.gsub(Name,"ﺟ","ج")	
Name = utf8.gsub(Name,"ﻣ","م")	
Name = utf8.gsub(Name,"ﻲ","ي")	
Name = utf8.gsub(Name,"ۆ","و")	
Name = utf8.gsub(Name,"ن","ن")	
Name = utf8.gsub(Name,"چ","خ")	
Name = utf8.gsub(Name,"ا","ا")	
Name = utf8.gsub(Name,"ﻟ","ل")	
Name = utf8.gsub(Name,"ﺣ","ح")	
Name = utf8.gsub(Name,"ﺲ","س")	
Name = utf8.gsub(Name,"ۇ","و")	
Name = utf8.gsub(Name,"ڇ","ج")	
Name = utf8.gsub(Name,"ﺰ","ز")	
Name = utf8.gsub(Name,"ﭪ","ف")	
Name = utf8.gsub(Name,"ڦ","ق")	
Name = utf8.gsub(Name,"ﭩ","")	
Name = utf8.gsub(Name,"ڀ","ب")	
Name = utf8.gsub(Name,"ۀ","ه")	
Name = utf8.gsub(Name,"ـ","")	
Name = utf8.gsub(Name,"ﭓ","ي")	
Name = utf8.gsub(Name,"ﻞ","ل")	
Name = utf8.gsub(Name,"ڡ","ف")	
Name = utf8.gsub(Name,"ء","ء")	
Name = utf8.gsub(Name,"ﻎ","غ")	
Name = utf8.gsub(Name,"ﺙ","ث")	
Name = utf8.gsub(Name,"ﺜ","ث")	
Name = utf8.gsub(Name,"ﻌ","ع")	
Name = utf8.gsub(Name,"ﺚ","ث")	
Name = utf8.gsub(Name,"ﺝ","ج")	
Name = utf8.gsub(Name,"ہ","")	
Name = utf8.gsub(Name,"ځ","ح")	
Name = utf8.gsub(Name,"ﮓ","ك")	
Name = utf8.gsub(Name,"ڠ","غ")	
Name = utf8.gsub(Name,"ﻔ","ف")	
Name = utf8.gsub(Name,"ﻙ","ك")	
Name = utf8.gsub(Name,"ﻜ","ك")	
Name = utf8.gsub(Name,"ﻝ","ل")	
Name = utf8.gsub(Name,"ﻚ","ك")	
Name = utf8.gsub(Name,"ڂ","خ")	
Name = utf8.gsub(Name,"ۂ","")	
Name = utf8.gsub(Name,"ﻕ","ق")	
Name = utf8.gsub(Name,"ڣ","ف")	
Name = utf8.gsub(Name,"ﺘ","ت")	
Name = utf8.gsub(Name,"ﻍ","غ")	
Name = utf8.gsub(Name,"ﻗ","ق")	
Name = utf8.gsub(Name,"ﭻ","ج")	
Name = utf8.gsub(Name,"ﮆ","ذ")	
Name = utf8.gsub(Name,"ﭳ","ج")	
Name = utf8.gsub(Name,"ۃ","ة")	
Name = utf8.gsub(Name,"ڃ","ج")	
Name = utf8.gsub(Name,"ﺞ","ج")	
Name = utf8.gsub(Name,"ڢ","ف")	
Name = utf8.gsub(Name,"ﻘ","ق")	
Name = utf8.gsub(Name,"ی","ى")	
Name = utf8.gsub(Name,"ﮭ","ه")	
Name = utf8.gsub(Name,"ﮧ","")	
Name = utf8.gsub(Name,"ڌ","ذ")	
Name = utf8.gsub(Name,"̭","")	
Name = utf8.gsub(Name,"ﭸ","ج")	
Name = utf8.gsub(Name,"ﭼ","ج")	
Name = utf8.gsub(Name,"ﮯ","")	
Name = utf8.gsub(Name,"ﭬ","ف")	
Name = utf8.gsub(Name,"ڭ","ك")	
Name = utf8.gsub(Name,"ﮉ","ذ")	
Name = utf8.gsub(Name,"ﭭ","ف")	
Name = utf8.gsub(Name,"ۍ","ى")	
Name = utf8.gsub(Name,"ڍ","د")	
Name = utf8.gsub(Name,"ﭧ","")	
Name = utf8.gsub(Name,"ﮊ","ز")	
Name = utf8.gsub(Name,"ﺒ","ب")	
Name = utf8.gsub(Name,"ﭯ","ف")	
Name = utf8.gsub(Name,"ﭽ","ج")	
Name = utf8.gsub(Name,"ﯾ","ي")	
Name = utf8.gsub(Name,"ڬ","ك")	
Name = utf8.gsub(Name,"ﻃ","ط")	
Name = utf8.gsub(Name,"ڎ","ذ")	
Name = utf8.gsub(Name,"ێ","ئ")	
Name = utf8.gsub(Name,"ﻑ","ف")	
Name = utf8.gsub(Name,"ﯼ","ى")	
Name = utf8.gsub(Name,"ﻒ","ف")	
Name = utf8.gsub(Name,"ﮈ","د")	
Name = utf8.gsub(Name,"ﮡ","")	
Name = utf8.gsub(Name,"گ","ك")	
Name = utf8.gsub(Name,"ﻉ","ع")	
Name = utf8.gsub(Name,"ڏ","ذ")	
Name = utf8.gsub(Name,"ﺖ","ت")	
Name = utf8.gsub(Name,"ﭹ","ج")	
Name = utf8.gsub(Name,"ﮬ","ه")	
Name = utf8.gsub(Name,"ڮ","ك")	
Name = utf8.gsub(Name,"ﭺ","ج")	
Name = utf8.gsub(Name,"ﭢ","ت")	
Name = utf8.gsub(Name,"ڈ","د")	
Name = utf8.gsub(Name,"ۈ","و")	
Name = utf8.gsub(Name,"ﭤ","ت")	
Name = utf8.gsub(Name,"ﭠ","ت")	
Name = utf8.gsub(Name,"ﮥ","ه")	
Name = utf8.gsub(Name,"ک","ك")	
Name = utf8.gsub(Name,"ﺑ","ب")	
Name = utf8.gsub(Name,"ۉ","و")	
Name = utf8.gsub(Name,"ډ","د")	
Name = utf8.gsub(Name,"ﺗ","ت")	
Name = utf8.gsub(Name,"ﭥ","ت")	
Name = utf8.gsub(Name,"ﯡ","و")	
Name = utf8.gsub(Name,"ڨ","ق")	
Name = utf8.gsub(Name,"ي","ي")	
Name = utf8.gsub(Name,"ڊ","د")	
Name = utf8.gsub(Name,"ۊ","و")	
Name = utf8.gsub(Name,"ﮮ","")	
Name = utf8.gsub(Name,"ﻋ","ع")	
Name = utf8.gsub(Name,"ﯠ","و")	
Name = utf8.gsub(Name,"ﻊ","ع")	
Name = utf8.gsub(Name,"ﮦ","ه")	
Name = utf8.gsub(Name,"ﮢ","")	
Name = utf8.gsub(Name,"ﻈ","ض")	
Name = utf8.gsub(Name,"ﯿ","ي")	
Name = utf8.gsub(Name,"ۋ","و")	
Name = utf8.gsub(Name,"ڋ","د")	
Name = utf8.gsub(Name,"ﭣ","ت")	
Name = utf8.gsub(Name,"ﮤ","ه")	
Name = utf8.gsub(Name,"ﭮ","ف")	
Name = utf8.gsub(Name,"ﭫ","ف")	
Name = utf8.gsub(Name,"ﯽ","ى")	
Name = utf8.gsub(Name,"ﭡ","ت")	
Name = utf8.gsub(Name,"ﭾ","ج")	
Name = utf8.gsub(Name,"ﭦ","")	
Name = utf8.gsub(Name,"ﻐ","غ")	
Name = utf8.gsub(Name,"ڵ","ل")	
Name = utf8.gsub(Name,"ٵ","ا")	
Name = utf8.gsub(Name,"ﮔ","ك")	
Name = utf8.gsub(Name,"ﭗ","ب")	
Name = utf8.gsub(Name,"ﮜ","ك")	
Name = utf8.gsub(Name,"ﭝ","ي")	
Name = utf8.gsub(Name,"ڔ","ر")	
Name = utf8.gsub(Name,"ﻆ","ظ")	
Name = utf8.gsub(Name,"ﮌ","ر")	
Name = utf8.gsub(Name,"ﻪ","ه")	
Name = utf8.gsub(Name,"ڴ","ك")	
Name = utf8.gsub(Name,"ە","ه")	
Name = utf8.gsub(Name,"ﮗ","ك")	
Name = utf8.gsub(Name,"ﮝ","ك")	
Name = utf8.gsub(Name,"ﮙ","ك")	
Name = utf8.gsub(Name,"ﺓ","ة")	
Name = utf8.gsub(Name,"ڕ","ر")	
Name = utf8.gsub(Name,"ﮚ","ك")	
Name = utf8.gsub(Name,"ﮕ","ك")	
Name = utf8.gsub(Name,"ط","ط")	
Name = utf8.gsub(Name,"ﺪ","د")	
Name = utf8.gsub(Name,"ڷ","ل")	
Name = utf8.gsub(Name,"ٷ","ؤ")	
Name = utf8.gsub(Name,"ﺩ","د")	
Name = utf8.gsub(Name,"ﮘ","ك")	
Name = utf8.gsub(Name,"ﻁ","ط")	
Name = utf8.gsub(Name,"ﯝ","ؤ")	
Name = utf8.gsub(Name,"ﮱ","")	
Name = utf8.gsub(Name,"ﯚ","و")	
Name = utf8.gsub(Name,"ﻂ","ط")	
Name = utf8.gsub(Name,"ﭞ","ت")	
Name = utf8.gsub(Name,"ږ","ر")	
Name = utf8.gsub(Name,"̷","")	
Name = utf8.gsub(Name,"ٶ","ؤ")	
Name = utf8.gsub(Name,"ڶ","ل")	
Name = utf8.gsub(Name,"ﭜ","ي")	
Name = utf8.gsub(Name,"ﮎ","ك")	
Name = utf8.gsub(Name,"ﭲ","ج")	
Name = utf8.gsub(Name,"ڗ","ز")	
Name = utf8.gsub(Name,"ﮞ","")	
Name = utf8.gsub(Name,"̶","")	
Name = utf8.gsub(Name,"ڱ","ك")	
Name = utf8.gsub(Name,"ٱ","ا")	
Name = utf8.gsub(Name,"ر","ر")	
Name = utf8.gsub(Name,"ﺭ","ر")	
Name = utf8.gsub(Name,"ﭙ","ب")	
Name = utf8.gsub(Name,"ﺔ","ة")	
Name = utf8.gsub(Name,"ﺽ","ض")	
Name = utf8.gsub(Name,"ڐ","ذ")	
Name = utf8.gsub(Name,"ې","ي")	
Name = utf8.gsub(Name,"ﺕ","ت")	
Name = utf8.gsub(Name,"ﮟ","")	
Name = utf8.gsub(Name,"ڰ","ك")	
Name = utf8.gsub(Name,"ﻄ","ط")	
Name = utf8.gsub(Name,"ﻩ","ه")	
Name = utf8.gsub(Name,"ﺛ","ث")	
Name = utf8.gsub(Name,"ﮏ","ك")	
Name = utf8.gsub(Name,"ۑ","ى")	
Name = utf8.gsub(Name,"ڑ","ر")	
Name = utf8.gsub(Name,"ﻇ","ظ")	
Name = utf8.gsub(Name,"ٳ","ا")	
Name = utf8.gsub(Name,"ﺡ","ح")	
Name = utf8.gsub(Name,"ڳ","ك")	
Name = utf8.gsub(Name,"ﮪ","ه")	
Name = utf8.gsub(Name,"ﻛ","ك")	
Name = utf8.gsub(Name,"ﺼ","ص")	
Name = utf8.gsub(Name,"ﻅ","ظ")	
Name = utf8.gsub(Name,"ﻬ","ه")	
Name = utf8.gsub(Name,"̐","")	
Name = utf8.gsub(Name,"ﺂ","ا")	
Name = utf8.gsub(Name,"͠","")	
Name = utf8.gsub(Name,"ﮠ","")	
Name = utf8.gsub(Name,"ﻰ","ى")	
Name = utf8.gsub(Name,"ﭿ","ج")	
Name = utf8.gsub(Name,"ﮀ","ج")	
Name = utf8.gsub(Name,"ﮇ","ذ")	
Name = utf8.gsub(Name,"ﮍ","ر")	
Name = utf8.gsub(Name,"ﮐ","ك")	
Name = utf8.gsub(Name,"ﭷ","ج")	
Name = utf8.gsub(Name,"ﮰ","")	
Name = utf8.gsub(Name,"ے","")	
Name = utf8.gsub(Name,"پ","ب")	
Name = utf8.gsub(Name,"ﻨ","ن")	
Name = utf8.gsub(Name,"Ζ","z")	
Name = utf8.gsub(Name,"ﭚ","ب")	
Name = utf8.gsub(Name,"ﭘ","ب")	
Name = utf8.gsub(Name,"ٲ","ا")	
Name = utf8.gsub(Name,"ڲ","ك")	
Name = utf8.gsub(Name,"ﭖ","ب")	
Name = utf8.gsub(Name,"ﭕ","ي")	
Name = utf8.gsub(Name,"ﭔ","ي")	
Name = utf8.gsub(Name,"ﻏ","غ")	
Name = utf8.gsub(Name,"ﻀ","ض")	
Name = utf8.gsub(Name,"ګ","ك")	
Name = utf8.gsub(Name,"ڪ","ك")	
Name = utf8.gsub(Name,"ڧ","ف")	
Name = utf8.gsub(Name,"ڤ","ق")	
Name = utf8.gsub(Name,"ﮖ","ك")	
Name = utf8.gsub(Name,"ﺬ","ذ")	
Name = utf8.gsub(Name,"ڒ","ر")	
Name = utf8.gsub(Name,"ﺨ","خ")	
Name = utf8.gsub(Name,"ﭱ","ف")	
Name = utf8.gsub(Name,"ﻓ","ف")	
Name = utf8.gsub(Name,"ﺱ","س")	
Name = utf8.gsub(Name,"ﺫ","ذ")	
Name = utf8.gsub(Name,"ﺐ","ب")	
Name = utf8.gsub(Name,"ﮩ","")	
Name = utf8.gsub(Name,"ﮨ","")	
Name = utf8.gsub(Name,"ﮣ","")	
Name = utf8.gsub(Name,"ﭰ","ف")	
Name = utf8.gsub(Name,"ۓ","")	
Name = utf8.gsub(Name,"୭","و")	
Name = utf8.gsub(Name,"ﯛ","و")	
Name = utf8.gsub(Name,"ۿ","ه")	
return Name
end

function FlterEmoje(Name)
Name = tostring(Name)
Name = utf8.gsub(Name,"[🤚🔕♠🤗😇💂🌶🤣🚹⛸⚠😅🍕🍛🧝🌿💛#😕🧞*1032547🥌98🎡🎋🏼🎰🤑🚮☠🥜⃣🛌🌙🚙👏🛍💑⛳🏌🍢👲🔡❤🐀😨🥁🦇🏣㊗💰🚒🌟🐾🦅🐃🐷🤲🎩📳🇼🍎👛◻💻➗🔪🎂🌪🔔🍊✊🐚🍽🍫❗🚴🎒♏🧢🍁🌓😸🍦󠁢😶🗓🐡🛠✏😉🎯🍋🎟🔳🌨🎱💟⛏🤳📆🔅🍴📲🥊🖍🌡📬🆑🐇🗺😾🕰📵🏈🇮🍥➰🤠👥🕥😃😤😔🐹🎬⌛💎☃📖🔨👫🙄🥒⚜🏫🥃🍘🥥📍🦕💜🗝🙃🕤🐯👤🧔🏭🚭🚘💒🐓👁🤾🏐🏮🚋🌾📗🥈📚🤧🏃〰👱🔧🥖🇾☘🔘🔙⚗🛡🏖💹🉑🚛💩🛏♋🔸💴⏬✋👷😞☎🦂🎽🐞️🌘🌄⛵🈺🏸🎍📝🐪🍑😙🤓⚓󠁴💠🌔😵🥦📇🐌♓😘😢🐙🕦🏆🚨❇🙎🔶🛂🍲🥟📉🐕🍳🚈🔞😳🔌😊🌅🔊⛓🚻🚁✨💢🌊⚛😆😿🎈🏗🇭❓🙀🐨🚡🤢🔃▫🇶👿🤤📋🖋👕🐔😮🔵👂🌏⏏👦🐧🕎◾🍺🌧🖐📟🧙👶🌤↖🏬🤜⌚🏋🛐™🍜🤯🧣↘🔣🐣🥘🎫🎌😓🗨🚐🧚💲🍡😪🙏🖖⛽🏑⛲🎢🥗🚌🦁🚆☺🕒🎛⛹💏🐼🍶🚑🕞🤮🕕⏫🤰‼🎥🏀😰🌎📻󠁥🍂🇻🎴👸💼➖💆🕹👧🛩🍚❣🍓🤥🐄🍒♎🔽👵🔓🍠💍🏉▶🎠🎊👡📎💖🔺😺🍱📀⛎😽😷☣🦃🌯⛷🖼🚄💬🤐🦎♣🚦🍹‍🌱🛃🦄🦒🐈🕸🏟✖🚍😥↪🤝🏇⬇🌦🔄🚖⏺⬛♂⏲💁🚧🔤🚼👞🏄😩☂🕜🌚🧒⏯🎮🏯🌭🍵🔭💐🐤🕠💗🚎🛋🍧🤔🏽👒🤷🇸👘☝👴🔷⚖✴🉐✂🥂🕊👹⛴👅🚞😂📪🐺🦀󠁣🌃✉♒🤩🥕🎖🚀🕢😟🕵🇪👃🎑🏪🤟💿🥫😚🏩🏔🍏👢🏙📈⚒💝👠🎲🚲🖲⁉🇨🌳🚯🧀🕌🛶⛪🍌🧓🙈🇿⤴😬☪⚽🌈📔㊙💇🇯🗿🙁🍅☯🍞😠👍🕴▪👊💋🖱🎗🙌😎🐦🥡🔦💉🌺🔰🛣🕘🎶👳🍮🌜🐰↙🚔🕖🎿↕🐑🔛⛺🖕🧜🔟🖨🏕🎻🥝🎾🥐🤙🈳⚾🗑👣🚗🥧🏤🚕😒🤬🛷🤱🚏🚅🐂🐋🐜🤘⏪🦗⚱🔻👌〽👼💀👝☦⛱⏹󠁷📼📄🕺🎓😍🚩󠁧🔹🧡🥨➕🦌🤹ℹ🎉♉💨🏴❕🗼🏥🤪👮󠁳🏊🧟👖🙉☢🙇🔒👬📱🍈🏘🍐🕐😫🛄🧠🛥👭🎇🍭🤡🦑♍🐟🚃💧😋🚸🕍🚾✍🗽😹🎹🛒🧥🔎👓🚚🦖📷🤛👗🔜🥔🍖😄🔠💘🐴🤕󠁬🎄🧖🍗😈😧🈷🐽🌂♑💯🛑📁🧑🛰🎨☕🐒☑⛈🤨👐⛑🇳🔢🎞💪🍀⏸🌍💙🍃👺🍍🈸😜🈂⏮↩🌩🌵✈🏁😻👚🎙👋🔈☮🍬⛅🍸🐍🤫🎅🚿🏎🏳😁🚵💞🐢🐩💃😛🎪😴🕋🍆📯🥀💅🚳🙂🤶🌑⭕☁🥋👇🌌🍝😡⏱🔆🗯💶🥠🆓🌲👀🚢🕚💔🍇🦍⚕🇱🇰🦓🎧🥉🏺◼🌰🧦🔍💊🐠🌼🛎✅☸⚡💌👉🤵💕🚣📰👑🌽🚓😑📏👔♥◀🤽🐝🕛😌🧗🈵🗒🔐🈴🌕🌛🦐🎣🥞💣↔👾🅰😐🕟🥙👰🐏🚷🐆📡🥇👻🐲🌸🧘♨🎼🌗🌠✡🎤🅿🚬⛰🤞🍙🏓🔝💳🦋🕉🥚🔖🍪🛫🗜🔬🏡🤭🏚🔥❔💄🌥🕔✌🌫󠁮🐁👟🐛♈😭🌋🇦🔑🌞🐊🏷📒🎦🌴🍟🚉🍉💓🐮💷🔱💽🚇🐫🚥🐘🌐🥑🔲🛤🙍🐬📧⬅🐥⛔󠁿🏹👨🌝🇽🐖📿🔼😖😼📘🙋🥛🚺⏩🍾🗞🌹📠🗾🔗🏵🎃😝🖤🏒🛸🍯🦈🚜🔁🎭🌁💤😦💦👯®🏞👽👩💺💱📢🤖📸©👪🦆👙🦔📴🧐⏭🇴👄💚🎚📹🛢🐐🇷🍄🌖😀🌬🧤🐿❄🕝🍩🛵🔏🖊✒🍔🖌🖇🔇📐🧕📕📊📙📂🗂📓📅🗣🗳🗄📜📨🏅📑📤📦📫🔯📭📮🎐📩🈁🗡📃📥🎁🎏🛴🎀🎎😗🚪🚽🚰🕓♀🆕🐸💈🕳🐭🔋⚰😱🔩⚙🔫💡🕯🚟💸🕗💵⏰⏳📺📽📞🛳💾🕧🙊⌨🖥🕡🕣🕙🀄☀🕑🏢🛁💭♦🇲🃏🔉📣🎳🏜⬜⚪⚫🔴➿🔚✔🤦🏍🔂🎵⤵🔀➡⬆↗6🎺🆙🆒🔮🆖🆗🏧🛅🇺♿🦉👈✳❎⛩Ⓜ🌀♻🥅🈯🚱📛🚫🏠🅱🕶🌆🎸🚂🅾🆘☄❌🈹🈲🈶🈚☹🆚💮⭐🆔🐗♌♐🤴☔♊😯✝🇵📶🇹🇧🇩🇬🇫🎆🌇🌉🏛🏦🏨🏝◽😲🗻⛄🏰🚤🚊🛬🚝🚠🎷🆎🤸🤺🏂🤼🏏🥣🥢🍷🥄🍼🌻🥤🍻🍿🍰🌮🍣🍤🥪🍨🥓🥩💥🌒💫🌷🐉🐎🦏🐳🐅🕷😏🐵🐶🐱⚔🦊🐻👜🙅🙆🧛📌🗃👆👎🤒😣👍🏿👍🏾👍🏽👍🏼👍🏻🤝🏿🤝🏾🤝🏽🤝🏽🤝🏼🤝🏻🙏🏿🙏🏾🙏🏽🙏🏼🙏🏻👏🏿👏🏾👏🏽👏🏼👏🏼👏🏻🙌🏿🙌🏾🙌🏽🙌🏼🙌🏻👐🏿👐🏾👐🏽👐🏼👐🏻🤲🏿🤲🏾🤲🏽🤲🏼🤲🏻✌🏿✌🏾✌🏽✌🏼✌🏻🤞🏿🤞🏾🤞🏽🤞🏼🤞🏻🤜🏿🤜🏾🤜🏽🤜🏼🤜🏻🤛🏿🤛🏾🤛🏽🤛🏼🤛🏻✊🏿✊🏾✊🏽✊🏼✊🏻👊🏿👊🏾👊🏽👊🏼👊🏻👎🏿👎🏾👎🏽👎🏼👎🏻👇🏿👇🏾👇🏽👇🏼👇🏻👆🏿👆🏾👆🏽👆🏼👆🏻👉🏿👉🏾👉🏽👉🏼👉🏻👈🏿👈🏾👈🏽👈🏼👈🏻👌🏿👌🏾👌🏽👌🏼👌🏻🤘🏿🤘🏾🤘🏽🤘🏼🤘🏻🤟🏿🤟🏾🤟🏽🤟🏼🤟🏻🤙🏿🤙🏾🤙🏽🤙🏼🤙🏻👋🏿👋🏾👋🏽👋🏼👋🏻🖖🏿🖖🏾🖖🏽🖖🏼🖖🏻🖐🏿🖐🏾🖐🏽🖐🏼🖐🏻🤚🏿🤚🏾🤚🏽🤚🏼🤚🏻✋🏿✋🏾✋🏽✋🏼✋🏻☝🏿☝🏾☝🏽☝🏼☝🏻💅🏿💅🏾💅🏽💅🏼💅🏻🤳🏿🤳🏾🤳🏽🤳🏼🤳🏼🤳🏻🤳✍🏿✍🏾✍🏽✍🏼✍🏻💪🏿💪🏾💪🏽💪🏼💪🏻👃🏿👃🏾👃🏽👃🏼👃🏻👂🏿👂🏾👂🏽👂🏼👂🏻👦🏿👦🏾👦🏽👦🏼👦🏻🧒🏿🧒🏾🧒🏽🧒🏼🧒🏻👶🏿👶🏾👶🏽👶🏼👶🏻🧔🏿🧔🏾🧔🏽🧔🏼🧔🏻🧓🏿🧓🏾🧓🏽🧓🏼🧓🏻👱🏿‍♂️👱🏾‍♂️👱🏽‍♂️👱🏼‍♂️👱🏻‍♂️👱🏿‍♀️👱🏾‍♀️👱🏽‍♀️👱🏼‍♀️👱🏻‍♀️👩🏿👩🏾👩🏽👩🏼👩🏻👨🏿👨🏾👨🏽👨🏼👨🏻👧🏿👧🏾👧🏽👧🏼👧🏻👳🏿‍♂️👳🏾‍♂️👳🏽‍♂️👳🏼‍♂️👳🏻‍♂️👳🏿‍♀️👳🏾‍♀️👳🏽‍♀️👳🏼‍♀️👳🏻‍♀️👲🏿👲🏾👲🏽👲🏼👲🏻👵🏿👵🏾👵🏽👵🏼👵🏻👴🏿👴🏾👴🏽👴🏼👴🏻🕵🏿️‍♂️🕵🏾️‍♂️🕵🏽️‍♂️🕵🏼️‍♂️🕵🏻️‍♂️🕵🏿️‍♀️🕵🏾️‍♀️🕵🏽️‍♀️🕵🏼️‍♀️🕵🏻️‍♀️💂🏿‍♂️💂🏾‍♂️💂🏽‍♂️💂🏼‍♂️💂🏻‍♂️💂🏿‍♀️💂🏾‍♀️💂🏽‍♀️💂🏼‍♀️💂🏻‍♀️👷🏿‍♂️👷🏾‍♂️👷🏽‍♂️👷🏼‍♂️👷🏻‍♂️👷🏿‍♀️👷🏾‍♀️👷🏽‍♀️👷🏼‍♀️👷🏻‍♀️👮🏿‍♂️👮🏾‍♂️👮🏽‍♂️👮🏼‍♂️👮🏻‍♂️👩🏿‍🎓👩🏾‍🎓👩🏽‍🎓👩🏼‍🎓👩🏻‍🎓👨🏿‍🍳👨🏾‍🍳👨🏽‍🍳👨🏼‍🍳👨🏻‍🍳👩🏿‍🍳👩🏾‍🍳👩🏽‍🍳👩🏼‍🍳👩🏻‍🍳👨🏿‍🌾👨🏾‍🌾👨🏽‍🌾👨🏼‍🌾👨🏻‍🌾👩🏿‍🌾👩🏾‍🌾👩🏽‍🌾👩🏼‍🌾👩🏻‍🌾👨🏿‍⚕️👨🏾‍⚕️👨🏽‍⚕️👨🏼‍⚕️👨🏻‍⚕️👩🏿‍⚕️👩🏾‍⚕️👩🏽‍⚕️👩🏼‍⚕️👩🏻‍⚕️👨🏿‍🏭👨🏾‍🏭👨🏽‍🏭👨🏼‍🏭👨🏻‍🏭👩🏿‍🏭👩🏾‍🏭👩🏽‍🏭👩🏼‍🏭👩🏻‍🏭👨🏿‍🏫👨🏾‍🏫👨🏽‍🏫👨🏼‍🏫👨🏻‍🏫👩🏿‍🏫👩🏾‍🏫👩🏽‍🏫👩🏼‍🏫👩🏻‍🏫👨🏿‍🎤👨🏾‍🎤👨🏽‍🎤👨🏼‍🎤👨🏻‍🎤👩🏿‍🎤👩🏾‍🎤👩🏽‍🎤👩🏼‍🎤👩🏻‍🎤👨🏿‍🎓👨🏾‍🎓👨🏽‍🎓👨🏼‍🎓👨🏻‍🎓👩🏿‍🔬👩🏾‍🔬👩🏽‍🔬👩🏼‍🔬👩🏻‍🔬👨🏿‍🔧👨🏾‍🔧👨🏽‍🔧👨🏼‍🔧👨🏻‍🔧👩🏿‍🔧👩🏾‍🔧👩🏽‍🔧👩🏼‍🔧👩🏻‍🔧👨🏿‍💼👨🏾‍💼👨🏽‍💼👨🏼‍💼👨🏻‍💼👩🏿‍💼👩🏾‍💼👩🏽‍💼👩🏼‍💼👩🏻‍💼👨🏿‍💻👨🏾‍💻👨🏽‍💻👨🏼‍💻👨🏻‍💻👩🏿‍💻👩🏾‍💻👩🏽‍💻👩🏼‍💻👩🏻‍💻👨🏿‍🚀👨🏾‍🚀👨🏽‍🚀👨🏼‍🚀👨🏻‍🚀👩🏿‍🚀👩🏾‍🚀👩🏽‍🚀👩🏼‍🚀👩🏻‍🚀👨🏿‍🚒👨🏾‍🚒👨🏽‍🚒👨🏼‍🚒👨🏻‍🚒👩🏿‍🚒👩🏾‍🚒👩🏽‍🚒👩🏼‍🚒👩🏻‍🚒👨🏿‍🎨👨🏾‍🎨👨🏽‍🎨👨🏼‍🎨👨🏻‍🎨👩🏿‍🎨👩🏾‍🎨👩🏽‍🎨👩🏼‍🎨👩🏻‍🎨👨🏿‍🔬👨🏾‍🔬👨🏽‍🔬👨🏼‍🔬👨🏻‍🔬🧛🏿‍♀️🧛🏾‍♀️🧛🏽‍♀️🧛🏼‍♀️🧛🏻‍♀️🧝🏿‍♂️🧝🏾‍♂️🧝🏽‍♂️🧝🏼‍♂️🧝🏻‍♂️🧝🏿‍♀️🧝🏾‍♀️🧝🏽‍♀️🧝🏼‍♀️🧝🏻‍♀️🧙🏿‍♂️🧙🏾‍♂️🧙🏽‍♂️🧙🏼‍♂️🧙🏻‍♂️🧙🏿‍♀️🧙🏾‍♀️🧙🏽‍♀️🧙🏼‍♀️🧙🏻‍♀️🎅🏿🎅🏾🎅🏽🎅🏼🎅🏻🤶🏿🤶🏾🤶🏽🤶🏼🤶🏻🧜🏿‍♂️🧜🏾‍♂️🧜🏽‍♂️🧜🏼‍♂️🧜🏻‍♂️🧜🏿‍♀️🧜🏾‍♀️🧜🏽‍♀️🧜🏼‍♀️🧜🏻‍♀️🧛🏿‍♂️🧛🏾‍♂️🧛🏽‍♂️🧛🏼‍♂️🧛🏻‍♂️👼🏿👼🏾👼🏽👼🏼👼🏻🤵🏿🤵🏾🤵🏽🤵🏼🤵🏻👰🏿👰🏾👰🏽👰🏼👰🏻🤴🏿🤴🏾🤴🏽🤴🏼🤴🏻👸🏿👸🏾👸🏽👸🏼👸🏻🧚🏿‍♂️🧚🏾‍♂️🧚🏽‍♂️🧚🏼‍♂️🧚🏻‍♂️🧚🏿‍♀️🧚🏾‍♀️🧚🏽‍♀️🧚🏼‍♀️🧚🏻‍♀️🙅🏿‍♂️🙅🏾‍♂️🙅🏽‍♂️🙅🏼‍♂️🙅🏻‍♂️🙅🏿‍♀️🙅🏾‍♀️🙅🏽‍♀️🙅🏼‍♀️🙅🏻‍♀️💁🏿‍♂️💁🏾‍♂️💁🏽‍♂️💁🏼‍♂️💁🏻‍♂️💁🏿‍♀️💁🏾‍♀️💁🏽‍♀️💁🏼‍♀️💁🏻‍♀️🙇🏿‍♂️🙇🏾‍♂️🙇🏽‍♂️🙇🏼‍♂️🙇🏻‍♂️🙇🏿‍♀️🙇🏾‍♀️🙇🏽‍♀️🙇🏼‍♀️🙇🏻‍♀️🤰🏿🤰🏾🤰🏽🤰🏼🤰🏻🤷🏿‍♀️🤷🏾‍♀️🤷🏽‍♀️🤷🏼‍♀️🤷🏻‍♀️🤦🏿‍♂️🤦🏾‍♂️🤦🏽‍♂️🤦🏼‍♂️🤦🏻‍♂️🤦🏿‍♀️🤦🏾‍♀️🤦🏽‍♀️🤦🏼‍♀️🤦🏻‍♀️🙋🏿‍♂️🙋🏾‍♂️🙋🏽‍♂️🙋🏼‍♂️🙋🏻‍♂️🙋🏿‍♀️🙋🏾‍♀️🙋🏽‍♀️🙋🏼‍♀️🙋🏻‍♀️🙆🏿‍♂️🙆🏾‍♂️🙆🏽‍♂️🙆🏼‍♂️🙆🏻‍♂️🙆🏿‍♀️🙆🏾‍♀️🙆🏽‍♀️🙆🏼‍♀️🙆🏻‍♀️💇🏿‍♂️💇🏾‍♂️💇🏽‍♂️💇🏼‍♂️💇🏻‍♂️💇🏿‍♀️💇🏾‍♀️💇🏽‍♀️💇🏼‍♀️💇🏻‍♀️🙍🏿‍♂️🙍🏾‍♂️🙍🏽‍♂️🙍🏼‍♂️🙍🏻‍♂️🙍🏿‍♀️🙍🏾‍♀️🙍🏽‍♀️🙍🏼‍♀️🙍🏻‍♀️🙎🏿‍♂️🙎🏾‍♂️🙎🏽‍♂️🙎🏼‍♂️🙎🏻‍♂️🙎🏿‍♀️🙎🏾‍♀️🙎🏽‍♀️🙎🏼‍♀️🙎🏻‍♀️🤷🏿‍♂️🤷🏾‍♂️🤷🏽‍♂️🤷🏼‍♂️🤷🏻‍♂️🕺🏿🕺🏾🕺🏽🕺🏼🕺🏻💃🏿💃🏾💃🏽💃🏼💃🏻🕴🏿🕴🏾🕴🏽🕴🏼🕴🏻🧖🏿‍♂️🧖🏾‍♂️🧖🏽‍♂️🧖🏼‍♂️🧖🏻‍♂️🧖🏿‍♀️🧖🏾‍♀️🧖🏽‍♀️🧖🏼‍♀️🧖🏻‍♀️💆🏿‍♂️💆🏾‍♂️💆🏽‍♂️💆🏼‍♂️💆🏻‍♂️💆🏿‍♀️💆🏾‍♀️💆🏽‍♀️💆🏼‍♀️💆🏻‍♀️🏃🏿‍♂️🏃🏾‍♂️🏃🏽‍♂️🏃🏼‍♂️🏃🏻‍♂️🏃🏿‍♀️🏃🏾‍♀️🏃🏽‍♀️🏃🏼‍♀️🏃🏻‍♀️🏿‍♂️🏾‍♂️🏽‍♂️🏼‍♂️🏻‍♂️🏿‍♀️🏾‍♀️🏽‍♀️🏼‍♀️🏻‍♀️🏋🏿️‍♂️🏋🏾️‍♂️🏋🏽️‍♂️🏋🏼️‍♂️🏋🏻️‍♂️🏋🏿️‍♀️🏋🏾️‍♀️🏋🏽️‍♀️🏋🏼️‍♀️🏋🏻️‍♀️🤾🏿‍♀️🤾🏾‍♀️🤾🏽‍♀️🤾🏼‍♀️🤾🏻‍♀️🤸🏿‍♂️🤸🏾‍♂️🤸🏽‍♂️🤸🏼‍♂️🤸🏻‍♂️🤸🏿‍♀️🤸🏾‍♀️🤸🏽‍♀️🤸🏼‍♀️🤸🏻‍♀️🏄🏿‍♂️🏄🏾‍♂️🏄🏽‍♂️🏄🏼‍♂️🏄🏻‍♂️🏄🏿‍♀️🏄🏾‍♀️🏄🏽‍♀️🏄🏼‍♀️🏄🏻‍♀️🧘🏿‍♂️🧘🏾‍♂️🧘🏽‍♂️🧘🏼‍♂️🧘🏻‍♂️🧘🏿‍♀️🧘🏾‍♀️🧘🏽‍♀️🧘🏼‍♀️🧘🏻‍♀️🏌🏿️‍♂️🏌🏾️‍♂️🏌🏽️‍♂️🏌🏼️‍♂️🏌🏻️‍♂️🏌🏿️‍♀️🏌🏾️‍♀️🏌🏽️‍♀️🏌🏼️‍♀️🏌🏻️‍♀️🧗🏿‍♀️🧗🏾‍♀️🧗🏽‍♀️🧗🏼‍♀️🧗🏻‍♀️🏇🏿🏇🏾🏇🏽🏇🏼🏇🏻🚣🏿‍♂️🚣🏾‍♂️🚣🏽‍♂️🚣🏼‍♂️🚣🏻‍♂️🚣🏿‍♀️🚣🏾‍♀️🚣🏽‍♀️🚣🏼‍♀️🚣🏻‍♀️🤽🏿‍♂️🤽🏾‍♂️🤽🏽‍♂️🤽🏼‍♂️🤽🏻‍♂️🤽🏿‍♀️🤽🏾‍♀️🤽🏽‍♀️🤽🏼‍♀️🤽🏻‍♀️🏊🏿‍♂️🏊🏾‍♂️🏊🏽‍♂️🏊🏼‍♂️🏊🏻‍♂️🚵🏿‍♂️🚵🏾‍♂️🚵🏽‍♂️🚵🏼‍♂️🚵🏻‍♂️🚵🏿‍♀️🚵🏾‍♀️🚵🏽‍♀️🚵🏼‍♀️🚵🏻‍♀️🚴🏿‍♂️🚴🏾‍♂️🚴🏽‍♂️🚴🏼‍♂️🚴🏻‍♂️🚴🏿‍♀️🚴🏾‍♀️🚴🏽‍♀️🚴🏼‍♀️🚴🏻‍♀️🧗🏿‍♂️🧗🏾‍♂️🧗🏽‍♂️🧗🏼‍♂️🧗🏻‍♂️🤹🏿‍♀️🤹🏾‍♀️🤹🏽‍♀️🤹🏼‍♀️🤹🏻‍♀️🤹🏿‍♂️🤹🏾‍♂️🤹🏽‍♂️🤹🏼‍♂️🤹🏻‍♂️🛀🏿🛀🏾🛀🏽🛀🏼🛀🏻🛌🏿🛌🏾🛌🏽🛌🏼🛌🏻]","")	

return Name
end

