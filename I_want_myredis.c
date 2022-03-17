// https://github.com/redis/redis/commit/a81a92ca2ceba364f4bb51efde9284d939e7ff47
struct redisCommand redisCommandTable[] = {
    ...
    {"post",securityWarningCommand,-1,"lt",0,NULL,0,0,0,0,0},
    {"host:",securityWarningCommand,-1,"lt",0,NULL,0,0,0,0,0},
};
  
void securityWarningCommand(client *c) {
    static time_t logged_time;
    time_t now = time(NULL);
    if (labs(now-logged_time) > 60) {
        serverLog(LL_WARNING,"Possible SECURITY ATTACK detected. It looks like somebody is sending POST or Host: commands to Redis. This is likely due to an attacker attempting to use Cross Protocol Scripting to compromise your Redis instance. Connection aborted.");
      

//https://github.com/RedisLabs/RedisModulesSDK/blob/e756dd897fd08ac7eb8f3eb611c2cd4b591183c3/example/module.c
// Unit test entry point for the module
int TestModule(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
  RedisModule_AutoMemory(ctx);
  RMUtil_Test(testParse);
  RMUtil_Test(testHgetSet);
  RedisModule_ReplyWithSimpleString(ctx, "PASS");
  return REDISMODULE_OK;
}
int RedisModule_OnLoad(RedisModuleCtx *ctx) {
...
  // register the unit test
  RMUtil_RegisterWriteCmd(ctx, "example.test", TestModule);
  return REDISMODULE_OK;
}      
