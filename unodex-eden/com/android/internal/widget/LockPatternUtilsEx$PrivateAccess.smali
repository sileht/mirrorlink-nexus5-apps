.class public Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;
.super Ljava/lang/Object;
.source "LockPatternUtilsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtilsEx;
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

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 898
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$1$78e9cc67proceed(Lcom/android/internal/widget/LockPatternUtils;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p0, "this"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 913
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$2$fd0ea8a7proceed(Lcom/android/internal/widget/LockPatternUtilsEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/app/trust/TrustManager;
    .registers 4
    .param p0, "this"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 918
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    return-object v0
.end method

.method static synthetic ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$3$9aacfb0cproceed(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .param p0, "this"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 925
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$4$57175d8aproceed(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 10
    .param p0, "this"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 932
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2, p3}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$5$fbaaffe5proceed(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILorg/aspectj/runtime/internal/AroundClosure;)J
    .registers 10
    .param p0, "this"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 939
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2, p3}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->longValue(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$6$82dc453dproceed(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .param p0, "this"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 946
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p4, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$7$10954072proceed(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 8
    .param p0, "this"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 953
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p4, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$8$719fe2c0proceed(Lcom/android/internal/widget/LockPatternUtilsEx;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/internal/widget/ILockSettings;
    .registers 4
    .param p0, "this"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 958
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method public static ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)Z
    .registers 10
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 907
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->aspectOf()Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v5, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure13;

    invoke-direct {v5, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure13;-><init>([Ljava/lang/Object;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$7$10954072(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLockSettings(Lcom/android/internal/widget/LockPatternUtilsEx;)Lcom/android/internal/widget/ILockSettings;
    .registers 4
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;

    .prologue
    .line 908
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->aspectOf()Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance v2, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure15;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure15;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$8$719fe2c0(Lcom/android/internal/widget/LockPatternUtilsEx;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)J
    .registers 13
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 905
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->aspectOf()Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    move-result-object v1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    invoke-static {p2, p3}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v7, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure9;

    invoke-direct {v7, v0}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure9;-><init>([Ljava/lang/Object;)V

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$5$fbaaffe5(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILorg/aspectj/runtime/internal/AroundClosure;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getTrustManager(Lcom/android/internal/widget/LockPatternUtilsEx;)Landroid/app/trust/TrustManager;
    .registers 4
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;

    .prologue
    .line 902
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->aspectOf()Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance v2, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure3;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure3;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$2$fd0ea8a7(Lcom/android/internal/widget/LockPatternUtilsEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/app/trust/TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$savedPasswordExists(Lcom/android/internal/widget/LockPatternUtilsEx;I)Z
    .registers 6
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "userId"    # I

    .prologue
    .line 901
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->aspectOf()Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure1;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure1;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$1$78e9cc67(Lcom/android/internal/widget/LockPatternUtils;ILorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)V
    .registers 10
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 906
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->aspectOf()Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v5, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure11;

    invoke-direct {v5, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure11;-><init>([Ljava/lang/Object;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$6$82dc453d(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public static ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)V
    .registers 13
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 904
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->aspectOf()Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    move-result-object v1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    invoke-static {p2, p3}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v7, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure7;

    invoke-direct {v7, v0}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure7;-><init>([Ljava/lang/Object;)V

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$4$57175d8a(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public static ajc$interMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$updateEncryptionPassword(Lcom/android/internal/widget/LockPatternUtilsEx;ILjava/lang/String;)V
    .registers 7
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 903
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->aspectOf()Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    new-instance v2, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure5;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess$AjcClosure5;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1, p2, v2}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$3$9aacfb0c(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)Z
    .registers 5
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtilsEx;->ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLockSettings(Lcom/android/internal/widget/LockPatternUtilsEx;)Lcom/android/internal/widget/ILockSettings;
    .registers 2
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)J
    .registers 7
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtilsEx;->ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$getTrustManager(Lcom/android/internal/widget/LockPatternUtilsEx;)Landroid/app/trust/TrustManager;
    .registers 2
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtilsEx;->ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$savedPasswordExists(Lcom/android/internal/widget/LockPatternUtilsEx;I)Z
    .registers 3
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtilsEx;->ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$savedPasswordExists(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)V
    .registers 4
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtilsEx;->ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$setLong(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)V
    .registers 5
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtilsEx;->ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtilsEx$updateEncryptionPassword(Lcom/android/internal/widget/LockPatternUtilsEx;ILjava/lang/String;)V
    .registers 3
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsEx;->ajc$interMethodDispatch2$com_android_internal_widget_LockPatternUtilsEx$updateEncryptionPassword(ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;-><init>()V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    return-void
.end method

.method public static aspectOf()Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_internal_widget_LockPatternUtilsEx$PrivateAccess"

    sget-object v2, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    return-object v0
.end method

.method static final getBoolean_aroundBody12(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)Z
    .registers 5
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method static final getLockSettings_aroundBody14(Lcom/android/internal/widget/LockPatternUtilsEx;)Lcom/android/internal/widget/ILockSettings;
    .registers 2
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;

    .prologue
    .line 908
    const/4 v0, 0x0

    return-object v0
.end method

.method static final getLong_aroundBody8(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)J
    .registers 7
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 905
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static final getTrustManager_aroundBody2(Lcom/android/internal/widget/LockPatternUtilsEx;)Landroid/app/trust/TrustManager;
    .registers 2
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;

    .prologue
    .line 902
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;->ajc$perSingletonInstance:Lcom/android/internal/widget/LockPatternUtilsEx$PrivateAccess;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static final savedPasswordExists_aroundBody0(Lcom/android/internal/widget/LockPatternUtilsEx;I)Z
    .registers 3
    .param p0, "ajc$this_"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p1, "userId"    # I

    .prologue
    .line 901
    const/4 v0, 0x0

    return v0
.end method

.method static final setBoolean_aroundBody10(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;ZI)V
    .registers 4

    .prologue
    .line 906
    return-void
.end method

.method static final setLong_aroundBody6(Lcom/android/internal/widget/LockPatternUtilsEx;Ljava/lang/String;JI)V
    .registers 5

    .prologue
    .line 904
    return-void
.end method

.method static final updateEncryptionPassword_aroundBody4(Lcom/android/internal/widget/LockPatternUtilsEx;ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 903
    return-void
.end method


# virtual methods
.method public ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$1$78e9cc67(Lcom/android/internal/widget/LockPatternUtils;ILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5
    .param p1, "lpuEx"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "lpuEx,userId,ajc$aroundClosure"
        value = "(target(lpuEx) && (execution(private boolean LockPatternUtilsEx.savedPasswordExists(int)) && args(userId)))"
    .end annotation

    .prologue
    .line 914
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->ajc$privMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtils$savedPasswordExists(I)Z

    move-result v0

    return v0
.end method

.method public ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$2$fd0ea8a7(Lcom/android/internal/widget/LockPatternUtilsEx;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/app/trust/TrustManager;
    .registers 4
    .param p1, "lpuEx"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "lpuEx,ajc$aroundClosure"
        value = "(target(lpuEx) && execution(private TrustManager LockPatternUtilsEx.getTrustManager()))"
    .end annotation

    .prologue
    .line 919
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->ajc$privMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtils$getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$3$9aacfb0c(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p1, "lpuEx"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "type"    # I
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "lpuEx,type,password,ajc$aroundClosure"
        value = "(target(lpuEx) && (execution(private void LockPatternUtilsEx.updateEncryptionPassword(int, String)) && args(type, password)))"
    .end annotation

    .prologue
    .line 926
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->ajc$privMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtils$updateEncryptionPassword(ILjava/lang/String;)V

    .line 927
    return-void
.end method

.method public ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$4$57175d8a(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 8
    .param p1, "lpuEx"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "secureSettingKey"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "userHandle"    # I
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "lpuEx,secureSettingKey,value,userHandle,ajc$aroundClosure"
        value = "(target(lpuEx) && (execution(private void LockPatternUtilsEx.setLong(String, long, int)) && args(secureSettingKey, value, userHandle)))"
    .end annotation

    .prologue
    .line 933
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/internal/widget/LockPatternUtils;->ajc$privMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtils$setLong(Ljava/lang/String;JI)V

    .line 934
    return-void
.end method

.method public ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$5$fbaaffe5(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILorg/aspectj/runtime/internal/AroundClosure;)J
    .registers 10
    .param p1, "lpuEx"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "secureSettingKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J
    .param p5, "userHandle"    # I
    .param p6, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "lpuEx,secureSettingKey,defaultValue,userHandle,ajc$aroundClosure"
        value = "(target(lpuEx) && (execution(private long LockPatternUtilsEx.getLong(String, long, int)) && args(secureSettingKey, defaultValue, userHandle)))"
    .end annotation

    .prologue
    .line 940
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/internal/widget/LockPatternUtils;->ajc$privMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtils$getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$6$82dc453d(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p1, "lpuEx"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "secureSettingKey"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .param p4, "userId"    # I
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "lpuEx,secureSettingKey,enabled,userId,ajc$aroundClosure"
        value = "(target(lpuEx) && (execution(private void LockPatternUtilsEx.setBoolean(String, boolean, int)) && args(secureSettingKey, enabled, userId)))"
    .end annotation

    .prologue
    .line 947
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->ajc$privMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtils$setBoolean(Ljava/lang/String;ZI)V

    .line 948
    return-void
.end method

.method public ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$7$10954072(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZILorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 7
    .param p1, "lpuEx"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "secureSettingKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .param p4, "userId"    # I
    .param p5, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "lpuEx,secureSettingKey,defaultValue,userId,ajc$aroundClosure"
        value = "(target(lpuEx) && (execution(private boolean LockPatternUtilsEx.getBoolean(String, boolean, int)) && args(secureSettingKey, defaultValue, userId)))"
    .end annotation

    .prologue
    .line 954
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->ajc$privMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtils$getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public ajc$around$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$8$719fe2c0(Lcom/android/internal/widget/LockPatternUtilsEx;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/internal/widget/ILockSettings;
    .registers 4
    .param p1, "lpuEx"    # Lcom/android/internal/widget/LockPatternUtilsEx;
    .param p2, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "lpuEx,ajc$aroundClosure"
        value = "(target(lpuEx) && execution(private ILockSettings LockPatternUtilsEx.getLockSettings()))"
    .end annotation

    .prologue
    .line 959
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->ajc$privMethod$com_android_internal_widget_LockPatternUtilsEx$PrivateAccess$com_android_internal_widget_LockPatternUtils$getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    return-object v0
.end method
