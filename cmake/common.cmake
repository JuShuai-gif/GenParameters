#  设置可执行文件的输出目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")
# 设置调试版本的可执行文件输出目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_SOURCE_DIR}/bin")
# 设置发布版本的可执行文件的输出目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_SOURCE_DIR}/bin")
# 设置带有调试信息的发布版本的可执行文件输出目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO "${CMAKE_SOURCE_DIR}/bin")
# 设置优化后发布版本的可执行文件的输出目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL "${CMAKE_SOURCE_DIR}/bin")
# 库文件输出目录
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)
# 调试版本的可执行文件和库文件的后缀为_d
set(CMAKE_DEBUG_POSTFIX "_d")
# 设置带有调试信息的发布版本的可执行文件和库文件后缀为_rd
set(CMAKE_RELWITHDEBINFO_POSTFIX "_rd")
# 设置优化后的发布版本的可执行文件和库文件后缀为_ms
set(CMAKE_MINSIZEREL_POSTFIX "_ms")

if (MSVC)
    set(CMAKE_USE_RELATIVE_PATHS "1")
    # Set compiler flags for "release"
    set(CMAKE_CXX_FLAGS_RELEASE "/MD /MP /Ox /Ob2 /Oi /Ot /fp:fast /D NDEBUG /openmp") 
	SET(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /MP") 
endif (MSVC)

if (UNIX OR MINGW)
    set(CMAKE_USE_RELATIVE_PATHS "1")
    # Set compiler flags for "release"
    set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG -fopenmp") 
endif (UNIX OR MINGW)

if(APPLE)
	set(CMAKE_MACOSX_RPATH 1)
endif()

add_definitions(-D_CRT_SECURE_NO_DEPRECATE)

set(CMAKE_CXX_STANDARD 11)