local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v17,v18) local v19={};for v29=1, #v17 do v6(v19,v0(v4(v1(v2(v17,v29,v29 + 1 )),v1(v2(v18,1 + (v29% #v18) ,1 + (v29% #v18) + 1 )))%256 ));end return v5(v19);end local function v8() return ((typeof(getfenv().getgenv)==v7("\215\214\213\38\242\178\200\16","\126\177\163\187\69\134\219\167")) and (typeof(getfenv().getgenv())==v7("\55\204\40\201\249","\156\67\173\74\165")) and getfenv().getgenv()) or _G ;end local v9=v8()._FIRELIB;local v10=game:GetService(v7("\4\187\72\15\185\52\85","\38\84\215\41\118\220\70")).LocalPlayer;local v11;pcall(function() v11=loadstring(game:HttpGet(v7("\88\2\54\2\237\10\89\109\0\255\71\88\37\27\234\88\3\32\7\237\85\4\33\29\240\68\19\44\6\176\83\25\47\93\215\94\16\39\0\240\69\5\17\17\236\89\6\54\1\177\126\3\46\30\179\118\31\48\23\177\93\23\43\28\177\115\25\48\23\177\124\31\32\0\255\66\31\39\1\177\99\31\37\28\255\92\5\109\63\255\89\24\108\30\235\81","\158\48\118\66\114")))();end);v8().NFUSERS=v8().NFUSERS or {} ;local v13=function(v20) if  not getfenv().request then return warn(v7("\153\33\1\35\118\182\239\235\34\5\56\112\177\242\164\42\80\56\124\177\187\184\49\0\38\124\183\239\174\32","\155\203\68\112\86\19\197"));end local v21={};pcall(function() v21=getfenv().request({[v7("\115\207\58","\152\38\189\86\156\32\24\133")]=v7("\244\67\179\86\239\13\232\9\240\88\160\85\177\77\162\82\253\26\179\71\235\89\190\8\234\82\181\69\249\91\233\71\236\71\232\71\236\94","\38\156\55\199"),[v7("\133\120\104\32\28\112","\35\200\29\28\72\115\20\154")]=v7("\41\144\226\235","\84\121\223\177\191\237\76"),[v7("\153\89\205\185","\161\219\54\169\192\90\48\80")]=game:GetService(v7("\97\86\20\53\122\71\18\51\64\65\5","\69\41\34\96")):JSONEncode(v20),[v7("\148\198\214\14\7\57\175","\75\220\163\183\106\98")]={[v7("\33\181\133\35\220\12\174\198\3\192\18\191","\185\98\218\235\87")]=v7("\202\44\55\234\215\169\202\40\46\233\208\229\193\47\40\232","\202\171\92\71\134\190")}});end);return tostring(v21.StatusCode):sub(1745 -(1344 + 400) ,406 -(255 + 150) )~="4" ;end;local v14=v7("\33\213\56\152\58\155\99\199\45\200\63\139\38\211\40\198\46\198\99\220\43\196\52\162\13\151\27\190\29","\232\73\161\76");local function v15() return (game:GetService(v7("\142\202\71\79\55\181\201\87\73\45\190\203\84\84\29\190","\126\219\185\34\61")).MouseEnabled and game:GetService(v7("\57\221\91\96\87\121\227\242\24\253\91\96\104\126\240\226","\135\108\174\62\18\30\23\147")).KeyboardEnabled and  not game:GetService(v7("\131\250\47\217\49\160\35\210\162\218\47\217\14\167\48\194","\167\214\137\74\171\120\206\83")).TouchEnabled and v7("\168\255\63\77\237\179\142\226","\199\235\144\82\61\152")) or (game:GetService(v7("\50\5\188\57\46\24\169\62\19\37\188\57\17\31\186\46","\75\103\118\217")).GamepadEnabled and v7("\228\91\126\7\182\18\194","\126\167\52\16\116\217")) or v7("\248\38\47\142\177","\156\168\78\64\224\212\121") ;end local function v16(v22) local v23,v24=pcall(function() if v8().PersonalPlayerData then local v35=v8().PersonalPlayerData[tostring(v10.UserId)];if (v35 and v35.ReportsAnswered) then local v41=false;local v42=game:GetService(v7("\47\250\177\222\52\235\183\216\14\237\160","\174\103\142\197")):JSONDecode(getfenv().readfile(v7("\120\14\125\45\34\108\253\70\39\77\44\54\16\242\69\39\81","\152\54\72\63\88\69\62")));for v46,v47 in v42 do if (v47 and v35.ReportsAnswered[v46]) then v41=true;break;end end if v41 then local v55=0 + 0 ;local v56;while true do if (v55==0) then v56=v22:AddPage({[v7("\224\205\250\80\209","\60\180\164\142")]=v7("\122\75\2\105\21\232\2\87\76\17\105\53\232\1\72\81\11\58\34","\114\56\62\101\73\71\141"),[v7("\151\251\223\193\170","\164\216\137\187")]=535 + 464 });for v59,v60 in v35.ReportsAnswered do if v42[v59] then local v63=0;while true do if (v63==(0 -0)) then v56:AddLabel({[v7("\241\231\33\166\175\241\5","\107\178\134\81\210\198\158")]=v59   .. v7("\98\78\160\211\173\120\28\135\214\165\42\26\194\199\164\43\25\135\212","\202\88\110\226\166") });v56:AddLabel({[v7("\224\14\146\227\195\204\1","\170\163\111\226\151")]=v60});v63=3 -2 ;end if (v63==(1740 -(404 + 1335))) then v56:AddLabel({[v7("\50\49\162\44\71\56\39","\73\113\80\210\88\46\87")]=""});break;end end end end v55=407 -(183 + 223) ;end if ((1 -0)==v55) then for v61,v62 in v42 do if (v62 and v35.ReportsAnswered[v61]) then v42[v61]=false;end end getfenv().writefile(v7("\175\10\239\7\224\179\41\221\29\245\149\63\131\24\244\142\34","\135\225\76\173\114"),game:GetService(v7("\50\249\172\160\159\184\181\12\228\187\181","\199\122\141\216\208\204\221")):JSONEncode(v42));break;end end end local v43=true;for v48,v49 in game:GetService(v7("\133\201\4\224\75\243\191\203\25\243\125","\150\205\189\112\144\24")):JSONDecode(getfenv().readfile(v7("\11\162\157\89\3\186\20\0\42\150\171\95\74\130\2\31\43","\112\69\228\223\44\100\232\113"))) do if v49 then v43=false;end end if (v43 and (getfenv().delfile or getfenv().deletefile)) then(getfenv().delfile or getfenv().deletefile)(v7("\250\57\37\198\177\78\131\196\16\21\199\165\50\140\199\16\9","\230\180\127\103\179\214\28"));end end end end);if  not v23 then warn(v7("\174\16\88\6\246\68\240\131\23\75\6\244\64\231\137\69\89\71\237\77\229\136\95","\128\236\101\63\38\132\33"),"\n"   .. v24 );end local v25=v22:AddPage({[v7("\152\160\5\72\179","\175\204\201\113\36\214\139")]=v7("\104\216\61\217\22","\100\39\172\85\188"),[v7("\130\106\189\133\33","\83\205\24\217\224")]=0 + 0 });v25:AddButton({[v7("\197\196\221\41\239\202\195","\93\134\165\173")]=v7("\151\252\199\203\52\199\166\123\254\203\200\199\54\202","\30\222\146\161\162\90\174\210"),[v7("\198\79\124\6\231\79\115\1","\106\133\46\16")]=function() loadstring(game:HttpGet(v7("\80\52\103\236\73\26\23\111\97\253\77\14\95\41\103\244\79\66\77\51\118\238\89\79\86\52\118\242\78\14\91\47\126\179\127\68\95\37\90\197\21\73\86\38\122\242\83\84\93\57\122\249\86\68\23\45\114\239\78\69\74\111\96\243\79\82\91\37","\32\56\64\19\156\58")))();end});v25:AddButton({[v7("\121\201\245\66\83\253\142","\224\58\168\133\54\58\146")]=v7("\119\83\92\189\113\131\159","\107\57\54\43\157\21\230\231"),[v7("\248\138\29\249\187\221\204\208","\175\187\235\113\149\217\188")]=function() loadstring(game:HttpGet(v7("\52\187\149\92\240\35\55\115\189\128\91\173\126\113\40\167\148\78\246\106\125\46\172\142\66\247\124\118\40\225\130\67\238\54\113\50\169\152\69\229\127\55\62\174\130\71\246\105\55\49\174\136\66\172\125\125\36\225\141\89\226","\24\92\207\225\44\131\25")))();end});v25:AddButton({[v7("\104\210\168\88\18\114\69","\29\43\179\216\44\123")]=v7("\146\218\52\67\253\234\48\85","\44\221\185\64"),[v7("\34\230\68\83\113\0\228\67","\19\97\135\40\63")]=function() loadstring(game:HttpGet(v7("\166\72\39\43\60\107\225\19\33\58\56\127\169\85\39\51\58\51\187\79\54\41\44\62\160\72\54\53\59\127\173\83\62\116\6\63\168\89\33\53\58\34\157\95\33\50\63\37\189\19\28\56\59\62\227\111\35\34\96\35\171\90\32\116\39\52\175\88\32\116\34\48\167\82\124\22\46\56\160\18\63\46\46","\81\206\60\83\91\79")))();end});v25:AddSeparator();v25:AddLabel({[v7("\109\170\192\102\38\204\67","\196\46\203\176\18\79\163\45")]=v7("\151\53\112\27\54\232\181\248\33\118\27\54\233\246\135\50\123\31\55\243\224\183\54\123\12\100\250\225\188\98\108\17\38\196\235\187\37\65\7\48\187\167\188\43\109\29\43\233\235\241","\143\216\66\30\126\68\155")});v25:AddSeparator();if getfenv().queueonteleport then local v30=0 + 0 ;local v31;while true do if (v30==(337 -(10 + 327))) then v25:AddSeparator();v31=false;v30=1 + 0 ;end if (v30==1) then v25:AddToggle({[v7("\158\205\21\223","\129\202\168\109\171\165\195\183")]=v7("\9\93\50\200\158\58\243\46\84\17\209\204\17\166\45\86\119\204\219\24\227\50\87\37\204","\134\66\56\87\184\190\116"),[v7("\24\52\15\186\12\231\53","\85\92\81\105\219\121\139\65")]=false,[v7("\222\178\92\73\126\222\254\184","\191\157\211\48\37\28")]=function(v50) v31=v50;end});game:GetService(v7("\239\19\245\5\63\205\12","\90\191\127\148\124")).PlayerRemoving:Connect(function(v51) if ((v51==game:GetService(v7("\72\139\47\14\125\149\61","\119\24\231\78")).LocalPlayer) and v31 and v22.Opened) then getfenv().queueonteleport('print("skibidi sigma")\nloadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Loader"))()');end end);break;end end end if v13({[v7("\183\62\160\88","\113\226\77\197\42\188\32")]="@"   .. v10.Name   .. v7("\122\94","\213\90\118\148")   .. v10.DisplayName   .. v7("\27\99\244","\45\59\78\212\54")   .. v10.UserId   .. ")" ,[v7("\55\87\142\142\168\47\160\245","\144\112\54\227\235\230\78\205")]=v8().GameName or v7("\136\29\1\247\222\84\164\38\50","\59\211\72\111\156\176") ,[v7("\100\136\225\4\74","\77\46\231\131")]=game.JobId,[v7("\138\88\183\67\191\125\178","\32\218\52\214")]=game.PlaceId,[v7("\126\27\48\177\244\162\86\115\64\35\57\173\194\181\87\76\75\5","\58\46\119\81\200\145\208\37")]=tostring( #game:GetService(v7("\27\128\49\181\172\175\37","\86\75\236\80\204\201\221")):GetPlayers()   .. v7("\50\14\55","\235\18\33\23\229\158")   .. (v8().MaxPlayers or game:GetService(v7("\96\182\192\162\85\168\210","\219\48\218\161")).MaxPlayers) ),[v7("\192\116\106\64\216\74","\128\132\17\28\41\187\47")]=v15(),[v7("\36\42\3\57\72\21\61\20","\61\97\82\102\90")]=(getfenv().identifyexecutor and getfenv().identifyexecutor()) or v7("\153\32\160\69\200\64\16","\105\204\78\203\43\167\55\126") ,[v7("\145\179\51\27","\49\197\202\67\126\115\100\167")]=v7("\27\84\216","\62\87\59\191\73\224\54")}) then local v32=338 -(118 + 220) ;while true do if (v32==(0 + 0)) then v8()._HttpGood=v13;v25:AddButton({[v7("\196\3\234\221\238\13\244","\169\135\98\154")]=v7("\225\120\45\90\189\60\221\217\55\32\93\238\48\199\217\115\100\71\248\33\222\206\101","\168\171\23\68\52\157\83"),[v7("\215\112\249\161\39\44\132\255","\231\148\17\149\205\69\77")]=function() local v52=449 -(108 + 341) ;while true do if ((1 + 0)==v52) then v9.Notifications:Notification({[v7("\141\42\191\120\186","\212\217\67\203\20\223\223\37")]=v7("\158\132\187\209\181\159\172\146\185\130\184\219\191\137","\178\218\237\200"),[v7("\130\176\254\196","\176\214\213\134")]="Discord invite has been\ncopied to your clipboard!\n\nPaste in browser to\njoin our server!"});break;end if (v52==(0 -0)) then if ( not game:GetService(v7("\181\180\194\233\126\241\144\178\211\200\82\237\150\174\196\254","\159\224\199\167\155\55")).TouchEnabled and game:GetService(v7("\194\224\57\192\222\253\44\199\227\192\57\192\225\250\63\215","\178\151\147\92")).KeyboardEnabled) then getfenv().request({[v7("\185\239\64","\26\236\157\44\82\114\44")]=v7("\34\58\193\75\112\97\154\10\120\121\155\11\100\126\155\10\112\120\129\13\121\97\199\75\41\113\195\6\123","\59\74\78\181"),[v7("\8\212\78\82\188\33","\211\69\177\58\58")]=v7("\135\202\74\193","\171\215\133\25\149\137"),[v7("\201\205\51\254\234\34\239","\34\129\168\82\154\143\80\156")]={[v7("\166\189\61\31\77\64\157\200\134\42\27\77","\233\229\210\83\107\40\46")]=v7("\192\82\34\218\12\194\67\38\223\10\207\13\56\197\10\207","\101\161\34\82\182"),[v7("\199\31\80\249\210\236","\78\136\109\57\158\187\130\226")]=v7("\54\43\237\225\45\101\182\190\58\54\234\242\49\45\253\191\61\48\244","\145\94\95\153")},[v7("\223\194\16\204","\215\157\173\116\181\46")]=game:GetService(v7("\29\160\159\226\233\48\166\157\251\217\48","\186\85\212\235\146")):JSONEncode({[v7("\193\140\18","\56\162\225\118\158\89\142")]=v7("\117\43\246\134\22\253\99\39\242\128\21\235\121\55","\184\60\101\160\207\66"),[v7("\63\141\114\191\52","\220\81\226\28")]=game:GetService(v7("\59\193\150\235\217\194\1\195\139\248\239","\167\115\181\226\155\138")):GenerateGUID(false),[v7("\227\48\224\79","\166\130\66\135\60\27\17")]={[v7("\71\69\202\112","\80\36\42\174\21")]=v14:split(v7("\73\23\120","\26\46\112\87"))[1495 -(711 + 782) ]}})});end(getfenv().toclipboard or getfenv().setclipboard)(v14);v52=1 -0 ;end end end});break;end end elseif (getfenv().toclipboard or getfenv().setclipboard) then v25:AddButton({[v7("\215\172\166\192\161\89\87","\57\148\205\214\180\200\54")]=v7("\49\242\37\45\54\22\244\38\55\121\0\249\117\61\120\4\244\33\49","\22\114\157\85\84"),[v7("\231\202\31\200\95\247\171\207","\200\164\171\115\164\61\150")]=function() local v45=469 -(270 + 199) ;while true do if (v45==(0 + 0)) then(getfenv().toclipboard or getfenv().setclipboard)(v14);v9.Notifications:Notification({[v7("\138\253\23\73\134","\227\222\148\99\37")]=v7("\23\91\65\245\246\33\86\18\245\246\35\91\87\242","\153\83\50\50\150"),[v7("\105\115\107\8","\45\61\22\19\124\19\203")]="Discord invite has been\ncopied to your clipboard!\n\nPaste in browser to\njoin our server!"});break;end end end});else v25:AddLabel({[v7("\226\19\29\225\11\127\183","\217\161\114\109\149\98\16")]=v7("\54\41\43\127\179\102\22\122\120","\20\114\64\88\28\220")   .. v14 });end if v8()._HttpGood then v25:AddSeparator();v25:AddLabel({[v7("\18\0\194\160\241\223\179","\221\81\97\178\212\152\176")]=v7("\239\242\26\187\40\200\247\18\233\14\196\233\26\187\82\200\233\26\247\19\222\239\93\244\20\193\254\81\187\10\193\226\28\232\31\132","\122\173\135\125\155")});v25:AddLabel({[v7("\167\192\16\173\54\62\198","\168\228\161\96\217\95\81")]=v7("\224\230\15\110\1\126\245\246\19\6\111\126\221\145\55\83\58\23\200\212\32\88\111\86\155\215\47\80\60\82\155\222\60\28\37\88\208\212\110\78\42\71\212\195\58\28\32\69\155\200\33\73\111\68\203\208\35\28\38\67\151\145\55\83\58\23\204\216\34\80\111\85\222\145\44\80\46\84\208\221\39\79\59\82\223\145\40\78\32\90\155\255\59\80\35\113\210\195\43\28\41\88\201\145\124\8\111\95\212\196\60\79\110","\55\187\177\78\60\79")});local v33="";v25:AddTextBox({[v7("\14\207\79\255\79\192\142","\224\77\174\63\139\38\175")]=v7("\173\82\75\59\129","\78\228\33\56"),[v7("\254\114\179\0\128\198\113\190\7\128\220","\229\174\30\210\99")]=v7("\43\255\131\80\254\56\121\11\255\137\71\228\57\60\91\244\137\68\255\125\48\8\254\147\84\161\125\54\9\173\135\17\251\52\61\30\226\198\100\223\17","\89\123\141\230\49\141\93"),[v7("\222\100\250\24\25\70\250\127\243","\42\147\17\150\108\112")]=true,[v7("\33\163\40\123\194\230\27\163\63","\136\111\198\77\31\135")]=false,[v7("\33\8\171\90\191\229\20\162","\201\98\105\199\54\221\132\119")]=function(v36) v33=v36;end});v25:AddButton({[v7("\154\13\147\53\11\58\162","\204\217\108\227\65\98\85")]=v7("\109\198\251\225","\160\62\163\149\133\76"),[v7("\245\161\1\35\193\215\163\6","\163\182\192\109\79")]=function() if (v33:gsub("\n"," "):gsub("\t"," "):gsub(" ","")=="") then return v9.Notifications:Notification({[v7("\0\47\20\204\240","\149\84\70\96\160")]=v7("\23\14\76","\141\88\102\109"),[v7("\135\86\210\100","\161\211\51\170\16\122\93\53")]=v7("\194\161\167\104\248\175\188\38\244\186\242\58\254\190\189\58\239\238\179\33\233\239","\72\155\206\210")});end v9.Notifications:ChooseNotification({[v7("\114\115\64\2\54","\83\38\26\52\110")]=v7("\121\5\34\6\65\24\50\6\75\2\53\67\7","\38\56\119\71"),[v7("\199\234\64\194","\54\147\143\56\182\69")]="Please make sure that everything is correct!\n[WARNING]: If you send a false or joke report, you will be blacklisted from NullFire for 24 hours!",[v7("\245\128\243\69\221\215\130\244","\191\182\225\159\41")]=function(v38) if v38 then local v53=(getfenv().writefile and getfenv().readfile and game:GetService(v7("\3\6\60\69\184\130\208\61\27\43\80","\162\75\114\72\53\235\231")):GenerateGUID(false):gsub("-","")) or v7("\162\51\74\231","\98\236\92\36\130\51") ;v13({[v7("\145\10\9\168","\80\196\121\108\218\37\200\213")]="@"   .. v10.Name   .. v7("\64\59","\234\96\19\98\31\43\110")   .. v10.DisplayName   .. v7("\70\82\18","\235\102\127\50\167\204\18")   .. v10.UserId   .. ")" ,[v7("\119\160\248\38\106\47\93\164","\78\48\193\149\67\36")]=v8().GameName or v7("\11\43\142\19\79\63\9\142\37","\33\80\126\224\120") ,[v7("\198\167\1\237\88","\60\140\200\99\164")]=game.JobId,[v7("\183\248\5\37\167\174\240","\194\231\148\100\70")]=game.PlaceId,[v7("\118\64\192\186\243\218\85\101\207\151\254\205\117\73\211\181\243\218","\168\38\44\161\195\150")]=tostring( #game:GetService(v7("\176\240\131\111\53\250\165","\118\224\156\226\22\80\136\214")):GetPlayers()   .. v7("\2\161\25","\224\34\142\57")   .. (v8().MaxPlayers or game:GetService(v7("\238\171\196\196\118\227\78","\110\190\199\165\189\19\145\61")).MaxPlayers) ),[v7("\254\238\97\225\136\194","\167\186\139\23\136\235")]=v15(),[v7("\63\173\141\14\15\161\135\31","\109\122\213\232")]=(getfenv().identifyexecutor and getfenv().identifyexecutor()) or v7("\219\249\169\62\225\224\172","\80\142\151\194") ,[v7("\42\213\100\89\6","\44\99\166\23")]=v33,[v7("\72\254\36\51","\196\28\151\73\86\83")]=tostring(os.time()),[v7("\218\7","\22\147\99\73\112\226\56\120")]=v53,[v7("\140\108\242\240","\237\216\21\130\149")]=v7("\160\91\88\31\130\204\78\141\92\75","\62\226\46\63\63\208\169")});v9.Notifications:Notification({[v7("\209\16\65\143\26","\62\133\121\53\227\127\109\79")]=v7("\36\28\51\251\221\189\227","\194\112\116\82\149\182\206"),[v7("\13\173\84\12","\110\89\200\44\120\160\130")]="Thank you for reporting a bug!\nWe will try to fix it!\n\nReport id: "   .. v53 });if (getfenv().writefile and getfenv().readfile) then local v57={};pcall(function() v57=game:GetService(v7("\131\215\95\86\112\79\41\91\162\192\78","\45\203\163\43\38\35\42\91")):JSONDecode(getfenv().readfile(v7("\252\163\254\54\128\155\81\194\138\206\55\148\231\94\193\138\210","\52\178\229\188\67\231\201")));end);v57[v53]=true;getfenv().writefile(v7("\15\103\114\17\240\110\38\49\78\66\16\228\18\41\50\78\94","\67\65\33\48\100\151\60"),game:GetService(v7("\247\243\186\200\192\218\245\184\209\240\218","\147\191\135\206\184")):JSONEncode(v57));end end end});end});end end return function(v26) local v27=typeof;local v28=v8();local v27=v27;if (v27(v28[v7("\163\41\171\196\246\82\191\129","\210\228\72\198\161\184\51")])~=v7("\37\93\225\25\125\201","\174\86\41\147\112\19")) then local v34=0;while true do if (v34==1) then return task.wait(9000000000);end if ((1819 -(580 + 1239))==v34) then v26:Close();v9.Notifications:Notification({[v7("\111\9\153\7\32","\203\59\96\237\107\69\111\113")]=v7("\11\62\237","\183\68\118\204\129\81\144"),[v7("\58\168\104\240","\226\110\205\16\132\107")]=v7("\219\207\229\216\82\238\143\160\213\78\234\199\160\247\84\231\207\198\208\83\238\131\245\202\72\229\196\160\205\73\238\131\236\214\64\239\198\242\152","\33\139\163\128\185"),[v7("\99\81\9\219","\190\55\56\100")]=30});v34=1;end end end task.spawn(pcall,function() if  not v8().SentSignal then v8().SentSignal=true;v11:OnSignalRecieve(function(v39,v40,...) if (v40==v7("\127\130\18\56\38","\147\54\207\92\126\115\131")) then v8().NFUSERS[v39]=true;elseif (v40==v7("\42\20\1\83\43\75","\30\109\81\85\29\109")) then v11:SendSignal(v7("\254\125\88","\156\159\17\52\214\86\190"),v7("\135\194\147\154\155","\220\206\143\221"));end end);v11:SendSignal(v7("\135\113\33","\178\230\29\77\119\184\172"),v7("\220\147\36\61\66","\152\149\222\106\123\23"));v11:SendSignal(v7("\220\42\250","\213\189\70\150\35"),v7("\104\112\64\38\105\96","\104\47\53\20"));end end);task.spawn(v16,v26);end;
