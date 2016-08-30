.class public Lcom/lge/preference/VolumePreferenceEx$MethodOverride;
.super Ljava/lang/Object;
.source "VolumePreferenceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/preference/VolumePreferenceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodOverride"
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/preference/VolumePreferenceEx$MethodOverride;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 213
    :try_start_0
    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;

    invoke-direct {v0}, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;-><init>()V

    sput-object v0, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/preference/VolumePreferenceEx$MethodOverride;

    return-void
.end method

.method public static aspectOf()Lcom/lge/preference/VolumePreferenceEx$MethodOverride;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/preference/VolumePreferenceEx$MethodOverride;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_preference_VolumePreferenceEx$MethodOverride"

    sget-object v2, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/preference/VolumePreferenceEx$MethodOverride;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->ajc$perSingletonInstance:Lcom/lge/preference/VolumePreferenceEx$MethodOverride;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static final mStreamType_aroundBody0(Lcom/lge/preference/VolumePreferenceEx$MethodOverride;Lcom/lge/preference/VolumePreferenceEx;)I
    .registers 3

    .prologue
    .line 220
    invoke-static {p1}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->ajc$interFieldGetDispatch$com_lge_preference_VolumePreferenceEx$PrivateAccess$com_lge_preference_VolumePreferenceEx$mStreamType(Lcom/lge/preference/VolumePreferenceEx;)I

    move-result v0

    return v0
.end method

.method private static final mStreamType_aroundBody1$advice(Lcom/lge/preference/VolumePreferenceEx$MethodOverride;Lcom/lge/preference/VolumePreferenceEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx;Lorg/aspectj/runtime/internal/AroundClosure;)I
    .registers 6
    .param p0, "ajc$this"    # Lcom/lge/preference/VolumePreferenceEx$MethodOverride;
    .param p1, "target"    # Lcom/lge/preference/VolumePreferenceEx;
    .param p2, "ajc$aspectInstance"    # Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;
    .param p3, "obj"    # Lcom/lge/preference/VolumePreferenceEx;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 255
    invoke-static {p3}, Landroid/preference/VolumePreference;->ajc$get$mStreamType(Landroid/preference/VolumePreference;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public ajc$after$com_lge_preference_VolumePreferenceEx$MethodOverride$1$99bb3ec8(Lcom/lge/preference/VolumePreferenceEx;Landroid/view/View;)V
    .registers 10
    .param p1, "obj"    # Lcom/lge/preference/VolumePreferenceEx;
    .param p2, "view"    # Landroid/view/View;
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "obj,view"
        value = "(target(obj) && (args(view) && execution(protected void VolumePreferenceEx.onBindDialogView(View))))"
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 219
    const v0, 0x1020388

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 220
    .local v3, "seekBar":Landroid/widget/SeekBar;
    new-instance v0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/lge/preference/VolumePreferenceEx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;->aspectOf()Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;

    move-result-object v1

    invoke-static {p0, p1, v1, p1, v5}, Lcom/lge/preference/VolumePreferenceEx$MethodOverride;->mStreamType_aroundBody1$advice(Lcom/lge/preference/VolumePreferenceEx$MethodOverride;Lcom/lge/preference/VolumePreferenceEx;Lcom/lge/preference/VolumePreferenceEx$PrivateAccess;Lcom/lge/preference/VolumePreferenceEx;Lorg/aspectj/runtime/internal/AroundClosure;)I

    move-result v4

    move-object v1, p1

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;-><init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    invoke-static {p1, v0}, Landroid/preference/VolumePreference;->ajc$set$mSeekBarVolumizer(Landroid/preference/VolumePreference;Landroid/preference/SeekBarVolumizer;)V

    .line 221
    return-void
.end method
