.class Lcom/lge/upnp/uda/service/JNIArgument;
.super Ljava/lang/Object;
.source "JNIArgument.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native CreateNativeInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
.end method

.method public static native GetArgumentName(J)Ljava/lang/String;
.end method

.method public static native GetArgumentValue(J)[B
.end method

.method public static native GetDirection(J)Ljava/lang/String;
.end method

.method public static native GetRelatedStateVarInfo(J)Lcom/lge/upnp/uda/service/IStateVarInfo;
.end method

.method public static native GetRelatedStateVariable(J)Ljava/lang/String;
.end method

.method public static native SetArgumentName(JLjava/lang/String;)V
.end method

.method public static native SetArgumentValue(JLjava/lang/String;)V
.end method
