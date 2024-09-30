set(EXECUTABLE_TARGET_NAME "main")
add_executable(${EXECUTABLE_TARGET_NAME} main.c)
add_executable(sim-server sim-server.c)

target_link_libraries(${EXECUTABLE_TARGET_NAME} PUBLIC wbs::core)
target_include_directories(
    ${EXECUTABLE_TARGET_NAME} PUBLIC
    ${CMAKE_BINARY_DIR}
    ${WEBSERVER_INCLUDE_DIR}
)
