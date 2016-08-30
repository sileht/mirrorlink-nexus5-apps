.class public Lcom/lge/wfds/send/tx/SearchedData;
.super Ljava/lang/Object;
.source "SearchedData.java"


# instance fields
.field public device_name:Ljava/lang/String;

.field public device_status:I

.field public mac_addr:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "none"

    iput-object v0, p0, Lcom/lge/wfds/send/tx/SearchedData;->uuid:Ljava/lang/String;

    .line 31
    const-string v0, "none"

    iput-object v0, p0, Lcom/lge/wfds/send/tx/SearchedData;->mac_addr:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wfds/send/tx/SearchedData;->device_status:I

    .line 33
    const-string v0, "none"

    iput-object v0, p0, Lcom/lge/wfds/send/tx/SearchedData;->device_name:Ljava/lang/String;

    .line 34
    return-void
.end method
