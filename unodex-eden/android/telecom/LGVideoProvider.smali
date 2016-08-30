.class public abstract Landroid/telecom/LGVideoProvider;
.super Landroid/telecom/Connection$VideoProvider;
.source "LGVideoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/LGVideoProvider$MessageHandler;,
        Landroid/telecom/LGVideoProvider$MethodOverride;,
        Landroid/telecom/LGVideoProvider$VideoProviderBinderEx;
    }
.end annotation


# static fields
.field public static final CAMERA_FRONT:I = 0x1

.field public static final CAMERA_FRONT2:I = 0x2

.field public static final CAMERA_OFF:I = 0x0

.field public static final CAMERA_ON:I = 0x1

.field public static final CAMERA_REAR:I = 0x0

.field private static final DBG:Z = true

.field public static final DISPLAY_FAR:I = 0x1

.field public static final DISPLAY_NEAR:I = 0x0

.field public static final DISPLAY_NEAR_N_FAR:I = 0x2

.field public static final DISPLAY_SIZE_FULL:I = 0x1

.field public static final DISPLAY_SIZE_NORMAL:I = 0x0

.field private static final MSG_ADD_VIDEO_CALLBACK_EX:I = 0x65

.field private static final MSG_CAPTURE_VIDEO:I = 0x69

.field private static final MSG_CLEAR_ALTERNATIVE_IMAGE:I = 0x6b

.field private static final MSG_REMOVE_VIDEO_CALLBACK_EX:I = 0x73

.field private static final MSG_SET_ALTERNATIVE_IMAGE:I = 0x6a

.field private static final MSG_SET_CAMERA_BRIGHTNESS:I = 0x6c

.field private static final MSG_SET_CAMERA_ONOFF:I = 0x71

.field private static final MSG_SET_DISPLAY_ORIENTATION:I = 0x70

.field private static final MSG_SET_DISPLAY_SIZE:I = 0x6f

.field private static final MSG_SET_MULTITASKING_STATE:I = 0x72

.field private static final MSG_START_BACKGROUND:I = 0x67

.field private static final MSG_STOP_AUDIO:I = 0x66

.field private static final MSG_STOP_BACKGROUND:I = 0x68

.field private static final MSG_SWAP_DISPLAY:I = 0x6d

.field private static final MSG_UPDATE_DISPLAY:I = 0x6e

.field public static final MULTITASKING_ACTIVATED:I = 0x1

.field public static final MULTITASKING_NONE:I = 0x0

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1

.field public static final SESSION_EVENT_AUDIO_PAUSED:I = 0x6a

.field public static final SESSION_EVENT_AUDIO_STARTED:I = 0x65

.field public static final SESSION_EVENT_AUDIO_STOPPED:I = 0x66

.field public static final SESSION_EVENT_CAPTURE_VIDEO_DONE:I = 0x74

.field public static final SESSION_EVENT_CLEAR_ALTERNATIVE_IMAGE_DONE:I = 0x76

.field public static final SESSION_EVENT_MEDIA_STARTED:I = 0x67

.field public static final SESSION_EVENT_PEER_FIRST_VIDEO_RECEIVED:I = 0x68

.field public static final SESSION_EVENT_SET_ALTERNATIVE_IMAGE_DONE:I = 0x75

.field public static final SESSION_EVENT_SET_CAMERA_BRIGHTNESS_DONE:I = 0x71

.field public static final SESSION_EVENT_SET_CAMERA_DONE:I = 0x6f

.field public static final SESSION_EVENT_SET_CAMERA_ONOFF_DONE:I = 0x7b

.field public static final SESSION_EVENT_SET_DISPLAY_ORIENTATION_DONE:I = 0x7a

.field public static final SESSION_EVENT_SET_DISPLAY_SIZE_DONE:I = 0x79

.field public static final SESSION_EVENT_SET_MULTITASKING_STATE_DONE:I = 0x7c

.field public static final SESSION_EVENT_SET_ZOOM_DONE:I = 0x70

.field public static final SESSION_EVENT_START_BACKGROUND_DONE:I = 0x72

.field public static final SESSION_EVENT_STOP_BACKGROUND_DONE:I = 0x73

.field public static final SESSION_EVENT_SURFACE_UPDATE_REQUIRED:I = 0x69

.field public static final SESSION_EVENT_SWAP_DISPLAY_DONE:I = 0x77

.field public static final SESSION_EVENT_UPDATE_DISPLAY_DONE:I = 0x78

.field public static final SESSION_MODIFY_REQUEST_DECLINED:I = 0x25b

.field private static final TAG:Ljava/lang/String; = "LGVideoProvider"


