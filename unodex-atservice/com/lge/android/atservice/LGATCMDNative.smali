.class public Lcom/lge/android/atservice/LGATCMDNative;
.super Ljava/lang/Object;
.source "LGATCMDNative.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string/jumbo v0, "lgatcmd"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native add(II)I
.end method

.method static native base64_decode(Ljava/lang/String;)[B
.end method

.method static native base64_encode([B)Ljava/lang/String;
.end method

.method static native base64_encode_size([BI)Ljava/lang/String;
.end method

.method static native capture_screen([BIIII)I
.end method

.method static native gps_receive_at_result()Ljava/lang/String;
.end method

.method static native gps_send_at_command([B)I
.end method

.method static native native_capture_screen([B)I
.end method
