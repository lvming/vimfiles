syn keyword luaMacro
    \	LUA_GCSTOP
    \	LUA_GCRESTART
    \	LUA_GCCOLLECT
    \	LUA_GCCOUNT
    \	LUA_GCCOUNTB
    \	LUA_GCSTEP
    \	LUA_GCSETPAUSE
    \	LUA_GCSETSTEPMUL
    \	LUA_ERRRUN
    \	LUA_ERRSYNTAX
    \	LUA_ERRMEM
    \	LUA_ERRERR
    \	LUA_MASKRET
    \	LUA_MASKLINE
    \	LUA_MASKCOUNT
    \	LUA_GLOBALSINDEX
    \	LUA_TNIL
    \	LUA_TNUMBER
    \	LUA_TBOOLEAN
    \	LUA_TSTRING
    \	LUA_TTABLE
    \	LUA_TFUNCTION
    \	LUA_TUSERDATA
    \	LUA_TTHREAD
    \	LUA_TLIGHTUSERDATA

syn keyword luaTypedef
    \	lua_State
    \	lua_Alloc
    \	lua_CFunction
    \	lua_Integer
    \	lua_Number
    \	lua_Reader
    \	lua_Writer
    \	lua_Debug
    \	lua_Hook
    \	luaL_Buffer
    \	luaL_Reg

syn keyword luaFunction
    \	lua_newstate
    \	luaL_newstate
    \	lua_atpanic
    \	lua_call
    \	lua_checkstatck
    \	lua_close
    \	lua_concat
    \	lua_cpcall
    \	lua_createtable
    \	lua_dump
    \	lua_equal
    \	lua_error
    \	lua_gc
    \	lua_getallocf
    \	lua_getfenv
    \	lua_getfield
    \	lua_getglobal
    \	lua_getmetatable
    \	lua_gettable
    \	lua_gettop
    \	lua_insert
    \	lua_isboolean
    \	lua_iscfuntion
    \	lua_islightuserdata
    \	lua_isnil
    \	lua_isnone
    \	lua_isnoneornil
    \   lua_isnumber
    \	lua_isstring
    \	lua_istable
    \	lua_isthread
    \	lua_isuserdata
    \	lua_lessthan
    \	lua_load
    \	lua_newstate
    \	lua_newtable
    \	lua_newthread
    \	lua_newuserdata
    \	lua_next
    \	lua_objlen
    \	lua_pcall
    \	lua_pop
    \	lua_pushboolean
    \	lua_pushcclosure
    \	lua_pushcfunction
    \	lua_pushfstring
    \	lua_pushinteger
    \	lua_pushlightuserdata
    \	lua_pushliteral
    \	lua_pushlstring
    \	lua_pushnil
    \	lua_pushnumber
    \	lua_pushstring
    \	lua_pushthread
    \	lua_pushvalue
    \	lua_pushvfstring
    \	lua_rawequal
    \	lua_rawget
    \	lua_rawgeti
    \	lua_rawset
    \	lua_rawseti
    \	lua_register
    \	lua_remove
    \	lua_replace
    \	lua_resume
    \	lua_setallocf
    \	lua_setfenv
    \	lua_setfield
    \	lua_setglobal
    \	lua_setmetatable
    \	lua_settable
    \	lua_settop
    \	lua_status
    \	lua_toboolean
    \	lua_tocfunction
    \	lua_tointeger
    \	lua_tolstring
    \	lua_tonumber
    \	lua_topointer
    \	lua_tostring
    \	lua_tothread
    \	lua_touserdata
    \	lua_type
    \	lua_typename
    \	lua_xmove
    \	lua_yield
    \	lua_gethook
    \	lua_gethookcount
    \	lua_gethookmask
    \	lua_getinfo
    \	lua_getlocal
    \	lua_getstack
    \	lua_getupvalue
    \	lua_sethook
    \	lua_setlocal
    \	lua_setupvalue
    \	luaL_addchar
    \	luaL_addlstring
    \	luaL_addsize
    \	luaL_addstring
    \	luaL_addvalue
    \	luaL_argcheck
    \	luaL_argerror
    \	luaL_buffinit
    \	luaL_callmeta
    \	luaL_checkany
    \	luaL_checkint
    \	luaL_checkinteger
    \	luaL_checklong
    \	luaL_checklstring
    \	luaL_checknumber
    \	luaL_checkoption
    \	luaL_checkstatck
    \	luaL_checkstring
    \	luaL_checktype
    \	luaL_checkudata
    \	luaL_dofile
    \	luaL_dostring
    \	luaL_error
    \	luaL_getmetafield
    \	luaL_getmetatable
    \	luaL_gsub
    \	luaL_loadbuffer
    \	luaL_loadfile
    \	luaL_loadstring
    \	luaL_newmetatable
    \	luaL_newstate
    \	luaL_openlibs
    \	luaL_optint
    \	luaL_optinteger
    \	luaL_optlong
    \	luaL_optlstring
    \	luaL_optnumber
    \	luaL_optstring
    \	luaL_prepbuffer
    \	luaL_pushresult
    \	luaL_ref
    \	luaL_register
    \	luaL_typename
    \	luaL_typeerror
    \	luaL_unref
    \	luaL_where

hi link luaMacro    Macro
hi link luaTypedef  Typedef
hi link luaFunction Function