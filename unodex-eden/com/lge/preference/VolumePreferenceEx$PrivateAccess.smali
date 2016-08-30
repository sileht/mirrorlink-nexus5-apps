.class public Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;
.super Ljava/lang/Object;
.source "VolumePreferenceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/preference/VolumePreferenceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateAccess"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 224
    :try_start_0
    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_preference_VolumePreferenceEx$PrivateAccess$2$c3df0681proceed(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/widget/SeekBar;
    .registers 4
    .param p0, "this"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_preference_VolumePreferenceEx$PrivateAccess$3$dce11c9aproceed(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/Ringtone;
    .registers 4
    .param p0, "this"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_preference_VolumePreferenceEx$PrivateAccess$4$991e228proceed(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_preference_VolumePreferenceEx$PrivateAccess$5$47696c62proceed(Lcom/lge/preference/VolumePreferenceEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p0, "this"    # Lcom/lge/preference/VolumePreferenceEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_lge_preference_VolumePreferenceEx$PrivateAccess$6$86b75968proceed(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .registers 2

    invoke-static {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->ajc$get$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .registers 2

    invoke-static {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->ajc$get$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mRingtone(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/Ringtone;
    .registers 2

    invoke-static {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->ajc$get$mRingtone(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$mStreamType(Lcom/lge/preference/VolumePreferenceEx;)I
    .registers 2

    invoke-static {p0}, Lcom/lge/preference/VolumePreferenceEx;->ajc$get$mStreamType(Lcom/lge/preference/VolumePreferenceEx;)I

    move-result v0

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)V
    .registers 1

    .prologue
    .line 229
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V
    .registers 1

    .prologue
    .line 226
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mRingtone(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V
    .registers 1

    .prologue
    .line 225
    return-void
.end method

.method public static ajc$interFieldInit$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$mStreamType(Lcom/lge/preference/VolumePreferenceEx;)V
    .registers 1

    .prologue
    .line 227
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->ajc$set$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->ajc$set$mLastProgress(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$mRingtone(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Landroid/media/Ringtone;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->ajc$set$mRingtone(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Landroid/media/Ringtone;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$mStreamType(Lcom/lge/preference/VolumePreferenceEx;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/lge/preference/VolumePreferenceEx;->ajc$set$mStreamType(Lcom/lge/preference/VolumePreferenceEx;I)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$postStartSample(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V
    .registers 4
    .param p0, "ajc$this_"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 231
    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance v2, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess$AjcClosure1;

    invoke-direct {v2, v1}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess$AjcClosure1;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$around$com_lge_preference_VolumePreferenceEx$PrivateAccess$6$86b75968(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$postStartSample(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V
    .registers 1
    .param p0, "ajc$this_"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->ajc$interMethodDispatch2$com_lge_preference_VolumePreferenceEx$postStartSample()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    invoke-direct {v0}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;-><init>()V

    sput-object v0, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    return-void
.end method

.method public static aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_preference_VolumePreferenceEx$PrivateAccess"

    sget-object v2, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static final postStartSample_aroundBody0(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V
    .registers 1

    .prologue
    .line 231
    return-void
.end method


# virtual methods
.method public ajc$after$com_lge_preference_VolumePreferenceEx$PrivateAccess$1$aec90858(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)V
    .registers 3
    .param p1, "outer"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p2, "inner"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "outer,inner"
        value = "(execution(VolumePreferenceEx.SeekBarVolumizerEx.LGVolumePreferenceReceiver.new(..)) && (this(inner) && args(outer, ..)))"
    .end annotation

    .prologue
    .line 235
    invoke-static {p2, p1}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldSetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    .line 236
    return-void
.end method

.method public ajc$around$com_lge_preference_VolumePreferenceEx$PrivateAccess$2$c3df0681(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/widget/SeekBar;
    .registers 4
    .param p1, "obj"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private SeekBar VolumePreferenceEx.SeekBarVolumizerEx.LGVolumePreferenceReceiver.mSeekBar))"
    .end annotation

    .prologue
    .line 240
    invoke-static {p1}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver$mOuter(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;)Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->ajc$get$mSeekBar(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_preference_VolumePreferenceEx$PrivateAccess$3$dce11c9a(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/media/Ringtone;
    .registers 4
    .param p1, "obj"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private Ringtone VolumePreferenceEx.SeekBarVolumizerEx.mRingtone))"
    .end annotation

    .prologue
    .line 245
    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->ajc$get$mRingtone(Landroid/preference/SeekBarVolumizer;)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_lge_preference_VolumePreferenceEx$PrivateAccess$4$991e228(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p1, "obj"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private int VolumePreferenceEx.SeekBarVolumizerEx.mLastProgress))"
    .end annotation

    .prologue
    .line 250
    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->ajc$get$mLastProgress(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_preference_VolumePreferenceEx$PrivateAccess$5$47696c62(Lcom/lge/preference/VolumePreferenceEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 4
    .param p1, "obj"    # Lcom/lge/preference/VolumePreferenceEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && get(private int VolumePreferenceEx.mStreamType))"
    .end annotation

    .prologue
    .line 255
    invoke-static {p1}, Landroid/preference/VolumePreference;->ajc$get$mStreamType(Landroid/preference/VolumePreference;)I

    move-result v0

    return v0
.end method

.method public ajc$around$com_lge_preference_VolumePreferenceEx$PrivateAccess$6$86b75968(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 3
    .param p1, "obj"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "obj,ajc$aroundClosure"
        value = "(target(obj) && execution(private void VolumePreferenceEx.SeekBarVolumizerEx.postStartSample()))"
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/preference/SeekBarVolumizer;->ajc$privMethod$com_lge_preference_VolumePreferenceEx$PrivateAccess$android_preference_SeekBarVolumizer$postStartSample()V

    .line 262
    return-void
.end method
