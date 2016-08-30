.class public abstract Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;
.super Landroid/os/Binder;
.source "ISplitWindowPolicyService.java"

# interfaces
.implements Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

.field static final TRANSACTION_cancelSplitMode:I = 0x4

.field static final TRANSACTION_checkIsAfwPackageByTaskId:I = 0x30

.field static final TRANSACTION_checkScreen:I = 0x9

.field static final TRANSACTION_createScreen:I = 0xa

.field static final TRANSACTION_destroyScreen:I = 0x11

.field static final TRANSACTION_exitSplitMode:I = 0x6

.field static final TRANSACTION_getCurrentNumberOfScreens:I = 0x12

.field static final TRANSACTION_getFocusedScreenInfo:I = 0x10

.field static final TRANSACTION_getFocusedScreenZone:I = 0xf

.field static final TRANSACTION_getLastScreenZone:I = 0x3a

.field static final TRANSACTION_getLaunchableSplitAppList:I = 0x32

.field static final TRANSACTION_getMaximumSupportedScreens:I = 0x33

.field static final TRANSACTION_getMinimumScreenSize:I = 0x2b

.field static final TRANSACTION_getRunningActivityInfo:I = 0x25

.field static final TRANSACTION_getRunningApplicationInfo:I = 0x26

.field static final TRANSACTION_getScreenInfo:I = 0xb

.field static final TRANSACTION_getScreenInfoForActivity:I = 0xe

.field static final TRANSACTION_getScreenInfoForZone:I = 0xc

.field static final TRANSACTION_getScreenZoneForActivity:I = 0xd

.field static final TRANSACTION_getSplitAppList:I = 0x31

.field static final TRANSACTION_getSplitButtonPos:I = 0x28

.field static final TRANSACTION_getState:I = 0x7

.field static final TRANSACTION_isAppDrawerOpen:I = 0x38

.field static final TRANSACTION_isShowSlidingIME:I = 0x40

.field static final TRANSACTION_isSplitMode:I = 0x5

.field static final TRANSACTION_isSplitView:I = 0x41

.field static final TRANSACTION_isUseAutoLink:I = 0x3e

.field static final TRANSACTION_isUseAutoSplit:I = 0x3c

.field static final TRANSACTION_notifyOrientationChagned:I = 0x29

.field static final TRANSACTION_notifyScreenFocusChanged:I = 0x2a

.field static final TRANSACTION_prepareSplitMode:I = 0x3

.field static final TRANSACTION_registerActivityStateChangedListener:I = 0x17

.field static final TRANSACTION_registerScreenFocusChangedListener:I = 0x15

.field static final TRANSACTION_registerScreenInfoChangedListener:I = 0x13

.field static final TRANSACTION_registerScreenStateChangedListener:I = 0x19

.field static final TRANSACTION_registerSplitButtonStateChangedListener:I = 0x1d

.field static final TRANSACTION_registerSplitModeChangedListener:I = 0x1

.field static final TRANSACTION_registerSplitUIServiceChangedListener:I = 0x21

.field static final TRANSACTION_registerSplitWindowStateChangedListener:I = 0x1f

.field static final TRANSACTION_registerTopRunningActivityChangedListener:I = 0x1b

.field static final TRANSACTION_setAppDrawerState:I = 0x37

.field static final TRANSACTION_setLastScreenZone:I = 0x39

.field static final TRANSACTION_setShowSlidingIME:I = 0x3f

.field static final TRANSACTION_setUseAutoLink:I = 0x3d

.field static final TRANSACTION_setUseAutoSplit:I = 0x3b

.field static final TRANSACTION_startTest:I = 0x34

.field static final TRANSACTION_stopTest:I = 0x35

.field static final TRANSACTION_supportMultipleInstanceByClass:I = 0x2f

.field static final TRANSACTION_supportMultipleInstanceByPackage:I = 0x2d

.field static final TRANSACTION_supportSplitWindow:I = 0x2c

.field static final TRANSACTION_supportSplitWindowByClass:I = 0x2e

.field static final TRANSACTION_switchScreens:I = 0x8

.field static final TRANSACTION_systemReady:I = 0x36

