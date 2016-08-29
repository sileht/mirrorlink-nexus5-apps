.class public Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;
.super Ljava/lang/Object;
.source "TzMlAppRequest.java"


# instance fields
.field private mData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I[B)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "in"    # [B

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;->mData:Landroid/os/Bundle;

    .line 10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;->mData:Landroid/os/Bundle;

    .line 11
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;->mData:Landroid/os/Bundle;

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;->mData:Landroid/os/Bundle;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 9
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;->mData:Landroid/os/Bundle;

    return-object v0
.end method
