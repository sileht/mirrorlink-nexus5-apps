.class public Lcom/android/internal/widget/LockPatternUtilsEx;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "LockPatternUtilsEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;,
        Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;
    }
.end annotation


# static fields
.field public static final ACTION_LOCKSCREEN_SETTING_CHANGED:Ljava/lang/String; = "com.lge.lockscren.intent.LOCKSCREEN_SETTING_CHANGED"

.field public static final BACKUPPIN_FOR_KNOCK_ON_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.backuppinknockoneverchosen"

.field public static final BACKUPPIN_FOR_PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.backuppinpatterneverchosen"

.field public static final KNOCK_CODE_DUPULICATED:Ljava/lang/String; = "lockscreen.knockcode_dupulicated"

.field public static final KNOCK_ON_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.knockoneverchosen"

.field public static final LOCKSCREEN_KNOCK_ON_ENABLED:Ljava/lang/String; = "lockscreen.knockon_enabled"

.field public static final LOCKSCREEN_KNOCK_ON_LENGTH:Ljava/lang/String; = "lockscreen.knockon_length"

.field public static final PASSWORD_EXPIRE_MODE:Ljava/lang/String; = "PASSWORD_EXPIRE"

.field private static final PASSWORD_QUALITY_KNOCK_ON:I = 0x9000

.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsEx"

.field private static final carrier:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLockSettingsServiceEx:Lcom/android/internal/widget/ILockSettingsEx;

.field private final mMultiUserMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    const-string v0, "ro.build.target_operator"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsEx;->carrier:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    .line 78
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mMultiUserMode:Z

    .line 79
    return-void

    .line 77
    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static computePasswordQuality(Ljava/lang/String;I)I
    .registers 8
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "quality"    # I

    .prologue
    const v4, 0x9000

    .line 792
    const/4 v0, 0x0

    .line 793
    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    .line 794
    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 795
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-lt v2, v3, :cond_f

    .line 803
    if-ne p1, v4, :cond_1f

    .line 815
    :goto_e
    return v4

    .line 796
    :cond_f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 797
    const/4 v0, 0x1

    .line 795
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 799
    :cond_1d
    const/4 v1, 0x1

    goto :goto_1a

    .line 806
    :cond_1f
    if-eqz v1, :cond_26

    if-eqz v0, :cond_26

    .line 807
    const/high16 v4, 0x50000

    goto :goto_e

    .line 809
    :cond_26
    if-eqz v1, :cond_2b

    .line 810
    const/high16 v4, 0x40000

    goto :goto_e

    .line 812
    :cond_2b
    if-eqz v0, :cond_30

    .line 813
    const/high16 v4, 0x20000

    goto :goto_e

    .line 815
    :cond_30
    const/4 v4, 0x0

    goto :goto_e
.end method

.method private getCurrentOrCallingUserId()I
    .registers 2

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mMultiUserMode:Z

    if-eqz v0, :cond_12

    .line 889
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    .line 894
    :goto_e
    return v0

    .line 891
    :catch_f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e

    .line 894
    :cond_12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_e
.end method

.method private getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsServiceEx:Lcom/android/internal/widget/ILockSettingsEx;

    if-nez v0, :cond_10

    .line 609
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 608
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettingsEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsServiceEx:Lcom/android/internal/widget/ILockSettingsEx;

    .line 611
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mLockSettingsServiceEx:Lcom/android/internal/widget/ILockSettingsEx;

    return-object v0
.end method

