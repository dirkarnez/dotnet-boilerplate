cmake_minimum_required(VERSION 3.22)
project("dotnet-boilerplate")
# message (">>> LENGTH: ${length}")

# message(${CPK_ACTION})
# message(${CPK_ACTION_TARGET})

# file(READ "json_example.json" EXAMPLE_JSON)

# string(JSON EXAMPLE_JSON_FIRST_ITEM GET ${EXAMPLE_JSON} 1)
# message(${EXAMPLE_JSON_FIRST_ITEM})

# string(JSON EXAMPLE_JSON_UPDATED SET ${EXAMPLE_JSON} 1 "\"c\"")
# message(${EXAMPLE_JSON_UPDATED})
# file(WRITE "json_example.json" ${EXAMPLE_JSON_UPDATED})
# dotnet nuget add source --name nuget.org https://api.nuget.org/v3/index.json
if(${CPK_ACTION} STREQUAL "init")
    execute_process(COMMAND dotnet 
    "new" 
    "console" 
    "--name" 
    ${CPK_ACTION_TARGET}
    "--output" 
    ".")
elseif(${CPK_ACTION} STREQUAL "install")
	message(STATUS "found ${CPK_ACTION_TARGET}")
    execute_process(COMMAND dotnet "add" "package" "GeometryGymIFC_Core" "--version" "0.2.8")
elseif(${CPK_ACTION} STREQUAL "uninstall")
	message(STATUS "found ${CPK_ACTION_TARGET}")
    execute_process(COMMAND dotnet "remove" "package" "GeometryGymIFC_Core")
elseif(${CPK_ACTION} STREQUAL "run")
    # dotnet 
    execute_process(COMMAND dotnet "run")
elseif(${CPK_ACTION} STREQUAL "publish")
    execute_process(COMMAND dotnet "publish" "-r" "win-x64")
# elseif(${CPK_ACTION} STREQUAL "init")
# 	# app + lib

# 	execute_process(COMMAND "C:/Windows/System32/where" "gcc" OUTPUT_VARIABLE GCC_LOCATION)
# 	string(REGEX REPLACE "\n$" "" GCC_LOCATION "${GCC_LOCATION}")
# 	file(TO_CMAKE_PATH ${GCC_LOCATION} GCC_LOCATION_NATIVE)
# 	message(STATUS "gcc found at ${GCC_LOCATION_NATIVE}")
	

# 	file(WRITE ${CPK_PROJECT}/.vscodeyoyoy/c_cpp_properties.json
# "{
#     \"configurations\": [
#         {
#             \"name\": \"Win32\",
#             \"includePath\": [
#                 \"${workspaceFolder}/**\"
#             ],
#             \"defines\": [
#                 \"_DEBUG\",
#                 \"UNICODE\",
#                 \"_UNICODE\"
#             ],
#             \"windowsSdkVersion\": \"10.0.18362.0\",
#             \"compilerPath\": \"${GCC_LOCATION_NATIVE}\",
#             \"cStandard\": \"c11\",
#             \"cppStandard\": \"c++17\"
#         }
#     ],
#     \"version\": 4
# }
# "
# )
# 	file(WRITE ${CPK_PROJECT}/.gitignore
# "/build
# /cmake-build
# .vscode/settings.json
# "
# 	)

# 	file(WRITE ${CPK_PROJECT}/yoyoy/main.cpp 
# "#include <iostream>

# int main() {
# 	std::cout << \"Hello World!\";
# 	return 0;
# }")
elseif(${CPK_ACTION} STREQUAL "disassemble")
	# TODO: get .exe name from cmake configuration
	execute_process(COMMAND "objdump" "-S" "numcpp-playground.exe" 
		WORKING_DIRECTORY ${CPK_PROJECT}/cmake-build
		OUTPUT_VARIABLE OBJDUMP_TEXT)

	file(WRITE ${CPK_PROJECT}/cmake-build/numcpp-playground_objdump.txt ${OBJDUMP_TEXT})
	message("tfgdfg ${PARENT_PROJECT_NAME}")
else()
    message(STATUS "Nothing to do")
endif()
