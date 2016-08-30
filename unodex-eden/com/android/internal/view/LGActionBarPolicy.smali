.class public Lcom/android/internal/view/LGActionBarPolicy;
.super Lcom/android/internal/view/ActionBarPolicy;
.source "LGActionBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mRcs:Landroid/content/res/Resources;

.field private mShowsOverflowMenuButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/view/LGActionBarPolicy;-><init>(Landroid/content/Context;ILcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;)V

    .line 19
    invoke-direct {p0}, Lcom/android/internal/view/LGActionBarPolicy;->init()V

    .line 23
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_OPTIMUSUI:Z

    if-eqz v2, :cond_2b

    .line 27
    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    .line 28
    const/16 v4, 0x80

    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 29
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2b

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2b

    .line 30
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 31
    const-string v3, "com.lge.app.forceHideOverflowButton"

    const/4 v4, 0x0

    .line 30
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 31
    if-eqz v2, :cond_2c

    .line 30
    :goto_29
    iput-boolean v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mShowsOverflowMenuButton:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2b} :catch_2e

    .line 39
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_2b
    :goto_2b
    return-void

    .line 31
    .restart local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_2c
    const/4 v1, 0x1

    goto :goto_29

    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_2e
    move-exception v1

    goto :goto_2b
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;)V
    .registers 7

    .prologue
    .line 1
    invoke-static {p1, p2}, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->ajc$preInterConstructor$com_android_internal_view_LGActionBarPolicy$ActionBarPolicyAO$com_android_internal_view_LGActionBarPolicy(Landroid/content/Context;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->ajc$postInterConstructor$com_android_internal_view_LGActionBarPolicy$ActionBarPolicyAO$com_android_internal_view_LGActionBarPolicy(Lcom/android/internal/view/LGActionBarPolicy;Landroid/content/Context;I)V

    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 96
    iput-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    .line 97
    iput-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    .line 98
    iput-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->aspectOf()Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v2}, Lcom/android/internal/view/LGActionBarPolicy;->mContext_aroundBody1$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_42

    .line 101
    invoke-static {}, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->aspectOf()Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v2}, Lcom/android/internal/view/LGActionBarPolicy;->mContext_aroundBody3$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 102
    .local v0, "mWrapperContext":Landroid/view/ContextThemeWrapper;
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_41

    .line 103
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    .line 104
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    .line 105
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    .line 112
    .end local v0    # "mWrapperContext":Landroid/view/ContextThemeWrapper;
    :cond_41
    :goto_41
    return-void

    .line 107
    :cond_42
    invoke-static {}, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->aspectOf()Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v2}, Lcom/android/internal/view/LGActionBarPolicy;->mContext_aroundBody5$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_41

    .line 108
    invoke-static {}, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->aspectOf()Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v2}, Lcom/android/internal/view/LGActionBarPolicy;->mContext_aroundBody7$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    .line 109
    invoke-static {}, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->aspectOf()Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v2}, Lcom/android/internal/view/LGActionBarPolicy;->mContext_aroundBody9$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    .line 110
    invoke-static {}, Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;->aspectOf()Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;

    move-result-object v1

    invoke-static {p0, p0, v1, p0, v2}, Lcom/android/internal/view/LGActionBarPolicy;->mContext_aroundBody11$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    goto :goto_41
.end method

