import 'dart:typed_data';

// ignore: import_of_legacy_library_into_null_safe
import 'package:demo01/protobuf/request/DIMReqProtocol.pb.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:demo01/protobuf/response/BaseResponseProto.pb.dart';

class LengthFieldPrepender {
  final int lengthFieldLength;

  LengthFieldPrepender(this.lengthFieldLength) {
    if (lengthFieldLength != 1 &&
        lengthFieldLength != 2 &&
        lengthFieldLength != 4 &&
        lengthFieldLength != 8) {
      throw ArgumentError(
          "lengthFieldLength must be either 1, 2, 4, or 8: $lengthFieldLength");
    }
  }

  List<int> encode(Object obj) {
    Uint8List msgBuffer = (obj as DIMReqProtocol).writeToBuffer();
    int length = msgBuffer.length;

    switch (this.lengthFieldLength) {
      case 1:
        if (length >= 256) {
          throw ArgumentError("length does not fit into a byte: $length");
        }
        var header = ByteData(1);

        header.setInt8(0, length);

        return header.buffer.asUint8List() + msgBuffer;
      case 2:
        if (length >= 65536) {
          throw ArgumentError(
              "length does not fit into a short integer: $length");
        }
        var header = ByteData(2);
        header.setInt16(0, length);
        return header.buffer.asUint8List() + msgBuffer;
        // return msgBuffer;
        break;
      case 4:
        var header = ByteData(4);
        header.setInt32(0, length);
        return header.buffer.asUint8List() + msgBuffer;
        break;
      case 8:
        var header = ByteData(8);
        header.setInt64(0, length);
        // [10, 10, 4, 112, 105, 110, 103, 16, 0, 24, 2]
        return header.buffer.asUint8List() + msgBuffer;
        break;
      case 3:
      case 5:
      case 6:
      case 7:
      default:
        throw FormatException("should not reach here");
    }
  }

  List<int> encoderes(Object obj) {
    Uint8List msgBuffer = (obj as DIMResProtocol).writeToBuffer();
    int length = msgBuffer.length;

    switch (this.lengthFieldLength) {
      case 1:
        if (length >= 256) {
          throw ArgumentError("length does not fit into a byte: $length");
        }
        var header = ByteData(1);

        header.setInt8(0, length);

        return header.buffer.asUint8List() + msgBuffer;
      case 2:
        if (length >= 65536) {
          throw ArgumentError(
              "length does not fit into a short integer: $length");
        }
        var header = ByteData(2);
        header.setInt16(0, length);
        return header.buffer.asUint8List() + msgBuffer;
        // return msgBuffer;
        break;
      case 4:
        var header = ByteData(4);
        header.setInt32(0, length);
        return header.buffer.asUint8List() + msgBuffer;
        break;
      case 8:
        var header = ByteData(8);
        header.setInt64(0, length);

        return header.buffer.asUint8List() + msgBuffer;
        break;
      case 3:
      case 5:
      case 6:
      case 7:
      default:
        throw FormatException("should not reach here");
    }
  }
}
