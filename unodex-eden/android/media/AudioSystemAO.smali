.class public Landroid/media/AudioSystemAO;
.super Ljava/lang/Object;
.source "AudioSystemAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Landroid/media/AudioSystemAO;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystemAO;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Landroid/media/AudioSystemAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$android_media_AudioSystemAO$1$5efee7c7proceed(Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 4
    .param p0, "this"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$ALL_CALL_STATES_KEY()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/AudioSystem;->ALL_CALL_STATES_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_ACTIVE()I
    .registers 1

    sget v0, Landroid/media/AudioSystem;->CALL_ACTIVE:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_HOLD()I
    .registers 1

    sget v0, Landroid/media/AudioSystem;->CALL_HOLD:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_INACTIVE()I
    .registers 1

    sget v0, Landroid/media/AudioSystem;->CALL_INACTIVE:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_LOCAL_HOLD()I
    .registers 1

    sget v0, Landroid/media/AudioSystem;->CALL_LOCAL_HOLD:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_STATE_KEY()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/AudioSystem;->CALL_STATE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_IN_FM_RX()I
    .registers 1

    sget v0, Landroid/media/AudioSystem;->DEVICE_IN_FM_RX:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_IN_FM_RX_A2DP()I
    .registers 1

    sget v0, Landroid/media/AudioSystem;->DEVICE_IN_FM_RX_A2DP:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_OUT_FM_TX()I
    .registers 1

    sget v0, Landroid/media/AudioSystem;->DEVICE_OUT_FM_TX:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_OUT_FM_TX_NAME()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_FM_TX_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$FORCE_TWIN_HEADSET()I
    .registers 1

    sget v0, Landroid/media/AudioSystem;->FORCE_TWIN_HEADSET:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$FOR_TWIN_HEADSET()I
    .registers 1

    sget v0, Landroid/media/AudioSystem;->FOR_TWIN_HEADSET:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$STREAM_INCALL_MUSIC()I
    .registers 1

    sget v0, Landroid/media/AudioSystem;->STREAM_INCALL_MUSIC:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$VSID_KEY()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/AudioSystem;->VSID_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$ALL_CALL_STATES_KEY()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "all_call_states"

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$ALL_CALL_STATES_KEY(Ljava/lang/String;)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$CALL_ACTIVE()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_ACTIVE(I)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$CALL_HOLD()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_HOLD(I)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$CALL_INACTIVE()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_INACTIVE(I)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$CALL_LOCAL_HOLD()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_LOCAL_HOLD(I)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$CALL_STATE_KEY()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "call_state"

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_STATE_KEY(Ljava/lang/String;)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_IN_FM_RX()V
    .registers 1

    .prologue
    .line 30
    const/high16 v0, -0x7fe00000

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_IN_FM_RX(I)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_IN_FM_RX_A2DP()V
    .registers 1

    .prologue
    .line 31
    const/high16 v0, -0x7fc00000

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_IN_FM_RX_A2DP(I)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_OUT_FM_TX()V
    .registers 1

    .prologue
    .line 29
    const/high16 v0, 0x1000000

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_OUT_FM_TX(I)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_OUT_FM_TX_NAME()V
    .registers 1

    .prologue
    .line 33
    const-string v0, "fm_tx"

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_OUT_FM_TX_NAME(Ljava/lang/String;)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$FORCE_TWIN_HEADSET()V
    .registers 1

    .prologue
    .line 44
    const/16 v0, 0xe

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$FORCE_TWIN_HEADSET(I)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$FOR_TWIN_HEADSET()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$FOR_TWIN_HEADSET(I)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$STREAM_INCALL_MUSIC()V
    .registers 1

    .prologue
    .line 9
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$STREAM_INCALL_MUSIC(I)V

    return-void
.end method

