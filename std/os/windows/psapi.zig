const std = @import("std");
const windows = std.os.windows;
const WINAPI = windows.WINAPI;
const DWORD = windows.DWORD;
const HANDLE = windows.HANDLE;
const PENUM_PAGE_FILE_CALLBACKW = windows.PENUM_PAGE_FILE_CALLBACKW;
const HMODULE = windows.HMODULE;
const BOOL = windows.BOOL;
const BOOLEAN = windows.BOOLEAN;
const CONDITION_VARIABLE = windows.CONDITION_VARIABLE;
const CONSOLE_SCREEN_BUFFER_INFO = windows.CONSOLE_SCREEN_BUFFER_INFO;
const COORD = windows.COORD;
const FILE_INFO_BY_HANDLE_CLASS = windows.FILE_INFO_BY_HANDLE_CLASS;
const HRESULT = windows.HRESULT;
const LARGE_INTEGER = windows.LARGE_INTEGER;
const LPCWSTR = windows.LPCWSTR;
const LPTHREAD_START_ROUTINE = windows.LPTHREAD_START_ROUTINE;
const LPVOID = windows.LPVOID;
const LPWSTR = windows.LPWSTR;
const MODULEINFO = windows.MODULEINFO;
const OVERLAPPED = windows.OVERLAPPED;
const PERFORMANCE_INFORMATION = windows.PERFORMANCE_INFORMATION;
const PROCESS_MEMORY_COUNTERS = windows.PROCESS_MEMORY_COUNTERS;
const PSAPI_WS_WATCH_INFORMATION = windows.PSAPI_WS_WATCH_INFORMATION;
const PSAPI_WS_WATCH_INFORMATION_EX = windows.PSAPI_WS_WATCH_INFORMATION_EX;
const SECURITY_ATTRIBUTES = windows.SECURITY_ATTRIBUTES;
const SIZE_T = windows.SIZE_T;
const SRWLOCK = windows.SRWLOCK;
const UINT = windows.UINT;
const VECTORED_EXCEPTION_HANDLER = windows.VECTORED_EXCEPTION_HANDLER;
const WCHAR = windows.WCHAR;
const WORD = windows.WORD;
const Win32Error = windows.Win32Error;
const va_list = windows.va_list;
const HLOCAL = windows.HLOCAL;
const FILETIME = windows.FILETIME;
const STARTUPINFOW = windows.STARTUPINFOW;
const PROCESS_INFORMATION = windows.PROCESS_INFORMATION;
const OVERLAPPED_ENTRY = windows.OVERLAPPED_ENTRY;
const LPHEAP_SUMMARY = windows.LPHEAP_SUMMARY;
const ULONG_PTR = windows.ULONG_PTR;
const FILE_NOTIFY_INFORMATION = windows.FILE_NOTIFY_INFORMATION;
const HANDLER_ROUTINE = windows.HANDLER_ROUTINE;
const ULONG = windows.ULONG;
const PVOID = windows.PVOID;
const LPSTR = windows.LPSTR;
const PENUM_PAGE_FILE_CALLBACKA = windows.PENUM_PAGE_FILE_CALLBACKA;

pub extern "psapi" fn EmptyWorkingSet(hProcess: HANDLE) callconv(WINAPI) BOOL;
pub extern "psapi" fn EnumDeviceDrivers(lpImageBase: [*]LPVOID, cb: DWORD, lpcbNeeded: *DWORD) callconv(WINAPI) BOOL;
pub extern "psapi" fn EnumPageFilesA(pCallBackRoutine: PENUM_PAGE_FILE_CALLBACKA, pContext: LPVOID) callconv(WINAPI) BOOL;
pub extern "psapi" fn EnumPageFilesW(pCallBackRoutine: PENUM_PAGE_FILE_CALLBACKW, pContext: LPVOID) callconv(WINAPI) BOOL;
pub extern "psapi" fn EnumProcessModules(hProcess: HANDLE, lphModule: [*]HMODULE, cb: DWORD, lpcbNeeded: *DWORD) callconv(WINAPI) BOOL;
pub extern "psapi" fn EnumProcessModulesEx(hProcess: HANDLE, lphModule: [*]HMODULE, cb: DWORD, lpcbNeeded: *DWORD, dwFilterFlag: DWORD) callconv(WINAPI) BOOL;
pub extern "psapi" fn EnumProcesses(lpidProcess: [*]DWORD, cb: DWORD, cbNeeded: *DWORD) callconv(WINAPI) BOOL;
pub extern "psapi" fn GetDeviceDriverBaseNameA(ImageBase: LPVOID, lpBaseName: LPSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetDeviceDriverBaseNameW(ImageBase: LPVOID, lpBaseName: LPWSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetDeviceDriverFileNameA(ImageBase: LPVOID, lpFilename: LPSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetDeviceDriverFileNameW(ImageBase: LPVOID, lpFilename: LPWSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetMappedFileNameA(hProcess: HANDLE, lpv: ?LPVOID, lpFilename: LPSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetMappedFileNameW(hProcess: HANDLE, lpv: ?LPVOID, lpFilename: LPWSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetModuleBaseNameA(hProcess: HANDLE, hModule: ?HMODULE, lpBaseName: LPSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetModuleBaseNameW(hProcess: HANDLE, hModule: ?HMODULE, lpBaseName: LPWSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetModuleFileNameExA(hProcess: HANDLE, hModule: ?HMODULE, lpFilename: LPSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetModuleFileNameExW(hProcess: HANDLE, hModule: ?HMODULE, lpFilename: LPWSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetModuleInformation(hProcess: HANDLE, hModule: HMODULE, lpmodinfo: *MODULEINFO, cb: DWORD) callconv(WINAPI) BOOL;
pub extern "psapi" fn GetPerformanceInfo(pPerformanceInformation: *PERFORMANCE_INFORMATION, cb: DWORD) callconv(WINAPI) BOOL;
pub extern "psapi" fn GetProcessImageFileNameA(hProcess: HANDLE, lpImageFileName: LPSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetProcessImageFileNameW(hProcess: HANDLE, lpImageFileName: LPWSTR, nSize: DWORD) callconv(WINAPI) DWORD;
pub extern "psapi" fn GetProcessMemoryInfo(Process: HANDLE, ppsmemCounters: *PROCESS_MEMORY_COUNTERS, cb: DWORD) callconv(WINAPI) BOOL;
pub extern "psapi" fn GetWsChanges(hProcess: HANDLE, lpWatchInfo: *PSAPI_WS_WATCH_INFORMATION, cb: DWORD) callconv(WINAPI) BOOL;
pub extern "psapi" fn GetWsChangesEx(hProcess: HANDLE, lpWatchInfoEx: *PSAPI_WS_WATCH_INFORMATION_EX, cb: DWORD) callconv(WINAPI) BOOL;
pub extern "psapi" fn InitializeProcessForWsWatch(hProcess: HANDLE) callconv(WINAPI) BOOL;
pub extern "psapi" fn QueryWorkingSet(hProcess: HANDLE, pv: PVOID, cb: DWORD) callconv(WINAPI) BOOL;
pub extern "psapi" fn QueryWorkingSetEx(hProcess: HANDLE, pv: PVOID, cb: DWORD) callconv(WINAPI) BOOL;
