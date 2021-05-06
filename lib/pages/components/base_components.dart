import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseComponent {
  static Widget titleComponent(String content,
      {size, weight, color, alignment}) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.white.withOpacity(0))),
      alignment: alignment ?? Alignment.bottomLeft,
      height: ScreenUtil().setWidth(20),
      child: Text(
        content,
        style: TextStyle(
            fontSize: size == null ? ScreenUtil().setSp(14) : size,
            fontWeight: weight == null ? FontWeight.w600 : weight,
            color: color == null ? Colors.black : color),
      ),
    );
  }

  static Widget contentComponent(String content,
      { size,  weight,  color}) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.white.withOpacity(0))),
      alignment: Alignment.bottomLeft,
      height: ScreenUtil().setWidth(20),
      child: Text(
        content,
        style: TextStyle(
            fontSize: size == null ? ScreenUtil().setSp(14) : size,
            fontWeight: weight == null ? FontWeight.normal : weight,
            color: color == null ? Colors.black : color),
      ),
    );
  }

  static Widget copyTitleAndContentComponent(
      BuildContext context, String title, String content,
      { height}) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BaseComponent.titleComponent(title, color: Colors.grey),
              InkWell(
                  onTap: () {
                    ClipboardData data = new ClipboardData(text: content ?? "");
                    Clipboard.setData(data);
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Copy Successfully!")));
                  },
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(3),
                          vertical: ScreenUtil().setWidth(1)),
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 0.5, color: Colors.lightBlue),
                          borderRadius: BorderRadius.circular(
                            ScreenUtil().setWidth(5),
                          )),
                      child: Text("COPY",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(12),
                              color: Colors.lightBlue))))
            ],
          ),
          SizedBox(height: ScreenUtil().setWidth(5)),
          SelectableText(
            content ?? "",
          ),
        ],
      ),
    );
  }

  static Widget getStatusDot(double diameter, Color color) {
    return Container(
      height: ScreenUtil().setWidth(20),
      alignment: Alignment.bottomLeft,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.white.withOpacity(0))),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: ScreenUtil().setWidth(5)),
            width: Platform.isIOS || Platform.isAndroid
                ? ScreenUtil().setWidth(diameter)
                : ScreenUtil().setWidth(diameter / 2),
            height: Platform.isIOS || Platform.isAndroid
                ? ScreenUtil().setWidth(diameter)
                : ScreenUtil().setWidth(diameter / 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                Platform.isIOS || Platform.isAndroid
                    ? ScreenUtil().setWidth(diameter / 2)
                    : ScreenUtil().setWidth(diameter / 4),
              ),
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  /// 自定义字体组件
  static Widget buildText(
    String content, {
     size,
     color,
     weight,
     textAlign,
     maxLine,
  }) {
    return Text(
      content,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLine == null ? null : maxLine,
      style: TextStyle(
        fontSize:
            null != size ? ScreenUtil().setSp(size) : ScreenUtil().setSp(14),
        color: null != color ? color : Colors.black,
        fontWeight: null != weight ? weight : FontWeight.normal,
      ),
    );
  }

  static Widget buildBtn(
    BtnType type,
    String title,
    Function fun(), {
     margin,
     fontSize,
     height,
     width,
     fontWeight,
     bgColor,
     borderColor,
     foregroundColor,
  }) {
    TextStyle textStyle = TextStyle(
      fontSize: fontSize == null
          ? ScreenUtil().setSp(14)
          : ScreenUtil().setSp(fontSize),
      fontWeight: fontWeight == null ? FontWeight.normal : fontWeight,
    );

    ButtonStyle buttonStyle = ButtonStyle(
      backgroundColor:
          bgColor == null ? null : MaterialStateProperty.all(bgColor),
      foregroundColor: foregroundColor == null
          ? null
          : MaterialStateProperty.all(foregroundColor),
      side: borderColor == null
          ? null
          : MaterialStateProperty.all(BorderSide(color: borderColor)),
    );

    switch (type) {
      case BtnType.TEXT:
        return Container(
          width: width == null ? null : ScreenUtil().setWidth(width),
          height: height == null ? null : ScreenUtil().setWidth(height),
          child: TextButton(
            onPressed: fun,
            child: Text(title, style: textStyle),
            style: buttonStyle,
          ),
        );
      case BtnType.OUTLINED:
        return Container(
          width: width == null ? null : ScreenUtil().setWidth(width),
          height: height == null ? null : ScreenUtil().setWidth(height),
          child: OutlinedButton(
            child: Text(
              title,
              style: textStyle,
            ),
            onPressed: fun,
            style: buttonStyle,
          ),
        );
      case BtnType.ELEVATED:
        return Container(
          margin: margin,
          width: width == null ? null : ScreenUtil().setWidth(width),
          height: height == null ? null : ScreenUtil().setWidth(height),
          child: ElevatedButton(
            child: Text(
              title,
              style: textStyle,
            ),
            onPressed: fun,
            style: buttonStyle,
          ),
        );
      default:
        return Container(
          margin: margin,
          width: width == null ? null : ScreenUtil().setWidth(width),
          height: height == null ? null : ScreenUtil().setWidth(height),
          child: InkWell(
            child: Text(
              title,
              style: textStyle,
            ),
            onTap: fun,
          ),
        );
    }
  }
}

enum BtnType {
  TEXT,
  ELEVATED,
  OUTLINED,
}
