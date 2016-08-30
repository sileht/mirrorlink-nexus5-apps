.class public Landroid/telecom/LGVideoCallImpl;
.super Landroid/telecom/VideoCallImpl;
.source "LGVideoCallImpl.java"

# interfaces
.implements Landroid/telecom/LGVideoCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/LGVideoCallImpl$LGVideoCallImplAO;,
        Landroid/telecom/LGVideoCallImpl$MessageHandler;,
        Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "LGVideoCallImpl"


# instance fields
.field private final mBinder:Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;

.field private mCallback:Landroid/telecom/LGVideoCall$Callback;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Landroid/os/Handler;

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Landroid/telecom/LGVideoCallImpl;->DBG:Z

    return-void

    :cond_e
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public constructor <init>(Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Call;)V
    .registers 6
    .param p1, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p2, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/telecom/VideoCallImpl;-><init>(Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Call;)V

    .line 227
    new-instance v0, Landroid/telecom/LGVideoCallImpl$1;

    invoke-direct {v0, p0}, Landroid/telecom/LGVideoCallImpl$1;-><init>(Landroid/telecom/LGVideoCallImpl;)V

    iput-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 48
    invoke-interface {p1}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProviderEx;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    .line 50
    new-instance v0, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;-><init>(Landroid/telecom/LGVideoCallImpl;Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;)V

    iput-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mBinder:Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;

    .line 53
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    if-eqz v0, :cond_33

    .line 54
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProviderEx;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 55
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mBinder:Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProviderEx;->addVideoCallbackEx(Landroid/os/IBinder;)V

    .line 58
    :cond_33
    sget-boolean v0, Landroid/telecom/LGVideoCallImpl;->DBG:Z

    if-eqz v0, :cond_3c

    .line 59
    const-string v0, "LGVideoCallImpl is created"

    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->log(Ljava/lang/String;)V

    .line 61
    :cond_3c
    return-void
.end method

.method static synthetic access$0(Landroid/telecom/LGVideoCallImpl;)Lcom/android/internal/telecom/IVideoProviderEx;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    return-object v0
.end method

.method static synthetic access$1(Landroid/telecom/LGVideoCallImpl;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Landroid/telecom/LGVideoCallImpl;)Landroid/telecom/LGVideoCall$Callback;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mCallback:Landroid/telecom/LGVideoCall$Callback;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 223
    invoke-static {p0}, Landroid/telecom/LGVideoCallImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Landroid/telecom/LGVideoCallImpl;->DBG:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 224
    const-string v0, "LGVideoCallImpl"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method


# virtual methods
.method public captureVideo(Ljava/lang/String;I)V
    .registers 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "display"    # I

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IVideoProviderEx;->captureVideo(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 160
    :goto_5
    return-void

    .line 157
    :catch_6
    move-exception v0

    .line 158
    .local v0, "ignored":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/telecom/VideoCallImpl;->destroy()V

    .line 65
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mCallback:Landroid/telecom/LGVideoCall$Callback;

    invoke-virtual {p0, v0}, Landroid/telecom/LGVideoCallImpl;->unregisterCallbackEx(Landroid/telecom/LGVideoCall$Callback;)V

    .line 66
    return-void
.end method

.method public registerCallbackEx(Landroid/telecom/LGVideoCall$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/LGVideoCall$Callback;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telecom/LGVideoCallImpl;->registerCallbackEx(Landroid/telecom/LGVideoCall$Callback;Landroid/os/Handler;)V

    .line 75
    return-void
.end method

.method public registerCallbackEx(Landroid/telecom/LGVideoCall$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/LGVideoCall$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/telecom/LGVideoCallImpl;->mCallback:Landroid/telecom/LGVideoCall$Callback;

    .line 85
    if-nez p2, :cond_10

    .line 86
    new-instance v0, Landroid/telecom/LGVideoCallImpl$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/LGVideoCallImpl$MessageHandler;-><init>(Landroid/telecom/LGVideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mHandler:Landroid/os/Handler;

    .line 90
    :goto_f
    return-void

    .line 88
    :cond_10
    new-instance v0, Landroid/telecom/LGVideoCallImpl$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/LGVideoCallImpl$MessageHandler;-><init>(Landroid/telecom/LGVideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/LGVideoCallImpl;->mHandler:Landroid/os/Handler;

    goto :goto_f
.end method

.method public setCameraOnOff(I)V
    .registers 4
    .param p1, "onOff"    # I

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProviderEx;->setCameraOnOff(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 174
    :goto_5
    return-void

    .line 171
    :catch_6
    move-exception v0

    .line 172
    .local v0, "ignored":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setDisplaySize(II)V
    .registers 5
    .param p1, "display"    # I
    .param p2, "size"    # I

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IVideoProviderEx;->setDisplaySize(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 221
    :goto_5
    return-void

    .line 218
    :catch_6
    move-exception v0

    .line 219
    .local v0, "ignored":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setMultitaskingState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProviderEx;->setMultitaskingState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 121
    :goto_5
    return-void

    .line 118
    :catch_6
    move-exception v0

    .line 119
    .local v0, "ignored":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public startBackground()V
    .registers 3

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoProviderEx;->startBackground()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 133
    :goto_5
    return-void

    .line 130
    :catch_6
    move-exception v0

    .line 131
    .local v0, "ignored":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public stopBackground()V
    .registers 3

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoProviderEx;->stopBackground()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 145
    :goto_5
    return-void

    .line 142
    :catch_6
    move-exception v0

    .line 143
    .local v0, "ignored":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public swapDisplay()V
    .registers 3

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoProviderEx;->swapDisplay()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 186
    :goto_5
    return-void

    .line 183
    :catch_6
    move-exception v0

    .line 184
    .local v0, "ignored":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public unregisterCallbackEx(Landroid/telecom/LGVideoCall$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/LGVideoCall$Callback;

    .prologue
    .line 98
    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mCallback:Landroid/telecom/LGVideoCall$Callback;

    if-eq p1, v1, :cond_5

    .line 109
    :goto_4
    return-void

    .line 102
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mCallback:Landroid/telecom/LGVideoCall$Callback;

    .line 105
    :try_start_8
    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    iget-object v2, p0, Landroid/telecom/LGVideoCallImpl;->mBinder:Landroid/telecom/LGVideoCallImpl$VideoCallbackBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoProviderEx;->removeVideoCallbackEx(Landroid/os/IBinder;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_4

    .line 106
    :catch_10
    move-exception v0

    .line 107
    .local v0, "ignored":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4
.end method

.method public updateDisplay(I)V
    .registers 4
    .param p1, "display"    # I

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProviderEx;->updateDisplay(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 202
    :goto_5
    return-void

    .line 199
    :catch_6
    move-exception v0

    .line 200
    .local v0, "ignored":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method
