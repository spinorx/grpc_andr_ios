#include "ios/GreeterClient.h"

#include "cpp/greeter_client.h"

@implementation OBJCGreeterClient

- (void)useMethod {
  GreeterClient greeter(grpc::CreateChannel(
      "localhost:50051", grpc::InsecureChannelCredentials()));
  std::string user("world");
  std::string reply = greeter.SayHello(user);
  std::cout << "Greeter received: " << reply << std::endl;
}

@end
