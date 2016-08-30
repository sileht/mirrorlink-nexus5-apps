.class public Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;
.super Landroid/os/Handler;
.source "DefaultCommandHandler.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "commander"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;
    .registers 2
    .param p0, "commander"    # Landroid/content/Context;

    .prologue
    .line 14
    new-instance v0, Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;

    invoke-direct {v0, p0}, Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 25
    return-void
.end method

.method public isMock()Z
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