.method private static final mContext_aroundBody0(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;)Landroid/content/Context;
    .registers 3

    .prologue
    .line 100
    iget-object v0, p1, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static final mContext_aroundBody1$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;
    .registers 6
    .param p0, "ajc$this"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p1, "target"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p2, "ajc$aspectInstance"    # Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;
    .param p3, "obj"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 117
    invoke-static {p3}, Lcom/android/internal/view/ActionBarPolicy;->ajc$get$mContext(Lcom/android/internal/view/ActionBarPolicy;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static final mContext_aroundBody10(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;)Landroid/content/Context;
    .registers 3

    .prologue
    .line 110
    iget-object v0, p1, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static final mContext_aroundBody11$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;
    .registers 6
    .param p0, "ajc$this"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p1, "target"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p2, "ajc$aspectInstance"    # Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;
    .param p3, "obj"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 117
    invoke-static {p3}, Lcom/android/internal/view/ActionBarPolicy;->ajc$get$mContext(Lcom/android/internal/view/ActionBarPolicy;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static final mContext_aroundBody2(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;)Landroid/content/Context;
    .registers 3

    .prologue
    .line 101
    iget-object v0, p1, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static final mContext_aroundBody3$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;
    .registers 6
    .param p0, "ajc$this"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p1, "target"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p2, "ajc$aspectInstance"    # Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;
    .param p3, "obj"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 117
    invoke-static {p3}, Lcom/android/internal/view/ActionBarPolicy;->ajc$get$mContext(Lcom/android/internal/view/ActionBarPolicy;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static final mContext_aroundBody4(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;)Landroid/content/Context;
    .registers 3

    .prologue
    .line 107
    iget-object v0, p1, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static final mContext_aroundBody5$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;
    .registers 6
    .param p0, "ajc$this"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p1, "target"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p2, "ajc$aspectInstance"    # Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;
    .param p3, "obj"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 117
    invoke-static {p3}, Lcom/android/internal/view/ActionBarPolicy;->ajc$get$mContext(Lcom/android/internal/view/ActionBarPolicy;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static final mContext_aroundBody6(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;)Landroid/content/Context;
    .registers 3

    .prologue
    .line 108
    iget-object v0, p1, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static final mContext_aroundBody7$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;
    .registers 6
    .param p0, "ajc$this"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p1, "target"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p2, "ajc$aspectInstance"    # Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;
    .param p3, "obj"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 117
    invoke-static {p3}, Lcom/android/internal/view/ActionBarPolicy;->ajc$get$mContext(Lcom/android/internal/view/ActionBarPolicy;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static final mContext_aroundBody8(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;)Landroid/content/Context;
    .registers 3

    .prologue
    .line 109
    iget-object v0, p1, Lcom/android/internal/view/LGActionBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static final mContext_aroundBody9$advice(Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy;Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;Lcom/android/internal/view/LGActionBarPolicy;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/content/Context;
    .registers 6
    .param p0, "ajc$this"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p1, "target"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p2, "ajc$aspectInstance"    # Lcom/android/internal/view/LGActionBarPolicy$ActionBarPolicyAO;
    .param p3, "obj"    # Lcom/android/internal/view/LGActionBarPolicy;
    .param p4, "ajc$aroundClosure"    # Lorg/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 117
    invoke-static {p3}, Lcom/android/internal/view/ActionBarPolicy;->ajc$get$mContext(Lcom/android/internal/view/ActionBarPolicy;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStackedTabMaxWidth()I
    .registers 7

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "useExpandedStackedTabs":Z
    const/4 v0, 0x0

    .line 77
    .local v0, "id":I
    iget-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    if-eqz v2, :cond_1e

    .line 78
    iget-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    .line 79
    const-string v3, "com.lge.action_bar_stacked_tabs_expanded"

    const-string v4, "bool"

    .line 80
    iget-object v5, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    .line 78
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 82
    if-eqz v0, :cond_1e

    .line 83
    iget-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 87
    :cond_1e
    if-eqz v1, :cond_29

    .line 88
    iget-object v2, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    .line 89
    sget v3, Lcom/lge/internal/R$dimen;->action_bar_stacked_tab_expanded_max_width:I

    .line 88
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 91
    :goto_28
    return v2

    :cond_29
    invoke-super {p0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v2

    goto :goto_28
.end method

.method public hasEmbeddedTabs()Z
    .registers 6

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    if-eqz v1, :cond_3a

    .line 52
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/view/LGActionBarPolicy;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_action_bar_embed_tabs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bool"

    .line 54
    iget-object v4, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    if-nez v0, :cond_3a

    .line 58
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    .line 59
    const-string v2, "action_bar_embed_tabs"

    const-string v3, "bool"

    .line 60
    iget-object v4, p0, Lcom/android/internal/view/LGActionBarPolicy;->mPackageName:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 65
    :cond_3a
    if-nez v0, :cond_41

    .line 66
    invoke-super {p0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v1

    .line 69
    :goto_40
    return v1

    :cond_41
    iget-object v1, p0, Lcom/android/internal/view/LGActionBarPolicy;->mRcs:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    goto :goto_40
.end method

.method public showsOverflowMenuButton()Z
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/view/LGActionBarPolicy;->mShowsOverflowMenuButton:Z

    return v0
.end method
