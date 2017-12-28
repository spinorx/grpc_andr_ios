#include <jni.h>

#include "cpp/greeter_client.h"

JNIEXPORT void JNICALL GreeterClient_useMethod(JNIEnv* env, jobject thiz) {
  GreeterClient greeter(grpc::CreateChannel(
      "localhost:50051", grpc::InsecureChannelCredentials()));
  std::string user("world");
  std::string reply = greeter.SayHello(user);
  std::cout << "Greeter received: " << reply << std::endl;
}
