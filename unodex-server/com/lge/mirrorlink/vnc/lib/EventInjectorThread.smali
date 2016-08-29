.class public Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;
.super Ljava/lang/Object;
.source "EventInjectorThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventInjectHandler;,
        Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;,
        Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;,
        Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;
    }
.end annotation


# static fields
.field private static final FORCE_KEY_UP_TIMEOUT:I = 0x1388

.field private static INTERNAL_KEYMAP:Landroid/util/SparseIntArray; = null

.field private static final KEY_FORCE_UP:I = 0x3

.field private static final KEY_INJECT:I = 0x2

.field private static final LONGPRESS:I

.field private static final MOVEUP:I = 0xfa

.field private static final POINTER_FORCE_UP:I = 0x1

.field private static final POINTER_INJECT:I = 0x0

.field public static final SUPPORTED_DEVICE_KEY:[I

.field public static final SUPPORTED_KNOB_KEY:[I

.field public static final SUPPORTED_MULTIMEDIA_KEY:[I

.field private static final TAG:Ljava/lang/String; = "MirrorLink_VNC"

.field private static final TOUCH_INJECT:I = 0x4

.field private static lastPointerAction:I

.field private static lastPointerX:F

.field private static lastPointerY:F


# instance fields
.field private lastDownTime:J

.field mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

.field mClientSendReleaseKey:Z

.field mEventInjectHandler:Landroid/os/Handler;

.field private mEventMapping:Landroid/util/SparseIntArray;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mKeyCodeMap:Landroid/util/SparseIntArray;

.field private mLastButtonMask:I

.field mSupportedDeviceKeyMask:I

.field mSupportedKnobKeyMask:I

.field mSupportedMultimediaKeyMask:I

.field private mTouchLastAction:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -wrap0(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;ZI)V
    .registers 3
    .param p1, "down"    # Z
    .param p2, "key"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->keyEvent(ZI)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;JIFF)V
    .registers 7
    .param p1, "time"    # J
    .param p3, "buttonMask"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->pointerEvent(JIFF)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;[Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;)V
    .registers 2
    .param p1, "data"    # [Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->touchEvent([Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const/16 v0, 0xa

    .line 52
    filled-new-array {v3, v4, v5, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->SUPPORTED_DEVICE_KEY:[I

    .line 58
    new-array v0, v5, [I

    fill-array-data v0, :array_16a

    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->SUPPORTED_MULTIMEDIA_KEY:[I

    .line 63
    filled-new-array {v3, v4, v6, v5}, [I

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->SUPPORTED_KNOB_KEY:[I

    .line 68
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    .line 71
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-static {v3}, Lcom/lge/mirrorlink/vnc/lib/TM;->getDeviceKeySym(I)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-static {v4}, Lcom/lge/mirrorlink/vnc/lib/TM;->getDeviceKeySym(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-static {v5}, Lcom/lge/mirrorlink/vnc/lib/TM;->getDeviceKeySym(I)I

    move-result v1

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getDeviceKeySym(I)I

    move-result v1

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getDeviceKeySym(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getDeviceKeySym(I)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getDeviceKeySym(I)I

    move-result v1

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getDeviceKeySym(I)I

    move-result v1

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-static {v3}, Lcom/lge/mirrorlink/vnc/lib/TM;->getMultimediaKeySym(I)I

    move-result v1

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-static {v4}, Lcom/lge/mirrorlink/vnc/lib/TM;->getMultimediaKeySym(I)I

    move-result v1

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getMultimediaKeySym(I)I

    move-result v1

    const/16 v2, 0x56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-static {v6}, Lcom/lge/mirrorlink/vnc/lib/TM;->getMultimediaKeySym(I)I

    move-result v1

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getMultimediaKeySym(I)I

    move-result v1

    const/16 v2, 0x59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-static {v7}, Lcom/lge/mirrorlink/vnc/lib/TM;->getMultimediaKeySym(I)I

    move-result v1

    const/16 v2, 0x57

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getMultimediaKeySym(I)I

    move-result v1

    const/16 v2, 0x58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-static {v3, v3}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKnobKeySym(II)I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKnobKeySym(II)I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-static {v3, v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKnobKeySym(II)I

    move-result v1

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-static {v3, v7}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKnobKeySym(II)I

    move-result v1

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-static {v3, v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKnobKeySym(II)I

    move-result v1

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-static {v3, v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKnobKeySym(II)I

    move-result v1

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-static {v3, v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKnobKeySym(II)I

    move-result v1

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-static {v3, v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKnobKeySym(II)I

    move-result v1

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-static {v3, v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKnobKeySym(II)I

    move-result v1

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    invoke-static {v3, v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKnobKeySym(II)I

    move-result v1

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    sget-object v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    invoke-static {v3, v1}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKnobKeySym(II)I

    move-result v1

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 377
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    sput v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->LONGPRESS:I

    .line 379
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastPointerX:F

    .line 380
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastPointerY:F

    .line 381
    const/4 v0, -0x1

    sput v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastPointerAction:I

    .line 27
    return-void

    .line 58
    nop

    :array_16a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientSendReleaseKey:Z

    .line 44
    iput v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedKnobKeyMask:I

    .line 45
    iput v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedDeviceKeyMask:I

    .line 46
    iput v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedMultimediaKeyMask:I

    .line 48
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    .line 49
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventMapping:Landroid/util/SparseIntArray;

    .line 360
    iput v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mLastButtonMask:I

    .line 402
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastDownTime:J

    .line 443
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mTouchLastAction:Landroid/util/SparseIntArray;

    .line 703
    new-instance v1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    invoke-direct {v1, p0}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;-><init>(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    .line 113
    sget-object v3, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->SUPPORTED_DEVICE_KEY:[I

    array-length v4, v3

    move v1, v2

    :goto_32
    if-ge v1, v4, :cond_41

    aget v0, v3, v1

    .line 114
    .local v0, "key":I
    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedDeviceKeyMask:I

    invoke-static {v5, v0}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedDeviceKeyMask:I

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 117
    .end local v0    # "key":I
    :cond_41
    sget-object v3, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->SUPPORTED_MULTIMEDIA_KEY:[I

    array-length v4, v3

    move v1, v2

    :goto_45
    if-ge v1, v4, :cond_54

    aget v0, v3, v1

    .line 118
    .restart local v0    # "key":I
    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedMultimediaKeyMask:I

    invoke-static {v5, v0}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedMultimediaKeyMask:I

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 122
    .end local v0    # "key":I
    :cond_54
    sget-object v3, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->SUPPORTED_KNOB_KEY:[I

    array-length v4, v3

    move v1, v2

    :goto_58
    if-ge v1, v4, :cond_6b

    aget v0, v3, v1

    .line 123
    .restart local v0    # "key":I
    iget v5, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedKnobKeyMask:I

    invoke-static {v2, v0}, Lcom/lge/mirrorlink/vnc/lib/TM;->getNKnob(II)I

    move-result v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedKnobKeyMask:I

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 127
    .end local v0    # "key":I
    :cond_6b
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "VNC-EventInjector"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 128
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mHandlerThread:Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 129
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 130
    new-instance v1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventInjectHandler;

    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventInjectHandler;-><init>(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method private _injectPtr(FFIJ)V
    .registers 26
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "action"    # I
    .param p4, "currentTime"    # J

    .prologue
    .line 405
    if-nez p3, :cond_8

    .line 406
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastDownTime:J

    .line 408
    :cond_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastDownTime:J

    .line 410
    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-wide/from16 v6, p4

    move/from16 v8, p3

    move/from16 v9, p1

    move/from16 v10, p2

    .line 408
    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 411
    .local v19, "moveEvent":Landroid/view/MotionEvent;
    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 414
    :try_start_2b
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_35} :catch_36

    .line 403
    :goto_35
    return-void

    .line 415
    :catch_36
    move-exception v18

    .line 416
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_35
.end method

.method private getPointerAction(I)I
    .registers 5
    .param p1, "buttonMask"    # I

    .prologue
    const/4 v2, 0x1

    .line 363
    const/4 v0, -0x1

    .line 364
    .local v0, "action":I
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mLastButtonMask:I

    if-nez v1, :cond_b

    if-nez p1, :cond_b

    .line 373
    :cond_8
    :goto_8
    iput p1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mLastButtonMask:I

    .line 374
    return v0

    .line 366
    :cond_b
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mLastButtonMask:I

    if-nez v1, :cond_13

    if-ne p1, v2, :cond_13

    .line 367
    const/4 v0, 0x0

    .line 366
    goto :goto_8

    .line 368
    :cond_13
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mLastButtonMask:I

    if-ne v1, v2, :cond_1b

    if-ne p1, v2, :cond_1b

    .line 369
    const/4 v0, 0x2

    .line 368
    goto :goto_8

    .line 370
    :cond_1b
    iget v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mLastButtonMask:I

    if-ne v1, v2, :cond_8

    if-nez p1, :cond_8

    .line 371
    const/4 v0, 0x1

    goto :goto_8
.end method

.method private getTouchAction(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;I)I
    .registers 9
    .param p1, "data"    # Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;
    .param p2, "index"    # I

    .prologue
    const v5, 0xff00

    const/4 v4, -0x1

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "action":I
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mTouchLastAction:Landroid/util/SparseIntArray;

    iget v3, p1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pointerId:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 449
    .local v1, "lastAction":I
    iget v2, p1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pointerId:I

    if-nez v2, :cond_32

    .line 450
    iget v2, p1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pressure:I

    if-nez v2, :cond_1e

    .line 451
    const/4 v0, 0x1

    .line 452
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mTouchLastAction:Landroid/util/SparseIntArray;

    iget v3, p1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pointerId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 472
    :goto_1d
    return v0

    .line 453
    :cond_1e
    if-eq v1, v4, :cond_29

    .line 454
    const/4 v0, 0x2

    .line 455
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mTouchLastAction:Landroid/util/SparseIntArray;

    iget v3, p1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pointerId:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1d

    .line 457
    :cond_29
    const/4 v0, 0x0

    .line 458
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mTouchLastAction:Landroid/util/SparseIntArray;

    iget v3, p1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pointerId:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1d

    .line 461
    :cond_32
    iget v2, p1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pressure:I

    if-nez v2, :cond_43

    .line 463
    shl-int/lit8 v2, p2, 0x8

    and-int/2addr v2, v5

    or-int/lit8 v0, v2, 0x6

    .line 464
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mTouchLastAction:Landroid/util/SparseIntArray;

    iget v3, p1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pointerId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_1d

    .line 467
    :cond_43
    shl-int/lit8 v2, p2, 0x8

    and-int/2addr v2, v5

    or-int/lit8 v0, v2, 0x5

    .line 468
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mTouchLastAction:Landroid/util/SparseIntArray;

    iget v3, p1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pointerId:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1d
.end method

.method private injectKeyEvent(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 221
    const-string/jumbo v0, "MirrorLink_VNC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "injectKeyEvent click:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 218
    return-void
.end method

.method private isNeededMoveEvent(FFI)Z
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "action"    # I

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 398
    sget v2, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastPointerAction:I

    if-nez v2, :cond_23

    if-ne p3, v0, :cond_23

    .line 399
    sget v2, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastPointerX:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_20

    sget v2, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastPointerY:F

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_21

    .line 398
    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    .line 399
    goto :goto_20

    :cond_23
    move v0, v1

    .line 398
    goto :goto_20
.end method

.method private keyEvent(ZI)V
    .registers 27
    .param p1, "down"    # Z
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 262
    .local v22, "currentTime":J
    const/4 v9, 0x0

    .line 263
    .local v9, "code":I
    const/high16 v6, 0x30000000

    and-int v6, v6, p2

    if-nez v6, :cond_56

    .line 264
    invoke-static/range {p2 .. p2}, Lcom/lge/mirrorlink/vnc/lib/XK;->getKeyEventCode(I)Ljava/lang/Object;

    move-result-object v2

    .line 265
    .local v2, "data":Ljava/lang/Object;
    if-eqz v2, :cond_28

    .line 266
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_22

    .line 267
    if-nez p1, :cond_18

    .line 268
    return-void

    .line 270
    :cond_18
    check-cast v2, Ljava/lang/String;

    .end local v2    # "data":Ljava/lang/Object;
    const/16 v6, 0x101

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->sendText(ILjava/lang/String;)V

    .line 273
    return-void

    .line 275
    .restart local v2    # "data":Ljava/lang/Object;
    :cond_22
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "data":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 289
    :cond_28
    :goto_28
    if-nez v9, :cond_be

    .line 290
    const-string/jumbo v6, "MirrorLink_VNC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "keyEvent: cannot find symbol "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "0x%08X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v10, v15

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void

    .line 279
    :cond_56
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventMapping:Landroid/util/SparseIntArray;

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    .line 280
    .local v12, "mappedKey":I
    if-nez v12, :cond_6d

    .line 281
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    goto :goto_28

    .line 283
    :cond_6d
    const-string/jumbo v6, "MirrorLink_VNC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "keyEvent: use mpped symbol "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "0x%08X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v10, v15

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 284
    const-string/jumbo v8, " --> "

    .line 283
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 284
    const-string/jumbo v8, "0x%08X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v10, v15

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 283
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    goto/16 :goto_28

    .line 293
    .end local v12    # "mappedKey":I
    :cond_be
    const-string/jumbo v6, "MirrorLink_VNC"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "key : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ", keyEvent: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    invoke-static/range {p2 .. p2}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKeyCodeName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-string/jumbo v8, "("

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const-string/jumbo v8, "0x%08X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v10, v15

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v7, v10

    const-string/jumbo v8, "), down: "

    const/4 v10, 0x4

    aput-object v8, v7, v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    const/4 v11, 0x0

    .line 296
    .local v11, "metaState":I
    const v6, 0x3000000f

    move/from16 v0, p2

    if-ne v0, v6, :cond_11e

    .line 297
    const/4 v11, 0x1

    .line 300
    :cond_11e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 301
    .local v4, "downTime":J
    new-instance v3, Landroid/view/KeyEvent;

    if-eqz p1, :cond_17d

    const/4 v8, 0x0

    :goto_127
    const/4 v10, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 303
    .local v3, "downkey":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    if-eqz p1, :cond_14e

    .line 317
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    .line 318
    const-wide/16 v14, 0x1388

    .line 317
    invoke-virtual {v6, v7, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 323
    :cond_14e
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientSendReleaseKey:Z

    if-nez v6, :cond_175

    if-eqz p1, :cond_175

    .line 324
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 327
    .local v16, "upTime":J
    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide v14, v4

    move/from16 v19, v9

    invoke-direct/range {v13 .. v21}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 328
    .local v13, "upkey":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 331
    .end local v13    # "upkey":Landroid/view/KeyEvent;
    .end local v16    # "upTime":J
    :cond_175
    if-nez p1, :cond_17c

    .line 332
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientSendReleaseKey:Z

    .line 258
    :cond_17c
    return-void

    .line 301
    .end local v3    # "downkey":Landroid/view/KeyEvent;
    :cond_17d
    const/4 v8, 0x1

    goto :goto_127
.end method

.method private pointerEvent(JIFF)V
    .registers 13
    .param p1, "time"    # J
    .param p3, "buttonMask"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 423
    invoke-direct {p0, p3}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->getPointerAction(I)I

    move-result v6

    .line 424
    .local v6, "action":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_9

    .line 425
    return-void

    .line 427
    :cond_9
    const-string/jumbo v0, "MirrorLink_VNC"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "pointer: "

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, ", "

    aput-object v2, v1, v3

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string/jumbo v2, " "

    const/4 v4, 0x4

    aput-object v2, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    invoke-direct {p0, p4, p5, v6}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->isNeededMoveEvent(FFI)Z

    move-result v0

    if-eqz v0, :cond_45

    move-object v0, p0

    move v1, p4

    move v2, p5

    move-wide v4, p1

    .line 429
    invoke-direct/range {v0 .. v5}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->_injectPtr(FFIJ)V

    :cond_45
    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, v6

    move-wide v4, p1

    .line 432
    invoke-direct/range {v0 .. v5}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->_injectPtr(FFIJ)V

    .line 433
    invoke-direct {p0, p4, p5, v6}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->setLastPointerEvent(FFI)V

    .line 420
    return-void
.end method

.method private sendText(ILjava/lang/String;)V
    .registers 12
    .param p1, "source"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "buff":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 233
    .local v3, "escapeFlag":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ge v5, v7, :cond_2e

    .line 234
    if-eqz v3, :cond_22

    .line 235
    const/4 v3, 0x0

    .line 236
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x73

    if-ne v7, v8, :cond_22

    .line 237
    const/16 v7, 0x20

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 238
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 241
    :cond_22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x25

    if-ne v7, v8, :cond_2b

    .line 242
    const/4 v3, 0x1

    .line 233
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 245
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 246
    .local v1, "chars":[C
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v6

    .line 247
    .local v6, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v6, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v4

    .line 248
    .local v4, "events":[Landroid/view/KeyEvent;
    const/4 v5, 0x0

    :goto_40
    array-length v7, v4

    if-ge v5, v7, :cond_54

    .line 249
    aget-object v2, v4, v5

    .line 250
    .local v2, "e":Landroid/view/KeyEvent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v7

    if-eq p1, v7, :cond_4e

    .line 251
    invoke-virtual {v2, p1}, Landroid/view/KeyEvent;->setSource(I)V

    .line 253
    :cond_4e
    invoke-direct {p0, v2}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->injectKeyEvent(Landroid/view/KeyEvent;)V

    .line 248
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 230
    .end local v2    # "e":Landroid/view/KeyEvent;
    :cond_54
    return-void
.end method

.method private setLastPointerEvent(FFI)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "action"    # I

    .prologue
    const/4 v1, 0x1

    .line 385
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    if-ne p3, v1, :cond_9

    .line 387
    return-void

    .line 391
    :cond_9
    sput p1, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastPointerX:F

    .line 392
    sput p2, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastPointerY:F

    .line 393
    sput p3, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastPointerAction:I

    .line 383
    return-void
.end method

.method private touchEvent([Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;)V
    .registers 23
    .param p1, "data"    # [Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;

    .prologue
    .line 485
    if-nez p1, :cond_3

    .line 486
    return-void

    .line 488
    :cond_3
    const-string/jumbo v2, "MirrorLink_VNC"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v7, "TouchEvent: total number of touches("

    const/4 v10, 0x0

    aput-object v7, v3, v10

    move-object/from16 v0, p1

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v3, v10

    const-string/jumbo v7, ")"

    const/4 v10, 0x2

    aput-object v7, v3, v10

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_28

    .line 490
    return-void

    .line 492
    :cond_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 493
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastDownTime:J

    sub-long v2, v4, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastDownTime:J

    .line 496
    move-object/from16 v0, p1

    array-length v2, v0

    invoke-static {v2}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 497
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    move-object/from16 v0, p1

    array-length v2, v0

    invoke-static {v2}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 499
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_46
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_7e

    .line 500
    aget-object v2, v8, v19

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 501
    aget-object v2, v8, v19

    aget-object v3, p1, v19

    iget v3, v3, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->pointerId:I

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 503
    aget-object v2, v9, v19

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 504
    aget-object v2, v9, v19

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 505
    aget-object v2, v9, v19

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 506
    aget-object v2, v9, v19

    aget-object v3, p1, v19

    iget v3, v3, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->x:F

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 507
    aget-object v2, v9, v19

    aget-object v3, p1, v19

    iget v3, v3, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;->y:F

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 499
    add-int/lit8 v19, v19, 0x1

    goto :goto_46

    .line 510
    :cond_7e
    const/16 v19, 0x0

    :goto_80
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_ee

    .line 511
    aget-object v2, p1, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->getTouchAction(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;I)I

    move-result v6

    .line 513
    .local v6, "action":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastDownTime:J

    .line 514
    move-object/from16 v0, p1

    array-length v7, v0

    .line 515
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    .line 513
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 517
    .local v20, "moveEvent":Landroid/view/MotionEvent;
    const/16 v2, 0x1002

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 519
    const-string/jumbo v2, "MirrorLink_VNC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TouchEvent: inject action:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 520
    const-string/jumbo v7, " source:"

    .line 519
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 520
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getSource()I

    move-result v7

    .line 519
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :try_start_dc
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_dc .. :try_end_e6} :catch_e9

    .line 510
    :goto_e6
    add-int/lit8 v19, v19, 0x1

    goto :goto_80

    .line 524
    :catch_e9
    move-exception v18

    .line 525
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_e6

    .line 528
    .end local v6    # "action":I
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .end local v20    # "moveEvent":Landroid/view/MotionEvent;
    :cond_ee
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->lastDownTime:J

    .line 531
    const-string/jumbo v2, "MirrorLink_VNC"

    const-string/jumbo v3, "TouchEvent: inject event success."

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method


# virtual methods
.method public getEventConInstance()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 719
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    if-nez v0, :cond_6

    .line 720
    return-object v1

    .line 722
    :cond_6
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    return-object v0
.end method

.method public getEventMapping()Landroid/util/SparseIntArray;
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventMapping:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getEventMappingKey(I)I
    .registers 3
    .param p1, "clientKeySym"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getSupportedDeviceKeyMask()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedDeviceKeyMask:I

    return v0
.end method

.method public getSupportedKnobKeyMask()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedKnobKeyMask:I

    return v0
.end method

.method public getSupportedMultimediaKeyMask()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedMultimediaKeyMask:I

    return v0
.end method

.method public handleEventConfiguration(SSSSIIIII)V
    .registers 31
    .param p1, "kbdLanguage"    # S
    .param p2, "kbdCountry"    # S
    .param p3, "uiLanguage"    # S
    .param p4, "uiCountry"    # S
    .param p5, "knobKeys"    # I
    .param p6, "deviceKeys"    # I
    .param p7, "multimediaKeys"    # I
    .param p8, "keyRelated"    # I
    .param p9, "pointerRelated"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->SUPPORTED_DEVICE_KEY:[I

    const/4 v3, 0x0

    array-length v5, v4

    :goto_4
    if-ge v3, v5, :cond_8b

    aget v17, v4, v3

    .line 549
    .local v17, "key":I
    invoke-static/range {v17 .. v17}, Lcom/lge/mirrorlink/vnc/lib/TM;->getDeviceKeySym(I)I

    move-result v14

    .line 550
    .local v14, "deviceKeyCode":I
    move/from16 v0, p6

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 551
    sget-object v6, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    .line 552
    .local v16, "internalKeyCode":I
    if-nez v16, :cond_21

    .line 548
    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 555
    :cond_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    move/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 557
    const-string/jumbo v6, "MirrorLink_VNC"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Dev Key mapped: "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 558
    invoke-static {v14}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKeyCodeName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string/jumbo v8, " -> "

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 559
    invoke-static/range {v16 .. v16}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKeyCodeName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 557
    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    .line 561
    .end local v16    # "internalKeyCode":I
    :cond_4e
    sget-object v6, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    .line 562
    .restart local v16    # "internalKeyCode":I
    if-eqz v16, :cond_1e

    .line 565
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    move/from16 v0, v16

    invoke-virtual {v6, v14, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 566
    const-string/jumbo v6, "MirrorLink_VNC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Dev Key not mapped: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v14}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKeyCodeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 567
    const-string/jumbo v8, " use internal map:"

    .line 566
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 572
    .end local v14    # "deviceKeyCode":I
    .end local v16    # "internalKeyCode":I
    .end local v17    # "key":I
    :cond_8b
    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->SUPPORTED_MULTIMEDIA_KEY:[I

    const/4 v3, 0x0

    array-length v5, v4

    :goto_8f
    if-ge v3, v5, :cond_f4

    aget v17, v4, v3

    .line 573
    .restart local v17    # "key":I
    invoke-static/range {v17 .. v17}, Lcom/lge/mirrorlink/vnc/lib/TM;->getMultimediaKeySym(I)I

    move-result v18

    .line 574
    .local v18, "multimediaKeyCode":I
    move/from16 v0, p7

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 575
    sget-object v6, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    .line 576
    .restart local v16    # "internalKeyCode":I
    if-nez v16, :cond_ae

    .line 572
    .end local v16    # "internalKeyCode":I
    :goto_ab
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    .line 579
    .restart local v16    # "internalKeyCode":I
    :cond_ae
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 580
    const-string/jumbo v6, "MirrorLink_VNC"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "MM Key mapped: "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 581
    invoke-static/range {v18 .. v18}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKeyCodeName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string/jumbo v8, " -> "

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 582
    invoke-static/range {v16 .. v16}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKeyCodeName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 580
    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ab

    .line 584
    .end local v16    # "internalKeyCode":I
    :cond_dd
    const-string/jumbo v6, "MirrorLink_VNC"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "MM Key not mapped: "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static/range {v18 .. v18}, Lcom/lge/mirrorlink/vnc/lib/TM;->getKeyCodeName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ab

    .line 590
    .end local v17    # "key":I
    .end local v18    # "multimediaKeyCode":I
    :cond_f4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedKnobKeyMask:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_194

    const/4 v3, 0x0

    move/from16 v0, p5

    invoke-static {v0, v3}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_194

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/high16 v5, 0x30000000

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/high16 v5, 0x30000000

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v5, 0x30000001

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const v5, 0x30000001

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 593
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Knob Key mapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/high16 v5, 0x30000000

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/high16 v6, 0x30000000

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Knob Key mapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x30000001

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v6, 0x30000001

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_194
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedKnobKeyMask:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_238

    const/4 v3, 0x1

    move/from16 v0, p5

    invoke-static {v0, v3}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_238

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v5, 0x30000002

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const v5, 0x30000002

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v5, 0x30000005

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const v5, 0x30000005

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 599
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Knob Key mapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x30000002

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v6, 0x30000002

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Knob Key mapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x30000005

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v6, 0x30000005

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_238
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedKnobKeyMask:I

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_294

    const/4 v3, 0x3

    move/from16 v0, p5

    invoke-static {v0, v3}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_294

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v5, 0x30000008

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const v5, 0x30000008

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 604
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Knob Key mapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x30000008

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v6, 0x30000008

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_294
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedKnobKeyMask:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_338

    const/4 v3, 0x5

    move/from16 v0, p5

    invoke-static {v0, v3}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_338

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v5, 0x3000000a

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const v5, 0x3000000a

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v5, 0x3000000b

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const v5, 0x3000000b

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 609
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Knob Key mapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x3000000a

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v6, 0x3000000a

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Knob Key mapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x3000000b

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v6, 0x3000000b

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_338
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedKnobKeyMask:I

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_3dc

    const/4 v3, 0x6

    move/from16 v0, p5

    invoke-static {v0, v3}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_3dc

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v5, 0x3000000c

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const v5, 0x3000000c

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v5, 0x3000000d

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const v5, 0x3000000d

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 615
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Knob Key mapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x3000000c

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v6, 0x3000000c

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Knob Key mapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x3000000d

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v6, 0x3000000d

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_3dc
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mSupportedKnobKeyMask:I

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_480

    const/4 v3, 0x7

    move/from16 v0, p5

    invoke-static {v0, v3}, Lcom/lge/mirrorlink/common/Utility;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_480

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v5, 0x3000000e

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const v5, 0x3000000e

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v5, 0x3000000f

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const v5, 0x3000000f

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 621
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Knob Key mapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x3000000e

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v6, 0x3000000e

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Knob Key mapped:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x3000000f

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const v6, 0x3000000f

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_480
    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-static {v0, v3}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v11

    .line 628
    .local v11, "ituKey":Z
    const/4 v10, 0x0

    .line 629
    .local v10, "funckey":B
    const/16 v15, 0x8

    .end local v10    # "funckey":B
    .local v15, "i":I
    :goto_48a
    const/16 v3, 0x10

    if-ge v15, v3, :cond_49c

    .line 630
    move/from16 v0, p8

    invoke-static {v0, v15}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v3

    if-eqz v3, :cond_499

    .line 631
    add-int/lit8 v3, v10, 0x1

    int-to-byte v10, v3

    .line 629
    :cond_499
    add-int/lit8 v15, v15, 0x1

    goto :goto_48a

    .line 634
    :cond_49c
    const/4 v3, 0x0

    move/from16 v0, p9

    invoke-static {v0, v3}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v19

    .line 635
    .local v19, "pointerEvent":Z
    const/4 v3, 0x1

    move/from16 v0, p9

    invoke-static {v0, v3}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v20

    .line 636
    .local v20, "touchEvent":Z
    const/4 v12, 0x0

    .line 637
    .local v12, "touch":B
    const/4 v13, 0x0

    .line 639
    .local v13, "pressure":B
    shr-int/lit8 v3, p9, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v12, v3

    .line 640
    .local v12, "touch":B
    shr-int/lit8 v3, p9, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v13, v3

    .local v13, "pressure":B
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 642
    invoke-virtual/range {v2 .. v13}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->setEventConfiguration(SSSSIIIBZBB)V

    .line 645
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v2

    .line 646
    .local v2, "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v2, :cond_4e0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 647
    invoke-virtual/range {v2 .. v13}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onEventConfigurationChanged(SSSSIIIBZBB)V

    .line 546
    :cond_4e0
    return-void
.end method

.method public handleEventMappingRequest(II)V
    .registers 9
    .param p1, "clientKeySym"    # I
    .param p2, "serverKeySym"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 664
    .local v2, "mappedKey":I
    sget-object v3, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->INTERNAL_KEYMAP:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 666
    .local v1, "internalSupportedKey":I
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleEventMappingRequest:cli:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 667
    const-string/jumbo v5, " svr:"

    .line 666
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 667
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 666
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 667
    const-string/jumbo v5, " int:"

    .line 666
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 667
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 666
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    if-eqz p2, :cond_96

    .line 670
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "keymap set :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 671
    const-string/jumbo v5, ":"

    .line 670
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 671
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 670
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 671
    const-string/jumbo v5, "->"

    .line 670
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 671
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 670
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v3, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 675
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 676
    .local v0, "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_95

    .line 677
    invoke-virtual {v0, p2, p1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onEventMappingChanged(II)V

    .line 661
    .end local v0    # "commonAPI":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    :cond_95
    :goto_95
    return-void

    .line 680
    :cond_96
    const-string/jumbo v3, "MirrorLink_VNC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "keymap not changed for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95
.end method

.method public injectKeyEvent(II)V
    .registers 6
    .param p1, "flag"    # I
    .param p2, "code"    # I

    .prologue
    .line 182
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    return-void
.end method

.method public injectPointerEvent(IFF)V
    .registers 9
    .param p1, "buttonMask"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 348
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;-><init>(Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;)V

    .line 350
    .local v0, "evt":Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->time:J

    .line 351
    iput p2, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->x:F

    .line 352
    iput p3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->y:F

    .line 353
    iput p1, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$PointerEvent;->buttonMask:I

    .line 355
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 356
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    iget-object v2, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    return-void
.end method

.method public injectTouchEvent([Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;)V
    .registers 6
    .param p1, "data"    # [Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$TouchData;

    .prologue
    const/4 v3, 0x0

    .line 439
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 440
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mEventInjectHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 437
    return-void
.end method

.method public declared-synchronized quit()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 174
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEventConfiguration(SSSSIIIBZBB)V
    .registers 13
    .param p1, "kbdLanguage"    # S
    .param p2, "kbdCountry"    # S
    .param p3, "uiLanguage"    # S
    .param p4, "uiCountry"    # S
    .param p5, "knobkey"    # I
    .param p6, "devicekey"    # I
    .param p7, "multimediakey"    # I
    .param p8, "funckey"    # B
    .param p9, "itukey"    # Z
    .param p10, "touch"    # B
    .param p11, "pressure"    # B

    .prologue
    .line 705
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    iput-short p1, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->kbdLanguage:S

    .line 706
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    iput-short p2, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->kbdCountry:S

    .line 707
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    iput-short p3, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->uiLanguage:S

    .line 708
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    iput-short p4, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->uiCountry:S

    .line 709
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    iput p5, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->knobkey:I

    .line 710
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    iput p6, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->devicekey:I

    .line 711
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    iput p7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->multimediakey:I

    .line 712
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    iput-byte p8, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->funckey:B

    .line 713
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    iput-boolean p9, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->itukey:Z

    .line 714
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    iput-byte p10, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->touch:B

    .line 715
    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mClientEventConf:Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    iput-byte p11, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->pressure:B

    .line 704
    return-void
.end method

.method public writeAllMapping()V
    .registers 8

    .prologue
    .line 208
    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 209
    .local v2, "size":I
    const-string/jumbo v4, "MirrorLink_VNC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "all event mappings num:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-ge v0, v2, :cond_5b

    .line 211
    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 212
    .local v1, "key":I
    iget-object v4, p0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->mKeyCodeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 213
    .local v3, "value":I
    const-string/jumbo v4, "MirrorLink_VNC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "      value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 206
    .end local v1    # "key":I
    .end local v3    # "value":I
    :cond_5b
    return-void
.end method
