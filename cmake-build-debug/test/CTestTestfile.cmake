# CMake generated Testfile for 
# Source directory: /home/syy/mqtt.copy.c/test
# Build directory: /home/syy/mqtt.copy.c/cmake-build-debug/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test1-1-single-thread-client "/home/syy/mqtt.copy.c/cmake-build-debug/test/test1" "--test_no" "1" "--connection" "tcp://localhost:1883")
set_tests_properties(test1-1-single-thread-client PROPERTIES  TIMEOUT "540")
add_test(test1-2-multithread-callbacks "/home/syy/mqtt.copy.c/cmake-build-debug/test/test1" "--test_no" "2" "--connection" "tcp://localhost:1883")
set_tests_properties(test1-2-multithread-callbacks PROPERTIES  TIMEOUT "540")
add_test(test1-3-connack-return-codes "/home/syy/mqtt.copy.c/cmake-build-debug/test/test1" "--test_no" "3" "--connection" "tcp://localhost:1883")
set_tests_properties(test1-3-connack-return-codes PROPERTIES  TIMEOUT "540")
add_test(test1-4-client-persistence "/home/syy/mqtt.copy.c/cmake-build-debug/test/test1" "--test_no" "4" "--connection" "tcp://localhost:1883")
set_tests_properties(test1-4-client-persistence PROPERTIES  TIMEOUT "540")
add_test(test1-5-disconnect-with-quiesce "/home/syy/mqtt.copy.c/cmake-build-debug/test/test1" "--test_no" "5" "--connection" "tcp://localhost:1883")
set_tests_properties(test1-5-disconnect-with-quiesce PROPERTIES  TIMEOUT "540")
add_test(test1-6-connlost-will-message "/home/syy/mqtt.copy.c/cmake-build-debug/test/test1" "--test_no" "6" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test1-6-connlost-will-message PROPERTIES  TIMEOUT "540")
add_test(test1-7-connlost-binary-will-message "/home/syy/mqtt.copy.c/cmake-build-debug/test/test1" "--test_no" "7" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test1-7-connlost-binary-will-message PROPERTIES  TIMEOUT "540")
add_test(test15-1-single-thread-client "/home/syy/mqtt.copy.c/cmake-build-debug/test/test15" "--test_no" "1" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test15-1-single-thread-client PROPERTIES  TIMEOUT "540")
add_test(test15-2-multithread-callbacks "/home/syy/mqtt.copy.c/cmake-build-debug/test/test15" "--test_no" "2" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test15-2-multithread-callbacks PROPERTIES  TIMEOUT "540")
add_test(test15-3-connack-return-codes "/home/syy/mqtt.copy.c/cmake-build-debug/test/test15" "--test_no" "3" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test15-3-connack-return-codes PROPERTIES  TIMEOUT "540")
add_test(test15-4-client-persistence "/home/syy/mqtt.copy.c/cmake-build-debug/test/test15" "--test_no" "4" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test15-4-client-persistence PROPERTIES  TIMEOUT "540")
add_test(test15-5-disconnect-with-quiesce "/home/syy/mqtt.copy.c/cmake-build-debug/test/test15" "--test_no" "5" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test15-5-disconnect-with-quiesce PROPERTIES  TIMEOUT "540")
add_test(test15-6-connlost-will-message "/home/syy/mqtt.copy.c/cmake-build-debug/test/test15" "--test_no" "6" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test15-6-connlost-will-message PROPERTIES  TIMEOUT "540")
add_test(test15-7-connlost-binary-will-message "/home/syy/mqtt.copy.c/cmake-build-debug/test/test15" "--test_no" "7" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test15-7-connlost-binary-will-message PROPERTIES  TIMEOUT "540")
add_test(test2-1-multiple-threads-single-client "/home/syy/mqtt.copy.c/cmake-build-debug/test/test2" "--connection" "tcp://localhost:1883")
set_tests_properties(test2-1-multiple-threads-single-client PROPERTIES  TIMEOUT "540")
add_test(test4-1-basic-connect-subscribe-receive "/home/syy/mqtt.copy.c/cmake-build-debug/test/test4" "--test_no" "1" "--connection" "tcp://localhost:1883")
set_tests_properties(test4-1-basic-connect-subscribe-receive PROPERTIES  TIMEOUT "540")
add_test(test4-2-connect-timeout "/home/syy/mqtt.copy.c/cmake-build-debug/test/test4" "--test_no" "2" "--connection" "tcp://localhost:1883")
set_tests_properties(test4-2-connect-timeout PROPERTIES  TIMEOUT "540")
add_test(test4-3-multiple-client-objs-simultaneous-working "/home/syy/mqtt.copy.c/cmake-build-debug/test/test4" "--test_no" "3" "--connection" "tcp://localhost:1883")
set_tests_properties(test4-3-multiple-client-objs-simultaneous-working PROPERTIES  TIMEOUT "540")
add_test(test4-4-send-receive-big-messages "/home/syy/mqtt.copy.c/cmake-build-debug/test/test4" "--test_no" "4" "--connection" "tcp://localhost:1883")
set_tests_properties(test4-4-send-receive-big-messages PROPERTIES  TIMEOUT "540")
add_test(test4-5-connack-return-codes "/home/syy/mqtt.copy.c/cmake-build-debug/test/test4" "--test_no" "5" "--connection" "tcp://localhost:1883")
set_tests_properties(test4-5-connack-return-codes PROPERTIES  TIMEOUT "540")
add_test(test4-6-ha-connections "/home/syy/mqtt.copy.c/cmake-build-debug/test/test4" "--test_no" "6" "--connection" "tcp://localhost:1883")
set_tests_properties(test4-6-ha-connections PROPERTIES  TIMEOUT "540")
add_test(test4-7-pending-tokens "/home/syy/mqtt.copy.c/cmake-build-debug/test/test4" "--test_no" "7" "--connection" "tcp://localhost:1883")
set_tests_properties(test4-7-pending-tokens PROPERTIES  TIMEOUT "540")
add_test(test4-8-incomplete-commands-requests "/home/syy/mqtt.copy.c/cmake-build-debug/test/test4" "--test_no" "8" "--connection" "tcp://localhost:1883")
set_tests_properties(test4-8-incomplete-commands-requests PROPERTIES  TIMEOUT "540")
add_test(test45-1-basic-connect-subscribe-receive "/home/syy/mqtt.copy.c/cmake-build-debug/test/test45" "--test_no" "1" "--connection" "tcp://localhost:1883")
set_tests_properties(test45-1-basic-connect-subscribe-receive PROPERTIES  TIMEOUT "540")
add_test(test45-2-connect-timeout "/home/syy/mqtt.copy.c/cmake-build-debug/test/test45" "--test_no" "2" "--connection" "tcp://localhost:1883")
set_tests_properties(test45-2-connect-timeout PROPERTIES  TIMEOUT "540")
add_test(test45-3-multiple-client-objs-simultaneous-working "/home/syy/mqtt.copy.c/cmake-build-debug/test/test45" "--test_no" "3" "--connection" "tcp://localhost:1883")
set_tests_properties(test45-3-multiple-client-objs-simultaneous-working PROPERTIES  TIMEOUT "540")
add_test(test45-4-send-receive-big-messages "/home/syy/mqtt.copy.c/cmake-build-debug/test/test45" "--test_no" "4" "--connection" "tcp://localhost:1883")
set_tests_properties(test45-4-send-receive-big-messages PROPERTIES  TIMEOUT "540")
add_test(test45-5-connack-return-codes "/home/syy/mqtt.copy.c/cmake-build-debug/test/test45" "--test_no" "5" "--connection" "tcp://localhost:1883")
set_tests_properties(test45-5-connack-return-codes PROPERTIES  TIMEOUT "540")
add_test(test45-6-ha-connections "/home/syy/mqtt.copy.c/cmake-build-debug/test/test45" "--test_no" "6" "--connection" "tcp://localhost:1883")
set_tests_properties(test45-6-ha-connections PROPERTIES  TIMEOUT "540")
add_test(test45-7-pending-tokens "/home/syy/mqtt.copy.c/cmake-build-debug/test/test45" "--test_no" "7" "--connection" "tcp://localhost:1883")
set_tests_properties(test45-7-pending-tokens PROPERTIES  TIMEOUT "540")
add_test(test45-8-incomplete-commands-requests "/home/syy/mqtt.copy.c/cmake-build-debug/test/test45" "--test_no" "8" "--connection" "tcp://localhost:1883")
set_tests_properties(test45-8-incomplete-commands-requests PROPERTIES  TIMEOUT "540")
add_test(test6-restart-recovery "/home/syy/mqtt.copy.c/cmake-build-debug/test/test6" "--connection" "tcp://localhost:1883")
set_tests_properties(test6-restart-recovery PROPERTIES  TIMEOUT "540")
add_test(test8-1-basic-connect-subscribe-receive "/home/syy/mqtt.copy.c/cmake-build-debug/test/test8" "--test_no" "1" "--connection" "tcp://localhost:1883")
set_tests_properties(test8-1-basic-connect-subscribe-receive PROPERTIES  TIMEOUT "540")
add_test(test8-2-connect-timeout "/home/syy/mqtt.copy.c/cmake-build-debug/test/test8" "--test_no" "2" "--connection" "tcp://localhost:1883")
set_tests_properties(test8-2-connect-timeout PROPERTIES  TIMEOUT "540")
add_test(test8-3-multiple-client-objects-simultaneous-working "/home/syy/mqtt.copy.c/cmake-build-debug/test/test8" "--test_no" "3" "--connection" "tcp://localhost:1883")
set_tests_properties(test8-3-multiple-client-objects-simultaneous-working PROPERTIES  TIMEOUT "540")
add_test(test8-4-send-receive-big-messages "/home/syy/mqtt.copy.c/cmake-build-debug/test/test8" "--test_no" "4" "--connection" "tcp://localhost:1883" "--size" "500000")
set_tests_properties(test8-4-send-receive-big-messages PROPERTIES  TIMEOUT "540")
add_test(test8-5a-all-ha-connections-out-of-service "/home/syy/mqtt.copy.c/cmake-build-debug/test/test8" "--test_no" "5" "--connection" "tcp://localhost:1883")
set_tests_properties(test8-5a-all-ha-connections-out-of-service PROPERTIES  TIMEOUT "540")
add_test(test8-5b-all-ha-connections-out-of-service-except-the-last-one "/home/syy/mqtt.copy.c/cmake-build-debug/test/test8" "--test_no" "6" "--connection" "tcp://localhost:1883")
set_tests_properties(test8-5b-all-ha-connections-out-of-service-except-the-last-one PROPERTIES  TIMEOUT "540")
add_test(test8-5c-all-ha-connections-out-of-service-except-the-first-one "/home/syy/mqtt.copy.c/cmake-build-debug/test/test8" "--test_no" "7" "--connection" "tcp://localhost:1883")
set_tests_properties(test8-5c-all-ha-connections-out-of-service-except-the-first-one PROPERTIES  TIMEOUT "540")
add_test(test9-1-offline-buffering-send-disconnected "/home/syy/mqtt.copy.c/cmake-build-debug/test/test9" "--test_no" "1" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test9-1-offline-buffering-send-disconnected PROPERTIES  TIMEOUT "540")
add_test(test9-2-offline-buffering-send-disconnected-serverURIs "/home/syy/mqtt.copy.c/cmake-build-debug/test/test9" "--test_no" "2" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test9-2-offline-buffering-send-disconnected-serverURIs PROPERTIES  TIMEOUT "540")
add_test(test9-3-offline-buffering-auto-reconnect "/home/syy/mqtt.copy.c/cmake-build-debug/test/test9" "--test_no" "3" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test9-3-offline-buffering-auto-reconnect PROPERTIES  TIMEOUT "540")
add_test(test9-4-offline-buffering-auto-reconnect-serverURIs "/home/syy/mqtt.copy.c/cmake-build-debug/test/test9" "--test_no" "4" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test9-4-offline-buffering-auto-reconnect-serverURIs PROPERTIES  TIMEOUT "540")
add_test(test9-5-offline-buffering-max-buffered "/home/syy/mqtt.copy.c/cmake-build-debug/test/test9" "--test_no" "5" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test9-5-offline-buffering-max-buffered PROPERTIES  TIMEOUT "540")
add_test(test9-6-offline-buffering-max-buffered-binary-will "/home/syy/mqtt.copy.c/cmake-build-debug/test/test9" "--test_no" "6" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test9-6-offline-buffering-max-buffered-binary-will PROPERTIES  TIMEOUT "540")
add_test(test95-1-offline-buffering-send-disconnected "/home/syy/mqtt.copy.c/cmake-build-debug/test/test95" "--test_no" "1" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test95-1-offline-buffering-send-disconnected PROPERTIES  TIMEOUT "540")
add_test(test95-2-offline-buffering-send-disconnected-serverURIs "/home/syy/mqtt.copy.c/cmake-build-debug/test/test95" "--test_no" "2" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test95-2-offline-buffering-send-disconnected-serverURIs PROPERTIES  TIMEOUT "540")
add_test(test95-3-offline-buffering-auto-reconnect "/home/syy/mqtt.copy.c/cmake-build-debug/test/test95" "--test_no" "3" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test95-3-offline-buffering-auto-reconnect PROPERTIES  TIMEOUT "540")
add_test(test95-4-offline-buffering-auto-reconnect-serverURIs "/home/syy/mqtt.copy.c/cmake-build-debug/test/test95" "--test_no" "4" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test95-4-offline-buffering-auto-reconnect-serverURIs PROPERTIES  TIMEOUT "540")
add_test(test95-5-offline-buffering-max-buffered "/home/syy/mqtt.copy.c/cmake-build-debug/test/test95" "--test_no" "5" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test95-5-offline-buffering-max-buffered PROPERTIES  TIMEOUT "540")
add_test(test95-6-offline-buffering-max-buffered-binary-will "/home/syy/mqtt.copy.c/cmake-build-debug/test/test95" "--test_no" "6" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test95-6-offline-buffering-max-buffered-binary-will PROPERTIES  TIMEOUT "540")
add_test(test10-1-client_topic_aliases "/home/syy/mqtt.copy.c/cmake-build-debug/test/test10" "--test_no" "1" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test10-1-client_topic_aliases PROPERTIES  TIMEOUT "540")
add_test(test10-2-server_topic_aliases "/home/syy/mqtt.copy.c/cmake-build-debug/test/test10" "--test_no" "2" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test10-2-server_topic_aliases PROPERTIES  TIMEOUT "540")
add_test(test10-3-subscription_ids "/home/syy/mqtt.copy.c/cmake-build-debug/test/test10" "--test_no" "3" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test10-3-subscription_ids PROPERTIES  TIMEOUT "540")
add_test(test10-4-flow_control "/home/syy/mqtt.copy.c/cmake-build-debug/test/test10" "--test_no" "4" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test10-4-flow_control PROPERTIES  TIMEOUT "540")
add_test(test10-5-error_handling "/home/syy/mqtt.copy.c/cmake-build-debug/test/test10" "--test_no" "5" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test10-5-error_handling PROPERTIES  TIMEOUT "540")
add_test(test10-6-qos_1_2_errors "/home/syy/mqtt.copy.c/cmake-build-debug/test/test10" "--test_no" "6" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test10-6-qos_1_2_errors PROPERTIES  TIMEOUT "540")
add_test(test10-7-request_response "/home/syy/mqtt.copy.c/cmake-build-debug/test/test10" "--test_no" "7" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test10-7-request_response PROPERTIES  TIMEOUT "540")
add_test(test10-8-subscribe_options "/home/syy/mqtt.copy.c/cmake-build-debug/test/test10" "--test_no" "8" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test10-8-subscribe_options PROPERTIES  TIMEOUT "540")
add_test(test10-9-shared_subscriptions "/home/syy/mqtt.copy.c/cmake-build-debug/test/test10" "--test_no" "9" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test10-9-shared_subscriptions PROPERTIES  TIMEOUT "540")
add_test(test11-1-client_topic_aliases "/home/syy/mqtt.copy.c/cmake-build-debug/test/test11" "--test_no" "1" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test11-1-client_topic_aliases PROPERTIES  TIMEOUT "540")
add_test(test11-2-server_topic_aliases "/home/syy/mqtt.copy.c/cmake-build-debug/test/test11" "--test_no" "2" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test11-2-server_topic_aliases PROPERTIES  TIMEOUT "540")
add_test(test11-3-subscription_ids "/home/syy/mqtt.copy.c/cmake-build-debug/test/test11" "--test_no" "3" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test11-3-subscription_ids PROPERTIES  TIMEOUT "540")
add_test(test11-4-flow_control "/home/syy/mqtt.copy.c/cmake-build-debug/test/test11" "--test_no" "4" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test11-4-flow_control PROPERTIES  TIMEOUT "540")
add_test(test11-5-error_handling "/home/syy/mqtt.copy.c/cmake-build-debug/test/test11" "--test_no" "5" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test11-5-error_handling PROPERTIES  TIMEOUT "540")
add_test(test11-6-qos_1_2_errors "/home/syy/mqtt.copy.c/cmake-build-debug/test/test11" "--test_no" "6" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test11-6-qos_1_2_errors PROPERTIES  TIMEOUT "540")
add_test(test11-7-request_response "/home/syy/mqtt.copy.c/cmake-build-debug/test/test11" "--test_no" "7" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test11-7-request_response PROPERTIES  TIMEOUT "540")
add_test(test11-8-subscribe_options "/home/syy/mqtt.copy.c/cmake-build-debug/test/test11" "--test_no" "8" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test11-8-subscribe_options PROPERTIES  TIMEOUT "540")
add_test(test11-9-shared_subscriptions "/home/syy/mqtt.copy.c/cmake-build-debug/test/test11" "--test_no" "9" "--connection" "tcp://localhost:1883" "--proxy_connection" "tcp://localhost:1884")
set_tests_properties(test11-9-shared_subscriptions PROPERTIES  TIMEOUT "540")