.method public static ajc$interFieldInit$android_media_AudioSystemAO$android_media_AudioSystem$VSID_KEY()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "vsid"

    invoke-static {v0}, Landroid/media/AudioSystemAO;->ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$VSID_KEY(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$ALL_CALL_STATES_KEY(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Landroid/media/AudioSystem;->ALL_CALL_STATES_KEY:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_ACTIVE(I)V
    .registers 1

    sput p0, Landroid/media/AudioSystem;->CALL_ACTIVE:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_HOLD(I)V
    .registers 1

    sput p0, Landroid/media/AudioSystem;->CALL_HOLD:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_INACTIVE(I)V
    .registers 1

    sput p0, Landroid/media/AudioSystem;->CALL_INACTIVE:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_LOCAL_HOLD(I)V
    .registers 1

    sput p0, Landroid/media/AudioSystem;->CALL_LOCAL_HOLD:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$CALL_STATE_KEY(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Landroid/media/AudioSystem;->CALL_STATE_KEY:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_IN_FM_RX(I)V
    .registers 1

    sput p0, Landroid/media/AudioSystem;->DEVICE_IN_FM_RX:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_IN_FM_RX_A2DP(I)V
    .registers 1

    sput p0, Landroid/media/AudioSystem;->DEVICE_IN_FM_RX_A2DP:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_OUT_FM_TX(I)V
    .registers 1

    sput p0, Landroid/media/AudioSystem;->DEVICE_OUT_FM_TX:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$DEVICE_OUT_FM_TX_NAME(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_FM_TX_NAME:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$FORCE_TWIN_HEADSET(I)V
    .registers 1

    sput p0, Landroid/media/AudioSystem;->FORCE_TWIN_HEADSET:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$FOR_TWIN_HEADSET(I)V
    .registers 1

    sput p0, Landroid/media/AudioSystem;->FOR_TWIN_HEADSET:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$STREAM_INCALL_MUSIC(I)V
    .registers 1

    sput p0, Landroid/media/AudioSystem;->STREAM_INCALL_MUSIC:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$android_media_AudioSystemAO$android_media_AudioSystem$VSID_KEY(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Landroid/media/AudioSystem;->VSID_KEY:Ljava/lang/String;

    return-void
.end method

.method public static ajc$interMethod$android_media_AudioSystemAO$android_media_AudioSystem$isForcedtoMuteByMDM()Z
    .registers 1

    .prologue
    .line 50
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 51
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/cappuccino/IMdm;->checkEnforceMuteDuringCall()Z

    move-result v0

    .line 53
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static synthetic ajc$interMethodDispatch1$android_media_AudioSystemAO$android_media_AudioSystem$isForcedtoMuteByMDM()Z
    .registers 1

    invoke-static {}, Landroid/media/AudioSystem;->ajc$interMethodDispatch2$android_media_AudioSystemAO$isForcedtoMuteByMDM()Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Landroid/media/AudioSystemAO;

    invoke-direct {v0}, Landroid/media/AudioSystemAO;-><init>()V

    sput-object v0, Landroid/media/AudioSystemAO;->ajc$perSingletonInstance:Landroid/media/AudioSystemAO;

    return-void
.end method

.method public static aspectOf()Landroid/media/AudioSystemAO;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Landroid/media/AudioSystemAO;->ajc$perSingletonInstance:Landroid/media/AudioSystemAO;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "android_media_AudioSystemAO"

    sget-object v2, Landroid/media/AudioSystemAO;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Landroid/media/AudioSystemAO;->ajc$perSingletonInstance:Landroid/media/AudioSystemAO;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Landroid/media/AudioSystemAO;->ajc$perSingletonInstance:Landroid/media/AudioSystemAO;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$android_media_AudioSystemAO$1$5efee7c7(Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;
    .registers 6
    .param p1, "device"    # Ljava/lang/Integer;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "device,ajc$aroundClosure"
        value = "(execution(public static String AudioSystem.getOutputDeviceName(int)) && args(device))"
    .end annotation

    .prologue
    .line 36
    invoke-static {p1, p2}, Landroid/media/AudioSystemAO;->ajc$around$android_media_AudioSystemAO$1$5efee7c7proceed(Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "rtVal":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Landroid/media/AudioSystem;->DEVICE_OUT_FM_TX:I

    if-ne v1, v2, :cond_e

    .line 39
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_FM_TX_NAME:Ljava/lang/String;

    .line 41
    :cond_e
    return-object v0
.end method
