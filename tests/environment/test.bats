load ../helper

@test "only stdout" {
  assert_tf_output ".output.value.stderr" ""
  assert_tf_output ".output.value.stdout" "bar BAZ"
  assert_tf_output ".output.value.exitstatus" "0"
}