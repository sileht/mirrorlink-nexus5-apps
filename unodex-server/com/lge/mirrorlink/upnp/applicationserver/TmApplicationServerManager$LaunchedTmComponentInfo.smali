.class public Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
.super Ljava/lang/Object;
.source "TmApplicationServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LaunchedTmComponentInfo"
.end annotation


# instance fields
.field ipAddress:Ljava/lang/String;

.field port:I

.field protocolID:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    .param p2, "protocolID"    # Ljava/lang/String;
    .param p3, "ipAddress"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1264
    iput-object p2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->protocolID:Ljava/lang/String;

    .line 1265
    iput-object p3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->ipAddress:Ljava/lang/String;

    .line 1266
    iput p4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->port:I

    .line 1262
    return-void
.end method


# virtual methods
.method public getIPAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 1276
    iget v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->port:I

    return v0
.end method
