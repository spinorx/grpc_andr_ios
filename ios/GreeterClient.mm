#import <Foundation/Foundation.h>

#include "cpp/greeter_client.h"

@interface OBJCGreeterClient : NSObject
@end

@implementation OBJCGreeterClient

- (void)useMethod {
  GreeterClient greeter(grpc::CreateChannel(
      "localhost:50051", grpc::InsecureChannelCredentials()));
  std::string user("world");
  std::string reply = greeter.SayHello(user);
  std::cout << "Greeter received: " << reply << std::endl;
}

@end
