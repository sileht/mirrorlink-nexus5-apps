.class public Lcom/lge/mirrorlink/vnc/lib/VNC;
.super Ljava/lang/Object;
.source "VNC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/vnc/lib/VNC$RFBException;
    }
.end annotation


# static fields
.field public static final Bell:I = 0x2

.field public static final ClientCutText:I = 0x6

.field public static final DesktopSize:I = -0xdf

.field public static final FixColourMapEntries:I = 0x1

.field public static final FrameBufferUpdate:I = 0x0

.field public static final FramebufferUpdateRequest:I = 0x3

.field public static final KeyEvent:I = 0x4

.field public static final PointerEvent:I = 0x5

.field public static final Raw:I = 0x0

.field public static final ServerCutText:I = 0x3

.field public static final SetColourMapEntries:I = 0x1

.field public static final SetEncodings:I = 0x2

.field public static final SetPixelFormat:I = 0x0

.field public static final TMExt:I = 0x80

.field public static final VERSION:Ljava/lang/String; = "RFB 003.008\n"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
