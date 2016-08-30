.class public Lcom/lge/systemservice/core/LGPowerManagerHelper;
.super Ljava/lang/Object;
.source "LGPowerManagerHelper.java"

# interfaces
.implements Lcom/lge/loader/power/ILGPowerManagerLoader;


# static fields
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

.field public static final ID_KNOCKON_WAKEUP:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_LIST_SCROLL:I = 0x9

.field public static final ID_MUSIC_SOUND_CONTROL:I = 0x20

.field public static final ID_SCREENOFF_VOLUPDOWN_LONGPRESS:I = 0x4

.field public static final ID_SCREEN_ROTATION:I = 0x2

.field public static final ID_SOFT_KEY:I = 0xf

.field public static final ID_VIDEO_PLAY:I = 0x28

.field public static final ID_WIFI_TRAFFIC:I = 0x6

.field private static final TAG:Ljava/lang/String; = "LGPowerManagerHelper"


# instance fields
.field private mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/LGPowerManagerHelper;Lcom/lge/systemservice/core/ILGPowerManagerHelper;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-nez v0, :cond_23

    .line 64
    const-string v0, "lgpowermanagerhelper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 65
    iget-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v0, :cond_23

    .line 67
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/LGPowerManagerHelper$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/LGPowerManagerHelper$1;-><init>(Lcom/lge/systemservice/core/LGPowerManagerHelper;)V

    .line 70
    const/4 v2, 0x0

    .line 67
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 74
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    return-object v0

    .line 71
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    goto :goto_23
.end method


# virtual methods
.method public boost(I)I
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 149
    const/4 v1, -0x1

    .line 151
    .local v1, "ret":I
    :try_start_1
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 152
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v2, :cond_e

    .line 153
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/ILGPowerManagerHelper;->boost(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_19

    .line 154
    const/4 v1, 0x0

    .line 163
    :cond_e
    :goto_e
    return v1

    .line 156
    :catch_f
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 158
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "RemoteException:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 161
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public boostCancel(I)I
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 174
    const/4 v1, -0x1

    .line 176
    .local v1, "ret":I
    :try_start_1
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 177
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v2, :cond_e

    .line 178
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/ILGPowerManagerHelper;->boostCancel(I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_18

    move-result v1

    .line 185
    :cond_e
    :goto_e
    return v1

    .line 180
    :catch_f
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "RemoteException:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public isThermalActionTriggered(Ljava/lang/String;)Z
    .registers 6
    .param p1, "scenario"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "ret":Z
    :try_start_1
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 216
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v2, :cond_11

    .line 217
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    invoke-interface {v2, p1}, Lcom/lge/systemservice/core/ILGPowerManagerHelper;->isThermalActionTriggered(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 223
    :cond_11
    :goto_11
    return v1

    .line 219
    :catch_12
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public setGoToSleep()V
    .registers 2

    .prologue
    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 197
    iget-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v0, :cond_f

    .line 198
    iget-object v0, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    invoke-interface {v0}, Lcom/lge/systemservice/core/ILGPowerManagerHelper;->setGoToSleep()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 203
    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public setPowerModePolicy(I)I
    .registers 6
    .param p1, "function"    # I

    .prologue
    .line 106
    const/4 v1, -0x1

    .line 108
    .local v1, "ret":I
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v2}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->setPowerModePolicy(IZ)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 112
    :goto_6
    return v1

    .line 109
    :catch_7
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public declared-synchronized setPowerModePolicy(IZ)I
    .registers 7
    .param p1, "function"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 126
    monitor-enter p0

    const/4 v1, -0x1

    .line 128
    .local v1, "ret":I
    :try_start_2
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 129
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v2, :cond_f

    .line 130
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/ILGPowerManagerHelper;->setPowerModePolicy(IZ)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_11
    .catchall {:try_start_2 .. :try_end_e} :catchall_1a

    move-result v1

    .line 137
    :cond_f
    :goto_f
    monitor-exit p0

    return v1

    .line 134
    :catch_11
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_f

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 132
    :catch_1d
    move-exception v2

    goto :goto_f
.end method

.method public turnOffThermald()V
    .registers 5

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->getService()Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    .line 86
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    if-eqz v2, :cond_c

    .line 87
    iget-object v2, p0, Lcom/lge/systemservice/core/LGPowerManagerHelper;->mService:Lcom/lge/systemservice/core/ILGPowerManagerHelper;

    invoke-interface {v2}, Lcom/lge/systemservice/core/ILGPowerManagerHelper;->turnOffThermald()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_16

    .line 94
    :cond_c
    :goto_c
    return-void

    .line 89
    :catch_d
    move-exception v1

    .line 90
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "Error while turning off thermal daemon."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 91
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_16
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LGPowerManagerHelper"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
