local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v25,v26) local v27={};for v86=1, #v25 do v6(v27,v0(v4(v1(v2(v25,v86,v86 + 1 )),v1(v2(v26,1 + (v86% #v26) ,1 + (v86% #v26) + 1 )))%256 ));end return v5(v27);end local function v8() return ((typeof(getfenv().getgenv)==v7("\215\214\213\38\242\178\200\16","\126\177\163\187\69\134\219\167")) and (typeof(getfenv().getgenv())==v7("\55\204\40\201\249","\156\67\173\74\165")) and getfenv().getgenv()) or _G ;end local function v9(v28) return v28:gsub("\\","\\\\"):gsub('\"','\\\"'):gsub("\n","\\n"):gsub("\13","\\13");end local function v10(v29) if ((typeof(v29)~=v7("\29\185\90\2\189\40\69\49","\38\84\215\41\118\220\70")) or  not v29.Parent) then return v7("\94\31\46","\158\48\118\66\114");end local function v30(v87) return ((v87>="0") and (v87<="9")) or ((v87>="a") and (v87<="z")) or ((v87>="A") and (v87<="Z")) ;end local function v31(v88) for v108=1901 -(106 + 1794) , #v88 do if  not v30(v88:sub(v108,v108)) then return false,v9(v88);end end return true,v88;end local v32=v29;local v33="";while v32~=game  do local v89=0 + 0 ;local v90;local v91;while true do if (v89==0) then v90,v91=v31(v32.Name);v33=((v90 and ".") or '[\"')   .. v91   .. ((v90 and "") or '\"]')   .. v33 ;v89=1190 -(449 + 740) ;end if (v89==(873 -(826 + 46))) then v32=v32.Parent;break;end end end return v7("\172\37\29\51","\155\203\68\112\86\19\197")   .. v33 ;end local function v11(v34) return tostring(v34);end local function v12(v35) return loadstring(v7("\84\216\34\233\82\118\165","\152\38\189\86\156\32\24\133")   .. v35 )();end local v13;v13={{{v7("\254\88\168\74\249\86\169","\38\156\55\199"),v7("\166\104\113\42\22\102","\35\200\29\28\72\115\20\154"),v7("\23\182\221","\84\121\223\177\191\237\76")},v11,v12},{v7("\168\66\219\169\52\87","\161\219\54\169\192\90\48\80"),function(v36) return '\"'   .. v9(v36)   .. '\"' ;end,v12},{v7("\96\76\19\49\72\76\3\32","\69\41\34\96"),function(v37) return v10(v37);end,v12},{v7("\168\194\213\6\7","\75\220\163\183\106\98"),function(v38) local v39=0 -0 ;local v40;while true do if ((3 -2)==v39) then return game.HttpService:JSONEncode(v40);end if (v39==(0 + 0)) then v40={};for v112,v113 in pairs(v38) do v40[encodeArg(v112)]=encodeArg(v113);end v39=1 + 0 ;end end end,function(v41) local v42={};for v92,v93 in pairs(game.HttpService:JSONDecode(v41)) do v42[decodeArg(v92)]=decodeArg(v93);end return v42;end},{v7("\4\175\133\52\205\11\181\133","\185\98\218\235\87"),function(v43) local v44=1257 -(1043 + 214) ;local v45;local v46;while true do if (v44==(0 -0)) then v45=debug.info(v43,"n");v46=getfenv().getgenv or getfenv().getrenv or getfenv ;v44=1213 -(323 + 889) ;end if ((2 -1)==v44) then if  not v46()[v45] then local v120=580 -(361 + 219) ;local v121;while true do if (v120==0) then v121=562 -(334 + 228) ;while true do if ((0 -0)==v121) then local v148=320 -(53 + 267) ;while true do if (v148==(0 + 0)) then for v151,v152 in v46() do if (typeof(v152)==v7("\223\61\37\234\219","\202\171\92\71\134\190")) then for v156,v157 in v152 do if ((v156==v45) and (v157==v43)) then return v151   .. v156 ;end end end end return v7("\47\212\34\139\61\200\35\134\97\136\41\134\45","\232\73\161\76");end end end end break;end end else return v45;end break;end end end,function(v47) return v12(v47) or function() end ;end},{v7("\142\253\75\80\76","\126\219\185\34\61"),function(v48) return v7("\57\234\87\127\44\57\253\226\27\134","\135\108\174\62\18\30\23\147")   .. tostring(v48.X)   .. v7("\250\169","\167\214\137\74\171\120\206\83")   .. tostring(v48.Y)   .. ")" ;end,v12}};function encodeArg(v49) local v50;for v95,v96 in v13 do local v97=0 -0 ;local v98;while true do if (v97==(0 + 0)) then v98=((typeof(v96[1 + 0 ])==v7("\159\241\48\81\253","\199\235\144\82\61\152")) and v96[851 -(20 + 830) ]) or {v96[127 -(116 + 10) ]} ;if table.find(v98,typeof(v49)) then return v95   .. v96[2 + 0 ](v49) ;end break;end end end return ( #v13 + 1 + 0)   .. typeof(v49)   .. v7("\73\24\188\60\79","\75\103\118\217")   .. tostring(v49)   .. ")" ;end function decodeArg(v51) local v52=738 -(542 + 196) ;local v53;local v54;while true do if (v52==(0 -0)) then v53=tonumber(v51:sub(1 + 0 ,1 + 0 ));v54=v51:sub(1 + 1 );v52=1;end if (v52==(2 -1)) then if v13[v53] then return v13[v53][7 -4 ](v54);else return v12(v54);end break;end end end local v14=v7("\230\118\83\48\156\56\224\124\89\62\146\50\234\122\95\36\136\44\244\96\69\34\142\38\254\110\113\22\186\26\194\82\119\28\176\20\204\88\125\26\182\14\214\70\99\0\172\8\208\76\105\14\233\79\149\7\36\65\239\73\159\13\59\91","\126\167\52\16\116\217");local function v15(v55) local v56=765 -(574 + 191) ;local v57;while true do if (v56==(1551 -(1126 + 425))) then v57=405 -(118 + 287) ;while true do if (v57==0) then v55=string.gsub(v55,v7("\243\16","\156\168\78\64\224\212\121")   .. v14   .. v7("\90\211","\174\103\142\197") ,"");return (v55:gsub(".",function(v126) if (v126=="=") then return "";end local v127,v128="",v14:find(v126) -(3 -2) ;for v139=1127 -(118 + 1003) ,2 -1 , -(378 -(142 + 235)) do v127=v127   .. (((((v128%((9 -7)^v139)) -(v128%((1 + 1)^(v139-(978 -(553 + 424))))))>(0 -0)) and "1") or "0") ;end return v127;end):gsub(v7("\19\44\26\60\96\90\167\19\44\0\125\33\1\189\82\119\26\60\122\27\252\9","\152\54\72\63\88\69\62"),function(v129) local v130=0 + 0 ;local v131;while true do if (v130==(0 + 0)) then if ( #v129~=(5 + 3)) then return "";end v131=0 + 0 ;v130=1 + 0 ;end if (v130==(940 -(714 + 225))) then for v149=2 -1 ,17 -9  do v131=v131 + (((v129:sub(v149,v149)=="1") and ((5 -3)^((17 -9) -v149))) or (0 + 0)) ;end return string.char(v131);end end end));end end break;end end end local function v16(v58) return (v58:gsub(".",function(v99) local v100=0 -0 ;local v101;local v102;while true do local v109=753 -(239 + 514) ;while true do if (v109==0) then if (v100==(0 + 0)) then v101,v102="",v99:byte();for v140=1337 -(797 + 532) ,1 + 0 , -(1887 -(927 + 959)) do v101=v101   .. (((((v102%((6 -4)^v140)) -(v102%((734 -(16 + 716))^(v140-(1 + 0)))))>(97 -(11 + 86))) and "1") or "0") ;end v100=2 -1 ;end if (v100==(1203 -(373 + 829))) then return v101;end break;end end end end)   .. v7("\132\148\190\12","\60\180\164\142")):gsub(v7("\29\90\64\45\98\233\77\29\90\90\108\35\178\87\92\1","\114\56\62\101\73\71\141"),function(v103) local v104=731 -(476 + 255) ;local v105;while true do if (v104==(1130 -(369 + 761))) then if ( #v103<(4 + 2)) then return "";end v105=0 -0 ;v104=1;end if (v104==(1 -0)) then for v122=239 -(64 + 174) ,1 + 5  do v105=v105 + (((v103:sub(v122,v122)=="1") and ((2 -0)^((342 -(144 + 192)) -v122))) or (216 -(42 + 174))) ;end return v14:sub(v105 + 1 + 0 ,v105 + (1062 -(810 + 251)) );end end end)   .. ({"",v7("\229\180","\164\216\137\187"),"="})[( #v58%(2 + 1)) + (1505 -(363 + 1141)) ] ;end function encodeArgs(...) return v16(encodeArg({...}));end function decodeArgs(v59) return unpack(decodeArg(v15(v59)));end local v17=v7("\237\217\2\155\129","\107\178\134\81\210\198\158");local v18={};local function v19(v60,v61) if ((v61==nil) or (typeof(v60)~=v7("\44\15\128\202\175","\202\88\110\226\166"))) then return;end local v62=2 -1 ;local v63=1 + 0 ;while true do local v106=0 -0 ;while true do if (v106==(1 + 0)) then v62=v62 + (1976 -(1913 + 62)) ;break;end if (v106==(0 + 0)) then if ((v61==nil) or ((typeof(v61)==v7("\234\1\145\227\203\205\12\135","\170\163\111\226\151")) and (v61.Parent==nil))) then return  -1;end if ((v60[v62]==nil) or ((typeof(v60[v62])==v7("\56\62\161\44\79\57\42\20","\73\113\80\210\88\46\87")) and (v60[v62].Parent==nil))) then v60[v62]=v61;return v62;end v106=1 -0 ;end end end end local function v20(v64,v65) local v66=0 + 0 ;local v67;while true do if (v66==(0 -0)) then if ((v65==nil) or (typeof(v64)~=v7("\149\45\207\30\226","\135\225\76\173\114"))) then return;end v67=1;v66=1934 -(565 + 1368) ;end if (v66==(406 -(255 + 150))) then while true do local v115=0;while true do if (v115==(0 -0)) then if ((v65==nil) or ((typeof(v65)==v7("\51\227\171\164\173\179\164\31","\199\122\141\216\208\204\221")) and (v65.Parent==nil))) then return  -(1 + 0);end if ((v64[v67]==v65) or ((typeof(v64[v67])==v7("\132\211\3\228\121\248\174\216","\150\205\189\112\144\24")) and (v64[v67].Parent==nil))) then local v141=1661 -(1477 + 184) ;while true do if (v141==(0 -0)) then local v150=0;while true do if (v150==(1739 -(404 + 1335))) then v64[v67]=nil;return v67;end end end end end v115=1 + 0 ;end if (v115==(857 -(564 + 292))) then v67=v67 + (1 -0) ;break;end end end break;end end end local function v21(v68,v69,v70,...) local v71=0 -0 ;local v72;while true do if (v71==(338 -(10 + 327))) then if (typeof(v68.SignalName)~=v7("\245\209\223\52\232\194","\93\134\165\173")) then return error(v7("\151\252\215\195\54\199\182\62\191\224\198\215\55\203\188\106\254\177\145\130\60\193\160\62\141\247\207\198\9\199\181\112\191\254\155\130\41\218\160\119\176\245\129\199\34\222\183\125\170\247\197\142\122\201\189\106\254","\30\222\146\161\162\90\174\210")   .. typeof(v68.SignalName) );end v70=v9(v70);v71=306 -(244 + 60) ;end if (v71==(3 + 0)) then game.TextChatService.TextChannels.RBXSystem:SendAsync(v72);break;end if ((0 + 0)==v71) then if (((typeof(v69)~=v7("\12\138\172\88\5\134\18\21","\112\69\228\223\44\100\232\113")) or  not v69:IsA(v7("\228\19\6\202\179\110","\230\180\127\103\179\214\28")) or (v69==game.Players.LocalPlayer)) and (v69~=v7("\141\9\83","\128\236\101\63\38\132\33"))) then return error(v7("\133\167\7\69\186\226\203\236\168\3\67\163\230\202\162\189\81\7\231\171\201\163\187\81\119\179\229\203\159\160\22\74\183\231\149\236\128\31\87\162\234\193\175\172\81\12\152\228\193\128\166\18\69\186\219\195\173\176\20\86\255\171\202\180\185\20\71\162\238\203\237","\175\204\201\113\36\214\139"));end if (typeof(v70)~=v7("\84\216\39\213\10\64","\100\39\172\85\188")) then return error(v7("\132\118\175\129\63\164\124\249\129\33\170\109\180\133\61\185\56\250\210\115\171\119\171\192\0\168\118\189\179\58\170\118\184\140\105\237\107\173\146\58\163\127\249\133\43\189\125\186\148\54\169\52\249\135\60\185\56","\83\205\24\217\224")   .. typeof(v70) );end v71=1 + 0 ;end if (v71==(478 -(41 + 435))) then v72=v16(v17   .. " "   .. v9(v68.SignalName)   .. " "   .. (v69.Name or v69)   .. " "   .. v70   .. " "   .. encodeArgs(...) );v19(v18,v72:gsub("=",v7("\160\11\45","\106\133\46\16")));v71=1004 -(938 + 63) ;end end end if  not v8().SignalLib then local v107=0 + 0 ;while true do if (v107==(1125 -(936 + 189))) then game:GetService(v7("\123\47\97\249\125\85\81","\32\56\64\19\156\58")).ExperienceChat.appLayout.chatWindow.scrollingView.bottomLockedScrollView.RCTScrollView.RCTScrollContentView.ChildAdded:Connect(function(v123) if (v123 and v123:WaitForChild(v7("\110\205\253\66\118\243\130\95\196","\224\58\168\133\54\58\146"),1 -0 ) and v123.TextLabel:WaitForChild(v7("\109\83\83\233\88\131\148\24\88\81\78","\107\57\54\43\157\21\230\231"),1 + 0 )) then local v132=1613 -(1565 + 48) ;local v133;local v134;local v135;while true do if (v132==(0 + 0)) then local v144=0 -0 ;while true do if (v144==(1138 -(782 + 356))) then v133=v123.TextLabel:FindFirstChild(v7("\239\142\9\225\148\217\220\200\138\22\240","\175\187\235\113\149\217\188"));v134=nil;v144=1;end if (v144==(268 -(176 + 91))) then v132=2 -1 ;break;end end end if (v132==(2 -0)) then v134=v133:GetPropertyChangedSignal(v7("\137\220\56\88","\44\221\185\64")):Connect(v135);v135();break;end if (v132==(1093 -(975 + 117))) then local v145=1875 -(157 + 1718) ;while true do if (v145==0) then v135=nil;function v135() for v154,v155 in v18 do if (v155 and v133.Text:match(v155:gsub(v7("\121\234\220","\24\92\207\225\44\131\25"),"=")   .. "" )) then game[v7("\121\198\182\12\40\120\89\197\177\79\30","\29\43\179\216\44\123")].RenderStepped:Wait();v133.Parent.Parent:Remove();if v134 then v134:Disconnect();end v20(v18,v155);break;end end end v145=1 + 0 ;end if (v145==(1 + 0)) then v132=1169 -(645 + 522) ;break;end end end end end end);game:GetService(v7("\34\232\90\90\84\20\238","\19\97\135\40\63")).ExperienceChat.bubbleChat[v7("\140\73\49\57\35\52\141\84\50\47\16","\81\206\60\83\91\79")   .. game.Players.LocalPlayer.UserId ].BubbleChatList.ChildAdded:Connect(function(v124) if (v124 and v124:WaitForChild(v7("\109\163\209\102\13\214\79\166\66\174\246\96\46\206\72","\196\46\203\176\18\79\163\45"),3 -2 ) and v124.ChatBubbleFrame:FindFirstChild(v7("\140\39\102\10","\143\216\66\30\126\68\155"))) then local v136=v124.ChatBubbleFrame:FindFirstChild(v7("\158\205\21\223","\129\202\168\109\171\165\195\183"));local v137;local function v138() for v142,v143 in v18 do if (v143 and v136.Text:match(v143)) then game[v7("\16\77\57\152\237\17\244\52\81\52\221","\134\66\56\87\184\190\116")].RenderStepped:Wait();v136.Parent.Parent:Remove();if v137 then v137:Disconnect();end break;end end end v137=v136:GetPropertyChangedSignal(v7("\8\52\17\175","\85\92\81\105\219\121\139\65")):Connect(v138);v138();end end);break;end end end local v22={[v7("\206\182\94\65\79\214\250\189\81\73","\191\157\211\48\37\28")]=v21,[v7("\240\17\199\21\61\209\30\248\46\63\220\22\241\10\63","\90\191\127\148\124")]=function(v73,v74) local v75=0 -0 ;local v76;while true do if (v75==0) then v76=v19(v73._SignalEvents,v74);return function() v73._SignalEvents[v76]=nil;end;end end end,[v7("\75\142\41\25\121\139\0\22\117\130","\119\24\231\78")]=v7("\164\36\183\79","\113\226\77\197\42\188\32"),[v7("\5\37\253\178\52\23\248\144\44\19\250\161\41","\213\90\118\148")]={}};local function v23(v77) local v78=0 + 0 ;while true do if (v78==(1018 -(697 + 321))) then if (v77==game.Players.LocalPlayer) then return;end v77.Chatted:Connect(function(v117) local v118=0;local v119;while true do if (v118==(0 -0)) then v119=v15(v117):split(" ");if ((v119[1 -0 ]==v17) and (v9(v119[4 -2 ])==v9(v22.SignalName)) and ((v119[2 + 1 ]==game.Players.LocalPlayer.Name) or (v119[5 -2 ]==v7("\90\34\184","\45\59\78\212\54")))) then for v146,v147 in v22._SignalEvents do if (typeof(v147)==v7("\22\67\141\136\146\39\162\254","\144\112\54\227\235\230\78\205")) then v147(v77,v119[10 -6 ],decodeArgs(table.concat(v119," ",7 -2 )));end end end break;end end end);break;end end end for v79,v80 in game.Players:GetPlayers() do v23(v80);end game.Players.PlayerAdded:Connect(v23);v8().SignalLib=true;return setmetatable({},{[v7("\140\23\6\242\212\94\171","\59\211\72\111\156\176")]=function(v81,v82) return v22[v82];end,[v7("\113\184\237\40\89\142\237\41\75\159","\77\46\231\131")]=function(v83,v84,v85) if ((typeof(v22[v84])==v7("\169\64\164\73\180\83","\32\218\52\214")) and (typeof(v85)==v7("\93\3\35\161\255\183","\58\46\119\81\200\145\208\37"))) then v22[v84]=v85;else error();end end});
