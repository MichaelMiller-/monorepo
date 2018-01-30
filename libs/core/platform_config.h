#pragma once

#include <system_error>

// extern dependencies
#if defined(_WIN32)
   #include <WinBase.h>
#elif defined(LINUX)
   #include <errno.h>
#endif

// intern dependencies
#if defined(_WIN32)
//    #include <sofistiklibs/core/detail/winapi/executable_path.h>
//    #include <sofistiklibs/core/detail/winapi/enum_processes.h>
// #elif defined(LINUX)
//    #include <sofistiklibs/core/detail/posix/executable_path.h>
#endif

namespace monorepo 
{
#if defined(_WIN32)
   // forward declaration
   namespace winapi { namespace detail {} }
   namespace api = winapi;

   inline std::error_code get_last_error() noexcept {
      return std::error_code(errno, std::system_category());
   }

#elif defined(LINUX)
   // forward declaration
   namespace posix { namespace detail {} }
   namespace api = posix;

   inline std::error_code get_last_error() noexcept {
      return std::error_code(::GetLastError(), std::system_category());
   }
#endif
}
