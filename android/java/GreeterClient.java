public class GreeterClient {
  static {
    System.loadLibrary("GreeterClient");
  }

  public native void useMethod();
}