# instance fields
.field private mHandlerEx:Landroid/telecom/LGVideoProvider$MessageHandler;

.field private mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/telecom/IVideoCallbackEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 406
    invoke-direct {p0}, Landroid/telecom/Connection$VideoProvider;-><init>()V

    .line 203
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 408
    new-instance v0, Landroid/telecom/LGVideoProvider$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/LGVideoProvider$MessageHandler;-><init>(Landroid/telecom/LGVideoProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/LGVideoProvider;->mHandlerEx:Landroid/telecom/LGVideoProvider$MessageHandler;

    .line 409
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 6
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Landroid/telecom/Connection$VideoProvider;-><init>(Landroid/os/Looper;)V

    .line 203
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 414
    new-instance v0, Landroid/telecom/LGVideoProvider$MessageHandler;

    invoke-direct {v0, p0, p1}, Landroid/telecom/LGVideoProvider$MessageHandler;-><init>(Landroid/telecom/LGVideoProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/LGVideoProvider;->mHandlerEx:Landroid/telecom/LGVideoProvider$MessageHandler;

    .line 415
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 691
    invoke-static {p0}, Landroid/telecom/LGVideoProvider;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Landroid/telecom/LGVideoProvider;Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 666
    invoke-direct {p0, p1}, Landroid/telecom/LGVideoProvider;->addCallback(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2(Landroid/telecom/LGVideoProvider;Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 682
    invoke-direct {p0, p1}, Landroid/telecom/LGVideoProvider;->removeCallback(Landroid/os/IBinder;)V

    return-void
.end method

.method private addCallback(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 667
    invoke-static {p1}, Lcom/android/internal/telecom/IVideoCallbackEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallbackEx;

    move-result-object v0

    .line 669
    .local v0, "callbackEx":Lcom/android/internal/telecom/IVideoCallbackEx;
    if-nez v0, :cond_c

    .line 670
    const-string v1, "VideoCall callback is null"

    invoke-static {v1}, Landroid/telecom/LGVideoProvider;->log(Ljava/lang/String;)V

    .line 680
    :goto_b
    return-void

    .line 674
    :cond_c
    iget-object v1, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 675
    const-string v1, "VideoCall callback is already present"

    invoke-static {v1}, Landroid/telecom/LGVideoProvider;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 679
    :cond_1a
    iget-object v1, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public static fromVideoProvider(Lcom/android/internal/telecom/IVideoProvider;)Lcom/android/internal/telecom/IVideoProviderEx;
    .registers 2
    .param p0, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    .line 423
    invoke-interface {p0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/IVideoProviderEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProviderEx;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 692
    const-string v0, "LGVideoProvider"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void
.end method

.method private static logImplRequired(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subclass MUST implement this method; "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->log(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 696
    const-string v0, "LGVideoProvider"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void
.end method

.method private removeCallback(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 683
    iget-object v0, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 684
    const-string v0, "VideoCall callback is not present"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->log(Ljava/lang/String;)V

    .line 689
    :goto_d
    return-void

    .line 688
    :cond_e
    iget-object v0, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method


# virtual methods
.method public changeMediaDebugInfo(Lcom/android/ims/LGImsCallMediaDebugInfo;)V
    .registers 7
    .param p1, "debugInfo"    # Lcom/android/ims/LGImsCallMediaDebugInfo;

    .prologue
    .line 585
    iget-object v2, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_33

    .line 586
    iget-object v2, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_15

    .line 596
    :goto_14
    return-void

    .line 586
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallbackEx;

    .line 588
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallbackEx;
    :try_start_1b
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallbackEx;->changeMediaDebugInfo(Lcom/android/ims/LGImsCallMediaDebugInfo;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_e

    .line 589
    :catch_1f
    move-exception v1

    .line 590
    .local v1, "ignored":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "changeMediaDebugInfo :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/LGVideoProvider;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 594
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallbackEx;
    .end local v1    # "ignored":Landroid/os/RemoteException;
    :cond_33
    const-string v2, "No callback on changeMediaDebugInfo"

    invoke-static {v2}, Landroid/telecom/LGVideoProvider;->loge(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public changePeerDisplayOrientation(I)V
    .registers 7
    .param p1, "orientation"    # I

    .prologue
    .line 604
    iget-object v2, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_33

    .line 605
    iget-object v2, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_15

    .line 615
    :goto_14
    return-void

    .line 605
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallbackEx;

    .line 607
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallbackEx;
    :try_start_1b
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallbackEx;->changePeerDisplayOrientation(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_e

    .line 608
    :catch_1f
    move-exception v1

    .line 609
    .local v1, "ignored":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "changePeerDisplayOrientation :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/LGVideoProvider;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 613
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallbackEx;
    .end local v1    # "ignored":Landroid/os/RemoteException;
    :cond_33
    const-string v2, "No callback on changePeerDisplayOrientation"

    invoke-static {v2}, Landroid/telecom/LGVideoProvider;->loge(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public final getInterfaceEx()Lcom/android/internal/telecom/IVideoProviderEx;
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/telecom/LGVideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->fromVideoProvider(Lcom/android/internal/telecom/IVideoProvider;)Lcom/android/internal/telecom/IVideoProviderEx;

    move-result-object v0

    return-object v0
.end method

.method public handleCallSessionEventEx(I)V
    .registers 7
    .param p1, "event"    # I

    .prologue
    .line 623
    iget-object v2, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_3d

    .line 624
    iget-object v2, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_15

    .line 636
    :goto_14
    return-void

    .line 624
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallbackEx;

    .line 626
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallbackEx;
    :try_start_1b
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallbackEx;->handleCallSessionEventEx(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_e

    .line 627
    :catch_1f
    move-exception v1

    .line 628
    .local v1, "ignored":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleCallSessionEventEx :: event="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 628
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/LGVideoProvider;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 633
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallbackEx;
    .end local v1    # "ignored":Landroid/os/RemoteException;
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No callback on handleCallSessionEventEx; event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 633
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telecom/LGVideoProvider;->loge(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public handleCallSessionResultEvent(II)V
    .registers 8
    .param p1, "event"    # I
    .param p2, "result"    # I

    .prologue
    .line 645
    iget-object v2, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_47

    .line 646
    iget-object v2, p0, Landroid/telecom/LGVideoProvider;->mVideoCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_15

    .line 658
    :goto_14
    return-void

    .line 646
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IVideoCallbackEx;

    .line 648
    .local v0, "callback":Lcom/android/internal/telecom/IVideoCallbackEx;
    :try_start_1b
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoCallbackEx;->handleCallSessionResultEvent(II)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_e

    .line 649
    :catch_1f
    move-exception v1

    .line 650
    .local v1, "ignored":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleCallSessionResultEvent :: event="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 650
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/LGVideoProvider;->loge(Ljava/lang/String;)V

    goto :goto_e

    .line 655
    .end local v0    # "callback":Lcom/android/internal/telecom/IVideoCallbackEx;
    .end local v1    # "ignored":Landroid/os/RemoteException;
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No callback on handleCallSessionResultEvent; event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 655
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telecom/LGVideoProvider;->loge(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public onCaptureVideo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "display"    # I

    .prologue
    .line 477
    const-string v0, "onCaptureVideo"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public onClearAlternativeImage()V
    .registers 2

    .prologue
    .line 497
    const-string v0, "onClearAlternativeImage"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public onSetAlternativeImage(Ljava/lang/String;)V
    .registers 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 488
    const-string v0, "onSetAlternativeImage"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public onSetCameraBrightness(I)V
    .registers 3
    .param p1, "brightness"    # I

    .prologue
    .line 508
    const-string v0, "onSetCameraBrightness"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public onSetCameraOnOff(I)V
    .registers 3
    .param p1, "onOff"    # I

    .prologue
    .line 519
    const-string v0, "onSetCameraOnOff"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public onSetDisplayOrientation(II)V
    .registers 4
    .param p1, "display"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 576
    const-string v0, "onSetDisplayOrientation"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public onSetDisplaySize(II)V
    .registers 4
    .param p1, "display"    # I
    .param p2, "size"    # I

    .prologue
    .line 557
    const-string v0, "onSetDisplaySize"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public onSetMultitaskingState(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 447
    const-string v0, "onSetMultitaskingState"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public onStartBackground()V
    .registers 2

    .prologue
    .line 456
    const-string v0, "onStartBackground"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public onStopAudio()V
    .registers 2

    .prologue
    .line 438
    const-string v0, "onStopAudio"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public onStopBackground()V
    .registers 2

    .prologue
    .line 465
    const-string v0, "onStopBackground"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public onSwapDisplay()V
    .registers 2

    .prologue
    .line 528
    const-string v0, "onSwapDisplay"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public onUpdateDisplay(I)V
    .registers 3
    .param p1, "display"    # I

    .prologue
    .line 541
    const-string v0, "onUpdateDisplay"

    invoke-static {v0}, Landroid/telecom/LGVideoProvider;->logImplRequired(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public postMessageForVideoProviderEx(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 663
    iget-object v0, p0, Landroid/telecom/LGVideoProvider;->mHandlerEx:Landroid/telecom/LGVideoProvider$MessageHandler;

    invoke-virtual {v0, p1}, Landroid/telecom/LGVideoProvider$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 664
    return-void
.end method