.field static final TRANSACTION_unregisterActivityStateChangedListener:I = 0x18

.field static final TRANSACTION_unregisterScreenFocusChangedListener:I = 0x16

.field static final TRANSACTION_unregisterScreenInfoChangedListener:I = 0x14

.field static final TRANSACTION_unregisterScreenStateChangedListener:I = 0x1a

.field static final TRANSACTION_unregisterSplitButtonStateChangedListener:I = 0x1e

.field static final TRANSACTION_unregisterSplitModeChangedListener:I = 0x2

.field static final TRANSACTION_unregisterSplitUIServiceChangedListener:I = 0x22

.field static final TRANSACTION_unregisterSplitWindowStateChangedListener:I = 0x20

.field static final TRANSACTION_unregisterTopRunningActivityChangedListener:I = 0x1c

.field static final TRANSACTION_updateActivityStateChanged:I = 0x24

.field static final TRANSACTION_updateRunningActivity:I = 0x23

.field static final TRANSACTION_updateSplitButtonPos:I = 0x27


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_606

    .line 742
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_9
    return v9

    .line 43
    :sswitch_a
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/ISplitModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitModeChangedListener;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Lcom/lge/zdi/splitwindow/ISplitModeChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->registerSplitModeChangedListener(Lcom/lge/zdi/splitwindow/ISplitModeChangedListener;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 57
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitModeChangedListener;
    :sswitch_24
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/ISplitModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitModeChangedListener;

    move-result-object v1

    .line 60
    .restart local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitModeChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->unregisterSplitModeChangedListener(Lcom/lge/zdi/splitwindow/ISplitModeChangedListener;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 66
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitModeChangedListener;
    :sswitch_38
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->prepareSplitMode()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 73
    :sswitch_44
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->cancelSplitMode()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 80
    :sswitch_50
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->isSplitMode()Z

    move-result v8

    .line 82
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v8, :cond_5f

    move v0, v9

    :cond_5f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v8    # "_result":Z
    :sswitch_63
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7d

    move v1, v9

    .line 91
    .local v1, "_arg0":Z
    :goto_6f
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->exitSplitMode(Z)Z

    move-result v8

    .line 92
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v8, :cond_79

    move v0, v9

    :cond_79
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_7d
    move v1, v0

    .line 90
    goto :goto_6f

    .line 98
    :sswitch_7f
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getState()I

    move-result v8

    .line 100
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 106
    .end local v8    # "_result":I
    :sswitch_90
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->switchScreens(II)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 117
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_a5
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_d7

    .line 120
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 126
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_d9

    .line 127
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 132
    .local v2, "_arg1":Landroid/content/Intent;
    :goto_c6
    invoke-virtual {p0, v1, v2}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->checkScreen(Landroid/content/Intent;Landroid/content/Intent;)Lcom/lge/zdi/splitwindow/LaunchedScreen;

    move-result-object v8

    .line 133
    .local v8, "_result":Lcom/lge/zdi/splitwindow/LaunchedScreen;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v8, :cond_db

    .line 135
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v8, p3, v9}, Lcom/lge/zdi/splitwindow/LaunchedScreen;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 123
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v8    # "_result":Lcom/lge/zdi/splitwindow/LaunchedScreen;
    :cond_d7
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_b8

    .line 130
    :cond_d9
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_c6

    .line 139
    .restart local v8    # "_result":Lcom/lge/zdi/splitwindow/LaunchedScreen;
    :cond_db
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 145
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v8    # "_result":Lcom/lge/zdi/splitwindow/LaunchedScreen;
    :sswitch_e0
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->createScreen(II)I

    move-result v8

    .line 151
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 157
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_f9
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getScreenInfo(I)Lcom/lge/zdi/splitwindow/ScreenInfo;

    move-result-object v8

    .line 161
    .local v8, "_result":Lcom/lge/zdi/splitwindow/ScreenInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v8, :cond_113

    .line 163
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {v8, p3, v9}, Lcom/lge/zdi/splitwindow/ScreenInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 167
    :cond_113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 173
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Lcom/lge/zdi/splitwindow/ScreenInfo;
    :sswitch_118
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getScreenInfoForZone(I)Lcom/lge/zdi/splitwindow/ScreenInfo;

    move-result-object v8

    .line 177
    .restart local v8    # "_result":Lcom/lge/zdi/splitwindow/ScreenInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v8, :cond_132

    .line 179
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {v8, p3, v9}, Lcom/lge/zdi/splitwindow/ScreenInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 183
    :cond_132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 189
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Lcom/lge/zdi/splitwindow/ScreenInfo;
    :sswitch_137
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 192
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getScreenZoneForActivity(Landroid/os/IBinder;)I

    move-result v8

    .line 193
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 199
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_result":I
    :sswitch_14c
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 202
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getScreenInfoForActivity(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ScreenInfo;

    move-result-object v8

    .line 203
    .local v8, "_result":Lcom/lge/zdi/splitwindow/ScreenInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v8, :cond_166

    .line 205
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v8, p3, v9}, Lcom/lge/zdi/splitwindow/ScreenInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 209
    :cond_166
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 215
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_result":Lcom/lge/zdi/splitwindow/ScreenInfo;
    :sswitch_16b
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getFocusedScreenZone()I

    move-result v8

    .line 217
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 223
    .end local v8    # "_result":I
    :sswitch_17c
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getFocusedScreenInfo()Lcom/lge/zdi/splitwindow/ScreenInfo;

    move-result-object v8

    .line 225
    .local v8, "_result":Lcom/lge/zdi/splitwindow/ScreenInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v8, :cond_192

    .line 227
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-virtual {v8, p3, v9}, Lcom/lge/zdi/splitwindow/ScreenInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 231
    :cond_192
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 237
    .end local v8    # "_result":Lcom/lge/zdi/splitwindow/ScreenInfo;
    :sswitch_197
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 240
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->destroyScreen(I)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 246
    .end local v1    # "_arg0":I
    :sswitch_1a8
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getCurrentNumberOfScreens()I

    move-result v8

    .line 248
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 254
    .end local v8    # "_result":I
    :sswitch_1b9
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener;

    move-result-object v1

    .line 257
    .local v1, "_arg0":Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->registerScreenInfoChangedListener(Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 263
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener;
    :sswitch_1ce
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener;

    move-result-object v1

    .line 266
    .restart local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->unregisterScreenInfoChangedListener(Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 272
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IScreenInfoChangedListener;
    :sswitch_1e3
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener;

    move-result-object v1

    .line 275
    .local v1, "_arg0":Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->registerScreenFocusChangedListener(Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 281
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener;
    :sswitch_1f8
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener;

    move-result-object v1

    .line 284
    .restart local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->unregisterScreenFocusChangedListener(Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener;)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 290
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IScreenFocusChangedListener;
    :sswitch_20d
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/IActivityStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/IActivityStateChangedListener;

    move-result-object v1

    .line 293
    .local v1, "_arg0":Lcom/lge/zdi/splitwindow/IActivityStateChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->registerActivityStateChangedListener(Lcom/lge/zdi/splitwindow/IActivityStateChangedListener;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 299
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IActivityStateChangedListener;
    :sswitch_222
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/IActivityStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/IActivityStateChangedListener;

    move-result-object v1

    .line 302
    .restart local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IActivityStateChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->unregisterActivityStateChangedListener(Lcom/lge/zdi/splitwindow/IActivityStateChangedListener;)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 308
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IActivityStateChangedListener;
    :sswitch_237
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/IScreenStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/IScreenStateChangedListener;

    move-result-object v1

    .line 311
    .local v1, "_arg0":Lcom/lge/zdi/splitwindow/IScreenStateChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->registerScreenStateChangedListener(Lcom/lge/zdi/splitwindow/IScreenStateChangedListener;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 317
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IScreenStateChangedListener;
    :sswitch_24c
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/IScreenStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/IScreenStateChangedListener;

    move-result-object v1

    .line 320
    .restart local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IScreenStateChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->unregisterScreenStateChangedListener(Lcom/lge/zdi/splitwindow/IScreenStateChangedListener;)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 326
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/IScreenStateChangedListener;
    :sswitch_261
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener;

    move-result-object v1

    .line 329
    .local v1, "_arg0":Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->registerTopRunningActivityChangedListener(Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener;)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 335
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener;
    :sswitch_276
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener;

    move-result-object v1

    .line 338
    .restart local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->unregisterTopRunningActivityChangedListener(Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener;)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 344
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ITopRunningActivityChangedListener;
    :sswitch_28b
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;

    move-result-object v1

    .line 347
    .local v1, "_arg0":Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->registerSplitButtonStateChangedListener(Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 353
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;
    :sswitch_2a0
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;

    move-result-object v1

    .line 356
    .restart local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->unregisterSplitButtonStateChangedListener(Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 362
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitButtonStateChangedListener;
    :sswitch_2b5
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener;

    move-result-object v1

    .line 365
    .local v1, "_arg0":Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->registerSplitWindowStateChangedListener(Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 371
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener;
    :sswitch_2ca
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener;

    move-result-object v1

    .line 374
    .restart local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->unregisterSplitWindowStateChangedListener(Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener;)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 380
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitWindowStateChangedListener;
    :sswitch_2df
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;

    move-result-object v1

    .line 383
    .local v1, "_arg0":Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->registerSplitUIServiceChangedListener(Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 389
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;
    :sswitch_2f4
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;

    move-result-object v1

    .line 392
    .restart local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->unregisterSplitUIServiceChangedListener(Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 398
    .end local v1    # "_arg0":Lcom/lge/zdi/splitwindow/ISplitUIServiceChangedListener;
    :sswitch_309
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 402
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_328

    .line 403
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 408
    .local v2, "_arg1":Landroid/content/pm/ActivityInfo;
    :goto_320
    invoke-virtual {p0, v1, v2}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->updateRunningActivity(ILandroid/content/pm/ActivityInfo;)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 406
    .end local v2    # "_arg1":Landroid/content/pm/ActivityInfo;
    :cond_328
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/pm/ActivityInfo;
    goto :goto_320

    .line 414
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/pm/ActivityInfo;
    :sswitch_32a
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_367

    move v1, v9

    .line 418
    .local v1, "_arg0":Z
    :goto_336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 420
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_369

    move v3, v9

    .line 422
    .local v3, "_arg2":Z
    :goto_341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_36b

    .line 423
    sget-object v10, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    .line 429
    .local v4, "_arg3":Landroid/content/pm/ActivityInfo;
    :goto_34f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 431
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 433
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_36d

    move v7, v9

    .local v7, "_arg6":Z
    :goto_35e
    move-object v0, p0

    .line 434
    invoke-virtual/range {v0 .. v7}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->updateActivityStateChanged(ZIZLandroid/content/pm/ActivityInfo;IIZ)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/content/pm/ActivityInfo;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Z
    :cond_367
    move v1, v0

    .line 416
    goto :goto_336

    .restart local v1    # "_arg0":Z
    .restart local v2    # "_arg1":I
    :cond_369
    move v3, v0

    .line 420
    goto :goto_341

    .line 426
    .restart local v3    # "_arg2":Z
    :cond_36b
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/content/pm/ActivityInfo;
    goto :goto_34f

    .restart local v5    # "_arg4":I
    .restart local v6    # "_arg5":I
    :cond_36d
    move v7, v0

    .line 433
    goto :goto_35e

    .line 440
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Landroid/content/pm/ActivityInfo;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :sswitch_36f
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getRunningActivityInfo(I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 444
    .local v8, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    if-eqz v8, :cond_389

    .line 446
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    invoke-virtual {v8, p3, v9}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 450
    :cond_389
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 456
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_38e
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 459
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getRunningApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 460
    .local v8, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v8, :cond_3a8

    .line 462
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    invoke-virtual {v8, p3, v9}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 466
    :cond_3a8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 472
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_3ad
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3cc

    .line 475
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 481
    .local v1, "_arg0":Landroid/graphics/Rect;
    :goto_3c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 482
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->updateSplitButtonPos(Landroid/graphics/Rect;I)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 478
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v2    # "_arg1":I
    :cond_3cc
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    goto :goto_3c0

    .line 488
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :sswitch_3ce
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getSplitButtonPos()Landroid/graphics/Rect;

    move-result-object v8

    .line 490
    .local v8, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    if-eqz v8, :cond_3e4

    .line 492
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    invoke-virtual {v8, p3, v9}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 496
    :cond_3e4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 502
    .end local v8    # "_result":Landroid/graphics/Rect;
    :sswitch_3e9
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 506
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_408

    .line 507
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 512
    .local v2, "_arg1":Landroid/graphics/Rect;
    :goto_400
    invoke-virtual {p0, v1, v2}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->notifyOrientationChagned(ILandroid/graphics/Rect;)V

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 510
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    :cond_408
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/graphics/Rect;
    goto :goto_400

    .line 518
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    :sswitch_40a
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 522
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 523
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->notifyScreenFocusChanged(II)V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 529
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_41f
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getMinimumScreenSize(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v8

    .line 533
    .restart local v8    # "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v8, :cond_439

    .line 535
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    invoke-virtual {v8, p3, v9}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 539
    :cond_439
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 545
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Landroid/graphics/Rect;
    :sswitch_43e
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->supportSplitWindow(Ljava/lang/String;)Z

    move-result v8

    .line 549
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    if-eqz v8, :cond_451

    move v0, v9

    :cond_451
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 555
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_456
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 558
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->supportMultipleInstanceByPackage(Ljava/lang/String;)Z

    move-result v8

    .line 559
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    if-eqz v8, :cond_469

    move v0, v9

    :cond_469
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 565
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_46e
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_490

    .line 568
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 573
    .local v1, "_arg0":Landroid/content/ComponentName;
    :goto_481
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->supportSplitWindowByClass(Landroid/content/ComponentName;)Z

    move-result v8

    .line 574
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    if-eqz v8, :cond_48b

    move v0, v9

    :cond_48b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 571
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v8    # "_result":Z
    :cond_490
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_481

    .line 580
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :sswitch_492
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4b4

    .line 583
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 588
    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    :goto_4a5
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->supportMultipleInstanceByClass(Landroid/content/ComponentName;)Z

    move-result v8

    .line 589
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    if-eqz v8, :cond_4af

    move v0, v9

    :cond_4af
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 586
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v8    # "_result":Z
    :cond_4b4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4a5

    .line 595
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4b6
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 598
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->checkIsAfwPackageByTaskId(I)Z

    move-result v8

    .line 599
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    if-eqz v8, :cond_4c9

    move v0, v9

    :cond_4c9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 605
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_4ce
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getSplitAppList()[Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 607
    .local v8, "_result":[Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 613
    .end local v8    # "_result":[Landroid/content/pm/ApplicationInfo;
    :sswitch_4df
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getLaunchableSplitAppList()[Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 615
    .local v8, "_result":[Landroid/content/pm/ResolveInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_9

    .line 621
    .end local v8    # "_result":[Landroid/content/pm/ResolveInfo;
    :sswitch_4f0
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getMaximumSupportedScreens()I

    move-result v8

    .line 623
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 629
    .end local v8    # "_result":I
    :sswitch_501
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->startTest()V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 636
    :sswitch_50e
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->stopTest()V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 643
    :sswitch_51b
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->systemReady()V

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 650
    :sswitch_528
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_53c

    move v1, v9

    .line 653
    .local v1, "_arg0":Z
    :goto_534
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->setAppDrawerState(Z)V

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_53c
    move v1, v0

    .line 652
    goto :goto_534

    .line 659
    :sswitch_53e
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->isAppDrawerOpen()Z

    move-result v8

    .line 661
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v8, :cond_54d

    move v0, v9

    :cond_54d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 667
    .end local v8    # "_result":Z
    :sswitch_552
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 670
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->setLastScreenZone(I)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 676
    .end local v1    # "_arg0":I
    :sswitch_563
    const-string v0, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->getLastScreenZone()I

    move-result v8

    .line 678
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 684
    .end local v8    # "_result":I
    :sswitch_574
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_588

    move v1, v9

    .line 687
    .local v1, "_arg0":Z
    :goto_580
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->setUseAutoSplit(Z)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_588
    move v1, v0

    .line 686
    goto :goto_580

    .line 693
    :sswitch_58a
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->isUseAutoSplit()Z

    move-result v8

    .line 695
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    if-eqz v8, :cond_599

    move v0, v9

    :cond_599
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 701
    .end local v8    # "_result":Z
    :sswitch_59e
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5b2

    move v1, v9

    .line 704
    .restart local v1    # "_arg0":Z
    :goto_5aa
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->setUseAutoLink(Z)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_5b2
    move v1, v0

    .line 703
    goto :goto_5aa

    .line 710
    :sswitch_5b4
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->isUseAutoLink()Z

    move-result v8

    .line 712
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v8, :cond_5c3

    move v0, v9

    :cond_5c3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 718
    .end local v8    # "_result":Z
    :sswitch_5c8
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5dc

    move v1, v9

    .line 721
    .restart local v1    # "_arg0":Z
    :goto_5d4
    invoke-virtual {p0, v1}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->setShowSlidingIME(Z)V

    .line 722
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    :cond_5dc
    move v1, v0

    .line 720
    goto :goto_5d4

    .line 727
    :sswitch_5de
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->isShowSlidingIME()Z

    move-result v8

    .line 729
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    if-eqz v8, :cond_5ed

    move v0, v9

    :cond_5ed
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 735
    .end local v8    # "_result":Z
    :sswitch_5f2
    const-string v10, "com.lge.zdi.splitwindow.ISplitWindowPolicyService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lcom/lge/zdi/splitwindow/ISplitWindowPolicyService$Stub;->isSplitView()Z

    move-result v8

    .line 737
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    if-eqz v8, :cond_601

    move v0, v9

    :cond_601
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    :sswitch_data_606
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_24
        0x3 -> :sswitch_38
        0x4 -> :sswitch_44
        0x5 -> :sswitch_50
        0x6 -> :sswitch_63
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_90
        0x9 -> :sswitch_a5
        0xa -> :sswitch_e0
        0xb -> :sswitch_f9
        0xc -> :sswitch_118
        0xd -> :sswitch_137
        0xe -> :sswitch_14c
        0xf -> :sswitch_16b
        0x10 -> :sswitch_17c
        0x11 -> :sswitch_197
        0x12 -> :sswitch_1a8
        0x13 -> :sswitch_1b9
        0x14 -> :sswitch_1ce
        0x15 -> :sswitch_1e3
        0x16 -> :sswitch_1f8
        0x17 -> :sswitch_20d
        0x18 -> :sswitch_222
        0x19 -> :sswitch_237
        0x1a -> :sswitch_24c
        0x1b -> :sswitch_261
        0x1c -> :sswitch_276
        0x1d -> :sswitch_28b
        0x1e -> :sswitch_2a0
        0x1f -> :sswitch_2b5
        0x20 -> :sswitch_2ca
        0x21 -> :sswitch_2df
        0x22 -> :sswitch_2f4
        0x23 -> :sswitch_309
        0x24 -> :sswitch_32a
        0x25 -> :sswitch_36f
        0x26 -> :sswitch_38e
        0x27 -> :sswitch_3ad
        0x28 -> :sswitch_3ce
        0x29 -> :sswitch_3e9
        0x2a -> :sswitch_40a
        0x2b -> :sswitch_41f
        0x2c -> :sswitch_43e
        0x2d -> :sswitch_456
        0x2e -> :sswitch_46e
        0x2f -> :sswitch_492
        0x30 -> :sswitch_4b6
        0x31 -> :sswitch_4ce
        0x32 -> :sswitch_4df
        0x33 -> :sswitch_4f0
        0x34 -> :sswitch_501
        0x35 -> :sswitch_50e
        0x36 -> :sswitch_51b
        0x37 -> :sswitch_528
        0x38 -> :sswitch_53e
        0x39 -> :sswitch_552
        0x3a -> :sswitch_563
        0x3b -> :sswitch_574
        0x3c -> :sswitch_58a
        0x3d -> :sswitch_59e
        0x3e -> :sswitch_5b4
        0x3f -> :sswitch_5c8
        0x40 -> :sswitch_5de
        0x41 -> :sswitch_5f2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
