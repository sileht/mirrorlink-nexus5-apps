.class public interface abstract Lcom/lge/loader/power/ILGPowerManagerLoader;
.super Ljava/lang/Object;
.source "ILGPowerManagerLoader.java"


# static fields
.field public static final BOOST_APP_LAUNCH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BOOST_KNOCKON_WAKEUP:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BOOST_SCREEN_ROTATION:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_APP_ENTRY_EXIT:I = 0x8

.field public static final ID_APP_LAUNCH:I = 0x1

.field public static final ID_APP_LAUNCH_IN_MENU:I = 0xb

.field public static final ID_APP_SWITCH:I = 0xd

.field public static final ID_BT_MUSIC_PLAY:I = 0x1f

.field public static final ID_CALL_INCOMING:I = 0x33

.field public static final ID_CALL_OUTGOING:I = 0xc

.field public static final ID_CAMERA_CAM_SWITCH:I = 0x10

.field public static final ID_CAMERA_PREVIEW:I = 0x29

.field public static final ID_COVER_OPEN:I = 0x5

.field public static final ID_GESTURE_WAKEUP:I = 0x3

.field public static final ID_HOME_SCROLL:I = 0xe

.field public static final ID_HOTSPOT_TRAFFIC:I = 0x7

.field public static final ID_LIST_SCROLL:I = 0x9

.field public static final ID_MUSIC_SOUND_CONTROL:I = 0x20

.field public static final ID_SCREENOFF_VOLUPDOWN_LONGPRESS:I = 0x4

.field public static final ID_SCREEN_ROTATION:I = 0x2

.field public static final ID_SOFT_KEY:I = 0xf

.field public static final ID_VIDEO_PLAY:I = 0x28

.field public static final ID_WIFI_TRAFFIC:I = 0x6


# virtual methods
.method public abstract boost(I)I
.end method

.method public abstract boostCancel(I)I
.end method

.method public abstract setGoToSleep()V
.end method

.method public abstract setPowerModePolicy(I)I
.end method

.method public abstract setPowerModePolicy(IZ)I
.end method
