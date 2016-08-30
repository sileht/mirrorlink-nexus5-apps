.class Lcom/lge/upnp/uda/service/JNIStateVarInfo;
.super Ljava/lang/Object;
.source "JNIStateVarInfo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CreateNativeMethod()J
.end method

.method public static native GetAllowedValueList(J)[Ljava/lang/String;
.end method

.method public static native GetAllowedValueRange(J)Lcom/lge/upnp/uda/service/IAllowedValueRange;
.end method

.method public static native GetDataType(J)Ljava/lang/String;
.end method

.method public static native GetDefaultValue(J)Ljava/lang/String;
.end method

.method public static native GetSendEvents(J)Z
.end method

.method public static native GetStateVariableName(J)Ljava/lang/String;
.end method

.method public static native GetStateVariableValue(J)Ljava/lang/String;
.end method

.method public static native SetStateVariableName(JLjava/lang/String;)V
.end method

.method public static native SetStateVariableValue(JLjava/lang/String;)V
.end method
