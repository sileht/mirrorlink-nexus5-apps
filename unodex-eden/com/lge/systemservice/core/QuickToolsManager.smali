.class public Lcom/lge/systemservice/core/QuickToolsManager;
.super Ljava/lang/Object;
.source "QuickToolsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final MODE_HANDLE:I = 0x0

.field public static final MODE_ICONS:I = 0x1

.field static final SERVICE_NAME:Ljava/lang/String; = "quicktools"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/lge/systemservice/core/QuickToolsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/QuickToolsManager;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/systemservice/core/QuickToolsManager;->DEBUG:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-boolean v0, Lcom/lge/systemservice/core/QuickToolsManager;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 31
    sget-object v0, Lcom/lge/systemservice/core/QuickToolsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QuickToolsManager("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_21
    iput-object p1, p0, Lcom/lge/systemservice/core/QuickToolsManager;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public registerQuickToolsListener(Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 48
    sget-boolean v1, Lcom/lge/systemservice/core/QuickToolsManager;->DEBUG:Z

    if-eqz v1, :cond_28

    .line 49
    sget-object v1, Lcom/lge/systemservice/core/QuickToolsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerQuickToolsListener("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_28
    iget-object v1, p0, Lcom/lge/systemservice/core/QuickToolsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->getInstance(Landroid/content/Context;)Lcom/lge/systemservice/core/QuickToolsManagerGlobal;

    move-result-object v0

    .line 52
    .local v0, "global":Lcom/lge/systemservice/core/QuickToolsManagerGlobal;
    if-eqz v0, :cond_34

    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->registerQuickToolsListener(Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;Landroid/os/Handler;)V

    .line 57
    :goto_33
    return-void

    .line 55
    :cond_34
    sget-object v1, Lcom/lge/systemservice/core/QuickToolsManager;->TAG:Ljava/lang/String;

    const-string v2, "QuickToolsManagerGlobal instance is null. skip registerQuickToolsListener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public setVisibility(II)V
    .registers 7
    .param p1, "visibility"    # I
    .param p2, "mode"    # I

    .prologue
    .line 84
    sget-boolean v1, Lcom/lge/systemservice/core/QuickToolsManager;->DEBUG:Z

    if-eqz v1, :cond_28

    .line 85
    sget-object v1, Lcom/lge/systemservice/core/QuickToolsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setVisibility("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_28
    iget-object v1, p0, Lcom/lge/systemservice/core/QuickToolsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->getInstance(Landroid/content/Context;)Lcom/lge/systemservice/core/QuickToolsManagerGlobal;

    move-result-object v0

    .line 88
    .local v0, "global":Lcom/lge/systemservice/core/QuickToolsManagerGlobal;
    if-eqz v0, :cond_34

    .line 89
    invoke-virtual {v0, p1, p2}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->setVisibility(II)V

    .line 93
    :goto_33
    return-void

    .line 91
    :cond_34
    sget-object v1, Lcom/lge/systemservice/core/QuickToolsManager;->TAG:Ljava/lang/String;

    const-string v2, "QuickToolsManagerGlobal instance is null. skip setVisibility"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public unregisterQuickToolsListener(Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;

    .prologue
    .line 66
    sget-boolean v1, Lcom/lge/systemservice/core/QuickToolsManager;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 67
    sget-object v1, Lcom/lge/systemservice/core/QuickToolsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregisterQuickToolsListener("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1e
    iget-object v1, p0, Lcom/lge/systemservice/core/QuickToolsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->getInstance(Landroid/content/Context;)Lcom/lge/systemservice/core/QuickToolsManagerGlobal;

    move-result-object v0

    .line 70
    .local v0, "global":Lcom/lge/systemservice/core/QuickToolsManagerGlobal;
    if-eqz v0, :cond_2a

    .line 71
    invoke-virtual {v0, p1}, Lcom/lge/systemservice/core/QuickToolsManagerGlobal;->unregisterQuickToolsListener(Lcom/lge/systemservice/core/QuickToolsManager$QuickToolsListener;)V

    .line 75
    :goto_29
    return-void

    .line 73
    :cond_2a
    sget-object v1, Lcom/lge/systemservice/core/QuickToolsManager;->TAG:Ljava/lang/String;

    const-string v2, "QuickToolsManagerGlobal instance is null. skip unregisterQuickToolsListener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method
