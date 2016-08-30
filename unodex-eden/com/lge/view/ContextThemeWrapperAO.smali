.class public Lcom/lge/view/ContextThemeWrapperAO;
.super Ljava/lang/Object;
.source "ContextThemeWrapperAO.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
    value = "perthis(setThemePC(android.content.Context, int))"
.end annotation


# static fields
.field private static packagesRequireThemeOverride:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lge/view/ContextThemeWrapperAO;->packagesRequireThemeOverride:Ljava/util/Set;

    .line 11
    sget-object v0, Lcom/lge/view/ContextThemeWrapperAO;->packagesRequireThemeOverride:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/lge/view/ContextThemeWrapperAO;->packagesRequireThemeOverride:Ljava/util/Set;

    const-string v1, "com.android.certinstaller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/lge/view/ContextThemeWrapperAO;->packagesRequireThemeOverride:Ljava/util/Set;

    const-string v1, "com.android.htmlviewer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/lge/view/ContextThemeWrapperAO;->packagesRequireThemeOverride:Ljava/util/Set;

    const-string v1, "com.android.packageinstaller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_view_ContextThemeWrapperAO$1$7908083proceed(Landroid/content/Context;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 6
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
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

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic declared-synchronized ajc$perObjectBind(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    const-class v2, Lcom/lge/view/ContextThemeWrapperAO;

    monitor-enter v2

    :try_start_3
    instance-of v1, p0, Lcom/lge/view/ContextThemeWrapperAO$ajcMightHaveAspect;

    if-eqz v1, :cond_1b

    move-object v0, p0

    check-cast v0, Lcom/lge/view/ContextThemeWrapperAO$ajcMightHaveAspect;

    move-object v1, v0

    invoke-interface {v1}, Lcom/lge/view/ContextThemeWrapperAO$ajcMightHaveAspect;->ajc$com_lge_view_ContextThemeWrapperAO$perObjectGet()Lcom/lge/view/ContextThemeWrapperAO;

    move-result-object v1

    if-nez v1, :cond_1b

    check-cast p0, Lcom/lge/view/ContextThemeWrapperAO$ajcMightHaveAspect;

    new-instance v1, Lcom/lge/view/ContextThemeWrapperAO;

    invoke-direct {v1}, Lcom/lge/view/ContextThemeWrapperAO;-><init>()V

    invoke-interface {p0, v1}, Lcom/lge/view/ContextThemeWrapperAO$ajcMightHaveAspect;->ajc$com_lge_view_ContextThemeWrapperAO$perObjectSet(Lcom/lge/view/ContextThemeWrapperAO;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit v2

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static aspectOf(Ljava/lang/Object;)Lcom/lge/view/ContextThemeWrapperAO;
    .registers 2

    .prologue
    .line 1
    instance-of v0, p0, Lcom/lge/view/ContextThemeWrapperAO$ajcMightHaveAspect;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/lge/view/ContextThemeWrapperAO$ajcMightHaveAspect;

    invoke-interface {p0}, Lcom/lge/view/ContextThemeWrapperAO$ajcMightHaveAspect;->ajc$com_lge_view_ContextThemeWrapperAO$perObjectGet()Lcom/lge/view/ContextThemeWrapperAO;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_c
    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    invoke-direct {v0}, Lorg/aspectj/lang/NoAspectBoundException;-><init>()V

    throw v0

    :cond_12
    return-object v0
.end method

.method public static convertTheme(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeResourceId"    # I

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcom/lge/view/ContextThemeWrapperAO;->packagesRequireThemeOverride:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    sparse-switch p1, :sswitch_data_58

    .line 86
    .end local p1    # "themeResourceId":I
    :cond_f
    :goto_f
    return p1

    .line 32
    .restart local p1    # "themeResourceId":I
    :sswitch_10
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    goto :goto_f

    .line 34
    :sswitch_13
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog:I

    goto :goto_f

    .line 36
    :sswitch_16
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    goto :goto_f

    .line 38
    :sswitch_19
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_MinWidth:I

    goto :goto_f

    .line 40
    :sswitch_1c
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_NoActionBar:I

    goto :goto_f

    .line 42
    :sswitch_1f
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_NoActionBar_MinWidth:I

    goto :goto_f

    .line 44
    :sswitch_22
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_DialogWhenLarge:I

    goto :goto_f

    .line 46
    :sswitch_25
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_DialogWhenLarge_NoActionBar:I

    goto :goto_f

    .line 49
    :sswitch_28
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    goto :goto_f

    .line 51
    :sswitch_2b
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog:I

    goto :goto_f

    .line 53
    :sswitch_2e
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    goto :goto_f

    .line 55
    :sswitch_31
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_MinWidth:I

    goto :goto_f

    .line 57
    :sswitch_34
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_NoActionBar:I

    goto :goto_f

    .line 59
    :sswitch_37
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_NoActionBar_MinWidth:I

    goto :goto_f

    .line 61
    :sswitch_3a
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_DialogWhenLarge:I

    goto :goto_f

    .line 63
    :sswitch_3d
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_DialogWhenLarge_NoActionBar:I

    goto :goto_f

    .line 66
    :sswitch_40
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    goto :goto_f

    .line 68
    :sswitch_43
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog:I

    goto :goto_f

    .line 70
    :sswitch_46
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    goto :goto_f

    .line 72
    :sswitch_49
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_MinWidth:I

    goto :goto_f

    .line 74
    :sswitch_4c
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_NoActionBar:I

    goto :goto_f

    .line 76
    :sswitch_4f
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_NoActionBar_MinWidth:I

    goto :goto_f

    .line 78
    :sswitch_52
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_DialogWhenLarge:I

    goto :goto_f

    .line 80
    :sswitch_55
    sget p1, Lcom/lge/internal/R$style;->Theme_LGE_White_DialogWhenLarge_NoActionBar:I

    goto :goto_f

    .line 30
    :sswitch_data_58
    .sparse-switch
        0x103006b -> :sswitch_10
        0x103006f -> :sswitch_13
        0x1030070 -> :sswitch_19
        0x1030071 -> :sswitch_1c
        0x1030072 -> :sswitch_1f
        0x1030077 -> :sswitch_22
        0x1030078 -> :sswitch_25
        0x1030128 -> :sswitch_28
        0x103012b -> :sswitch_40
        0x103012e -> :sswitch_2b
        0x103012f -> :sswitch_31
        0x1030130 -> :sswitch_34
        0x1030131 -> :sswitch_37
        0x1030132 -> :sswitch_43
        0x1030133 -> :sswitch_49
        0x1030134 -> :sswitch_4c
        0x1030135 -> :sswitch_4f
        0x1030136 -> :sswitch_3a
        0x1030137 -> :sswitch_3d
        0x1030138 -> :sswitch_52
        0x1030139 -> :sswitch_55
        0x10302d1 -> :sswitch_2e
        0x10302d2 -> :sswitch_46
        0x103059f -> :sswitch_16
    .end sparse-switch
.end method

.method public static hasAspect(Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 1
    instance-of v0, p0, Lcom/lge/view/ContextThemeWrapperAO$ajcMightHaveAspect;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/lge/view/ContextThemeWrapperAO$ajcMightHaveAspect;

    invoke-interface {p0}, Lcom/lge/view/ContextThemeWrapperAO$ajcMightHaveAspect;->ajc$com_lge_view_ContextThemeWrapperAO$perObjectGet()Lcom/lge/view/ContextThemeWrapperAO;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public ajc$around$com_lge_view_ContextThemeWrapperAO$1$7908083(Landroid/content/Context;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I
    .param p3, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "context,resid,ajc$aroundClosure"
        value = "setThemePC(context, resid)"
    .end annotation

    .prologue
    .line 22
    invoke-static {p1, p2}, Lcom/lge/view/ContextThemeWrapperAO;->convertTheme(Landroid/content/Context;I)I

    move-result p2

    .line 23
    invoke-static {p1, p2, p3}, Lcom/lge/view/ContextThemeWrapperAO;->ajc$around$com_lge_view_ContextThemeWrapperAO$1$7908083proceed(Landroid/content/Context;ILorg/aspectj/runtime/internal/AroundClosure;)V

    .line 24
    return-void
.end method

.method synthetic ajc$pointcut$$setThemePC$25a(Landroid/content/Context;I)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "context,resid"
        value = "((target(context) && (execution(void android.app.ContextImpl.setTheme(int)) && args(resid))) || (target(context) && (execution(void android.view.ContextThemeWrapper.setTheme(int)) && args(resid))))"
    .end annotation

    .prologue
    .line 19
    return-void
.end method
