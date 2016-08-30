.class public Lcom/lge/app/StatusBarManagerProxy;
.super Ljava/lang/Object;
.source "StatusBarManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarManagerProxy"


# instance fields
.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/lge/app/StatusBarManagerProxy;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 20
    return-void
.end method