.method private isLockPassword(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 494
    const-string v1, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-static {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)J

    move-result-wide v2

    .line 495
    .local v2, "mode":J
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->NONE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 496
    .local v0, "lockType":Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    invoke-static {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$savedPasswordExists(Lcom/android/internal/widget/LockPatternUtilsEx;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-wide/32 v4, 0x20000

    cmp-long v1, v2, v4

    if-nez v1, :cond_1a

    .line 497
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PIN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 504
    :cond_19
    :goto_19
    return-object v0

    .line 498
    :cond_1a
    invoke-static {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$savedPasswordExists(Lcom/android/internal/widget/LockPatternUtilsEx;I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 499
    const-wide/32 v4, 0x40000

    cmp-long v1, v2, v4

    if-eqz v1, :cond_35

    .line 500
    const-wide/32 v4, 0x50000

    cmp-long v1, v2, v4

    if-eqz v1, :cond_35

    .line 501
    const-wide/32 v4, 0x60000

    cmp-long v1, v2, v4

    if-nez v1, :cond_19

    .line 502
    :cond_35
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PASSWORD:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    goto :goto_19
.end method

.method private saveLockKnockOn(Ljava/lang/String;II)V
    .registers 29
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 340
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v3, v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->setLockKnockOn(Ljava/lang/String;I)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 342
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_96

    .line 343
    if-nez p3, :cond_1a

    .line 347
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$updateEncryptionPassword(Lcom/android/internal/widget/LockPatternUtilsEx;ILjava/lang/String;)V

    .line 350
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->clearKnockCodeDB()V

    .line 351
    const v23, 0x9000

    .line 352
    .local v23, "knockCodeQuality":I
    const-string v3, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v12, v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v3, v12, v13, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)V

    .line 354
    const/4 v5, 0x0

    .line 355
    .local v5, "letters":I
    const/4 v6, 0x0

    .line 356
    .local v6, "uppercase":I
    const/4 v7, 0x0

    .line 357
    .local v7, "lowercase":I
    const/4 v8, 0x0

    .line 358
    .local v8, "numbers":I
    const/4 v9, 0x0

    .line 359
    .local v9, "symbols":I
    const/4 v10, 0x0

    .line 360
    .local v10, "nonletter":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_3a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v22

    if-lt v0, v3, :cond_54

    .line 376
    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 377
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v11, p3

    .line 376
    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 388
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v5    # "letters":I
    .end local v6    # "uppercase":I
    .end local v7    # "lowercase":I
    .end local v8    # "numbers":I
    .end local v9    # "symbols":I
    .end local v10    # "nonletter":I
    .end local v22    # "i":I
    .end local v23    # "knockCodeQuality":I
    :goto_53
    return-void

    .line 361
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v5    # "letters":I
    .restart local v6    # "uppercase":I
    .restart local v7    # "lowercase":I
    .restart local v8    # "numbers":I
    .restart local v9    # "symbols":I
    .restart local v10    # "nonletter":I
    .restart local v22    # "i":I
    .restart local v23    # "knockCodeQuality":I
    :cond_54
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .line 362
    .local v21, "c":C
    const/16 v3, 0x41

    move/from16 v0, v21

    if-lt v0, v3, :cond_6f

    const/16 v3, 0x5a

    move/from16 v0, v21

    if-gt v0, v3, :cond_6f

    .line 363
    add-int/lit8 v5, v5, 0x1

    .line 364
    add-int/lit8 v6, v6, 0x1

    .line 360
    :goto_6c
    add-int/lit8 v22, v22, 0x1

    goto :goto_3a

    .line 365
    :cond_6f
    const/16 v3, 0x61

    move/from16 v0, v21

    if-lt v0, v3, :cond_80

    const/16 v3, 0x7a

    move/from16 v0, v21

    if-gt v0, v3, :cond_80

    .line 366
    add-int/lit8 v5, v5, 0x1

    .line 367
    add-int/lit8 v7, v7, 0x1

    .line 368
    goto :goto_6c

    :cond_80
    const/16 v3, 0x30

    move/from16 v0, v21

    if-lt v0, v3, :cond_91

    const/16 v3, 0x39

    move/from16 v0, v21

    if-gt v0, v3, :cond_91

    .line 369
    add-int/lit8 v8, v8, 0x1

    .line 370
    add-int/lit8 v10, v10, 0x1

    .line 371
    goto :goto_6c

    .line 372
    :cond_91
    add-int/lit8 v9, v9, 0x1

    .line 373
    add-int/lit8 v10, v10, 0x1

    goto :goto_6c

    .line 381
    .end local v5    # "letters":I
    .end local v6    # "uppercase":I
    .end local v7    # "lowercase":I
    .end local v8    # "numbers":I
    .end local v9    # "symbols":I
    .end local v10    # "nonletter":I
    .end local v21    # "c":C
    .end local v22    # "i":I
    .end local v23    # "knockCodeQuality":I
    :cond_96
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    move/from16 v20, p3

    .line 380
    invoke-virtual/range {v11 .. v20}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a8} :catch_a9

    goto :goto_53

    .line 384
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_a9
    move-exception v24

    .line 386
    .local v24, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtilsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "Unable to save lock password "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53
.end method


# virtual methods
.method public ResetLockoutAttemptDeadline()V
    .registers 5

    .prologue
    .line 413
    .line 414
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)V

    .line 415
    return-void
.end method

.method public ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$getBoolean(Ljava/lang/String;ZI)Z
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLockSettings(Lcom/android/internal/widget/LockPatternUtilsEx;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    return-object v0
.end method

.method public ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$getLong(Ljava/lang/String;JI)J
    .registers 7

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$getTrustManager()Landroid/app/trust/TrustManager;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getTrustManager(Lcom/android/internal/widget/LockPatternUtilsEx;)Landroid/app/trust/TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$savedPasswordExists(I)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$savedPasswordExists(Lcom/android/internal/widget/LockPatternUtilsEx;I)Z

    move-result v0

    return v0
.end method

.method public ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Ljava/lang/String;ZI)V
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$setLong(Ljava/lang/String;JI)V
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$updateEncryptionPassword(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$updateEncryptionPassword(Lcom/android/internal/widget/LockPatternUtilsEx;ILjava/lang/String;)V

    return-void
.end method

.method public changeLockSettingForKidsMode()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 744
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "Power_button_state"

    .line 743
    invoke-static {v4, v5, v8, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 746
    .local v1, "previousButtonState":I
    if-ne v1, v8, :cond_4c

    .line 747
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternUtilsEx;->getPowerButtonInstantlyLocks(I)Z

    move-result v0

    .line 748
    .local v0, "powerButtonState":Z
    const/4 v3, 0x0

    .line 749
    .local v3, "val":I
    if-eqz v0, :cond_4d

    .line 750
    const/4 v3, 0x1

    .line 754
    :goto_1a
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "Power_button_state"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 755
    if-eq v3, v9, :cond_2a

    .line 756
    invoke-virtual {p0, v9, v7}, Lcom/android/internal/widget/LockPatternUtilsEx;->setPowerButtonInstantlyLocks(ZI)V

    .line 758
    :cond_2a
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 759
    const-string v5, "lock_screen_lock_after_timeout"

    .line 758
    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 760
    .local v2, "previousLockTimeout":I
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 762
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "Lock_timeout_before_guest_mode"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 765
    .end local v0    # "powerButtonState":Z
    .end local v2    # "previousLockTimeout":I
    .end local v3    # "val":I
    :cond_4c
    return-void

    .line 752
    .restart local v0    # "powerButtonState":Z
    .restart local v3    # "val":I
    :cond_4d
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public checkBackupPin(Ljava/lang/String;)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    .line 204
    .local v0, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/android/internal/widget/ILockSettingsEx;->checkBackupPin(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v1

    .line 206
    :goto_c
    return v1

    :catch_d
    move-exception v1

    const/4 v1, 0x1

    goto :goto_c
.end method

.method public checkBackupPinFile()Z
    .registers 2

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->savedBackupPinExists()Z

    move-result v0

    return v0
.end method

.method public checkKnockOn(Ljava/lang/String;)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    .line 176
    .local v0, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/android/internal/widget/ILockSettingsEx;->checkKnockOn(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v1

    .line 178
    :goto_c
    return v1

    :catch_d
    move-exception v1

    const/4 v1, 0x1

    goto :goto_c
.end method

.method public checkPasswordKidsMode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    .line 161
    .local v0, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswordKidsMode(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v1

    .line 163
    :goto_c
    return v1

    :catch_d
    move-exception v1

    const/4 v1, 0x1

    goto :goto_c
.end method

.method public checkPasswords(Ljava/lang/String;)Z
    .registers 4
    .param p1, "passwords"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    .line 219
    .local v0, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswords(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v1

    .line 221
    :goto_c
    return v1

    :catch_d
    move-exception v1

    const/4 v1, 0x1

    goto :goto_c
.end method

.method public checkPasswordsGetUsers(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "passwords"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswordsGetUsers(Ljava/lang/String;)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 196
    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_8
.end method

.method public checkPasswordsKidsMode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "passwords"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    .line 185
    .local v0, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2}, Lcom/android/internal/widget/ILockSettingsEx;->checkPasswordsKidsMode(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v1

    .line 187
    :goto_c
    return v1

    :catch_d
    move-exception v1

    const/4 v1, 0x1

    goto :goto_c
.end method

.method public checkPatternKidsMode(Ljava/util/List;)Z
    .registers 5
    .param p1, "pattern"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    .line 145
    .local v0, "userId":I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/internal/widget/ILockSettingsEx;->checkPatternKidsMode(Ljava/lang/String;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_11

    move-result v1

    .line 147
    :goto_10
    return v1

    :catch_11
    move-exception v1

    const/4 v1, 0x1

    goto :goto_10
.end method

.method clearKnockCodeDB()V
    .registers 5

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "KNOCKON_LOCK_SET"

    const/4 v2, 0x0

    .line 825
    const/4 v3, -0x2

    .line 824
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 826
    return-void
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 121
    const-string v2, "device_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 120
    invoke-static {v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    .line 122
    .local v1, "service":Landroid/app/admin/IDevicePolicyManager;
    const/4 v0, 0x0

    .line 123
    .local v0, "attempts":I
    if-eqz v1, :cond_11

    .line 125
    :try_start_d
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_10} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_14

    move-result v0

    .line 130
    :cond_11
    :goto_11
    return v0

    .line 126
    :catch_12
    move-exception v2

    goto :goto_11

    :catch_14
    move-exception v2

    goto :goto_11
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const-wide/32 v4, 0x10000

    .line 454
    const-string v1, "lockscreen.password_type"

    invoke-static {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 459
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_16

    .line 460
    const-string v1, "lockscreen.password_type_alternate"

    invoke-static {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 464
    :cond_16
    return v0
.end method

.method public getLockScreenType()Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    .registers 2

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockScreenType(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    move-result-object v0

    return-object v0
.end method

.method public getLockScreenType(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 535
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->NONE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 536
    .local v0, "lockType":Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 537
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->PATTERN:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 543
    :goto_a
    return-object v0

    .line 538
    :cond_b
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "KNOCKON_LOCK_SET"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 539
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    .line 540
    goto :goto_a

    .line 541
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->isLockPassword(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    move-result-object v0

    goto :goto_a
.end method

.method public getOMADMLockCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 582
    const-string v0, "LockPatternUtilsEx"

    const-string v1, "OMADM getOMADM LockCode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lg_omadm_lwmo_lock_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBackupPinforKnockOnEverChosen()Z
    .registers 4

    .prologue
    .line 726
    const-string v0, "lockscreen.backuppinknockoneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isBackupPinforPatternOnEverChosen()Z
    .registers 4

    .prologue
    .line 703
    const-string v0, "lockscreen.backuppinpatterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isDupulicatedKnockCode()Z
    .registers 4

    .prologue
    .line 671
    const-string v0, "lockscreen.knockcode_dupulicated"

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isDupulicatedKnockCode(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 661
    const-string v0, "lockscreen.knockcode_dupulicated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isKnockOnEverChosen()Z
    .registers 4

    .prologue
    .line 651
    const-string v0, "lockscreen.knockoneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isLockKnockOnEnabled()Z
    .registers 5

    .prologue
    const-wide/32 v2, 0x9000

    .line 833
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$savedPasswordExists(Lcom/android/internal/widget/LockPatternUtilsEx;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "lockscreen.password_type"

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)J

    move-result-wide v0

    .line 834
    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    .line 833
    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public isOMADM()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 594
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lg_omadm_lwmo_lock_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    .line 597
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public isPermanentlyLocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 431
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->isOMADM()Z

    move-result v0

    if-nez v0, :cond_b

    .line 419
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 421
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public migrateAlternateKeyToPasswordKeyIfUsingBioMetric(I)V
    .registers 14
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 842
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->usingBiometricWeak(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 843
    const-string v1, "lockscreen.password_type_alternate"

    invoke-static {p0, v1, v6, v7, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)J

    move-result-wide v10

    .line 846
    .local v10, "alternateKey":J
    const-wide/32 v4, 0x10000

    cmp-long v1, v10, v4

    if-gez v1, :cond_1a

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->clearLock(I)V

    .line 856
    .end local v10    # "alternateKey":J
    :cond_19
    :goto_19
    return-void

    .line 849
    .restart local v10    # "alternateKey":J
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 850
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string v1, "lockscreen.password_type"

    invoke-static {p0, v1, v10, v11, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)V

    .line 851
    const-string v1, "lockscreen.password_type_alternate"

    invoke-static {p0, v1, v6, v7, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)V

    .line 853
    long-to-int v1, v10

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_19
.end method

.method public migrateKnockCodeDbToKnockCodeQuality(I)V
    .registers 14
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 864
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 865
    const-string v5, "KNOCKON_LOCK_SET"

    .line 864
    invoke-static {v4, v5, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_68

    move v10, v1

    .line 866
    .local v10, "isKnockCode":Z
    :goto_11
    const-string v4, "lockscreen.password_type"

    .line 867
    const-wide/16 v6, 0x0

    .line 866
    invoke-static {p0, v4, v6, v7, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)J

    move-result-wide v4

    .line 867
    const-wide/32 v6, 0x20000

    .line 866
    cmp-long v4, v4, v6

    if-nez v4, :cond_6a

    move v11, v1

    .line 869
    .local v11, "isNumericType":Z
    :goto_21
    const-string v1, "LockPatternUtilsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "migrateKnockCodeDbToKnockCodeQuality()  isKnockCode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 870
    const-string v5, ", isNumericType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 869
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    if-eqz v10, :cond_67

    if-eqz v11, :cond_67

    .line 876
    const-string v1, "lockscreen.password_type"

    const-wide/32 v4, 0x9000

    invoke-static {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)V

    .line 878
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 879
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 880
    const-string v4, "KNOCKON_LENGTH_KEY"

    .line 879
    invoke-static {v1, v4, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 881
    .local v2, "length":I
    const v1, 0x9000

    move v4, v3

    move v5, v3

    move v6, v2

    move v7, v3

    move v8, v2

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 884
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "length":I
    :cond_67
    return-void

    .end local v10    # "isKnockCode":Z
    .end local v11    # "isNumericType":Z
    :cond_68
    move v10, v3

    .line 864
    goto :goto_11

    .restart local v10    # "isKnockCode":Z
    :cond_6a
    move v11, v3

    .line 866
    goto :goto_21
.end method

.method public readBackupPinFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->checkBackupPin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reportFailedPasswordAttempt(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 97
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getTrustManager(Lcom/android/internal/widget/LockPatternUtilsEx;)Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 98
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getTrustManager(Lcom/android/internal/widget/LockPatternUtilsEx;)Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportRequireCredentialEntry(I)V

    .line 99
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 107
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getTrustManager(Lcom/android/internal/widget/LockPatternUtilsEx;)Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 108
    return-void
.end method

.method public rollbackLockSettingForNormalMode()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 769
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "Power_button_state"

    .line 768
    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 771
    .local v0, "previousButtonState":I
    if-eq v0, v7, :cond_45

    .line 772
    if-ne v0, v2, :cond_46

    :goto_14
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/LockPatternUtilsEx;->setPowerButtonInstantlyLocks(ZI)V

    .line 773
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 774
    const-string v4, "Power_button_state"

    .line 773
    invoke-static {v2, v4, v7, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 775
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    .line 776
    const-string v5, "com.lge.intent.action.UPDATE_POWER_BUTTON_INSTANT_LOCK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 779
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "Lock_timeout_before_guest_mode"

    .line 778
    invoke-static {v2, v4, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 781
    .local v1, "previousLockTimeout":I
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 782
    const-string v3, "lock_screen_lock_after_timeout"

    .line 781
    invoke-static {v2, v3, v1, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 785
    .end local v1    # "previousLockTimeout":I
    :cond_45
    return-void

    :cond_46
    move v2, v3

    .line 772
    goto :goto_14
.end method

.method public saveBackupPin(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveLockBackupPin(Ljava/lang/String;I)V

    .line 320
    return-void
.end method

.method public saveKnockOnPassword(Ljava/lang/String;I)V
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveLockKnockOn(Ljava/lang/String;II)V

    .line 623
    if-eqz p1, :cond_13

    .line 624
    const-string v0, "lockscreen.knockoneverchosen"

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)V

    .line 626
    :cond_13
    return-void
.end method

.method public saveKnockOnPassword(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveLockKnockOn(Ljava/lang/String;II)V

    .line 638
    if-eqz p1, :cond_13

    .line 639
    const-string v0, "lockscreen.knockoneverchosen"

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)V

    .line 641
    :cond_13
    return-void
.end method

.method public saveLockBackupPin(Ljava/lang/String;I)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 393
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettingsEx;->setLockBackupPin(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 409
    :goto_7
    return-void

    .line 405
    :catch_8
    move-exception v0

    .line 407
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtilsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to save lock password "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public saveLockPasswordKidsMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 311
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/widget/ILockSettingsEx;->setLockPasswordKidsMode(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 315
    :goto_b
    return-void

    .line 312
    :catch_c
    move-exception v0

    .line 313
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtilsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to save lock password "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public saveLockPatternKidsMode(Ljava/util/List;)V
    .registers 3
    .param p1, "pattern"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveLockPatternKidsMode(Ljava/util/List;Z)V

    .line 292
    return-void
.end method

.method public saveLockPatternKidsMode(Ljava/util/List;Z)V
    .registers 7
    .param p1, "pattern"    # Ljava/util/List;
    .param p2, "isFallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v3

    .line 297
    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettingsEx;->setLockPatternKidsMode(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 302
    :goto_f
    return-void

    .line 299
    :catch_10
    move-exception v0

    .line 300
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtilsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t save lock pattern kids mode"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public savedBackupPinExists()Z
    .registers 3

    .prologue
    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->haveBackupPin(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 260
    :goto_c
    return v0

    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public savedKidsModeFileExists(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/widget/ILockSettingsEx;->havePasswordKidsMode(ILjava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 251
    :goto_c
    return v0

    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public savedPatternExists(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "exists":Z
    :try_start_1
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLockSettings(Lcom/android/internal/widget/LockPatternUtilsEx;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_b

    move-result v0

    move v1, v0

    .line 486
    :goto_a
    return v1

    :catch_b
    move-exception v1

    const/4 v1, 0x0

    goto :goto_a
.end method

.method public savedPatternKidsModeExists()Z
    .registers 3

    .prologue
    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockSettingsEx()Lcom/android/internal/widget/ILockSettingsEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettingsEx;->havePatternKidsMode(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 237
    :goto_c
    return v0

    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setBackupPinforKnockOnEverChosen(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->setBackupPinforKnockOnEverChosen(ZI)V

    .line 736
    return-void
.end method

.method public setBackupPinforKnockOnEverChosen(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 739
    const-string v0, "lockscreen.backuppinknockoneverchosen"

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)V

    .line 740
    return-void
.end method

.method public setBackupPinforPatternOnEverChosen(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtilsEx;->setBackupPinforPatternOnEverChosen(ZI)V

    .line 713
    return-void
.end method

.method public setBackupPinforPatternOnEverChosen(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 716
    const-string v0, "lockscreen.backuppinpatterneverchosen"

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)V

    .line 717
    return-void
.end method

.method public setDupulicatedKnockCode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 692
    const-string v0, "lockscreen.knockcode_dupulicated"

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)V

    .line 693
    return-void
.end method

.method public setDupulicatedKnockCode(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 682
    const-string v0, "lockscreen.knockcode_dupulicated"

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)V

    .line 683
    return-void
.end method

.method public setOMADMPolicy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 575
    const-string v0, "LockPatternUtilsEx"

    const-string v1, "OMADM setOMADMPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lg_omadm_lwmo_lock_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    const/4 v1, 0x0

    .line 576
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/internal/widget/LockPatternUtilsEx;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 579
    return-void
.end method

.method public setPermanentlyLocked(ZI)V
    .registers 4
    .param p1, "locked"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 443
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)V

    .line 444
    return-void
.end method

.method public setPolicy()V
    .registers 5

    .prologue
    .line 602
    const-string v0, "LockPatternUtilsEx"

    const-string v1, "OMADM setPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-static {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)V

    .line 604
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 87
    const-string v2, "haptic_feedback_enabled"

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_b
    const/4 v3, -0x2

    .line 86
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 88
    return-void

    .line 87
    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public usingBiometricWeak(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 472
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-static {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 473
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method
