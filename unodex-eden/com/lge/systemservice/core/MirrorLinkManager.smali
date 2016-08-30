.class public Lcom/lge/systemservice/core/MirrorLinkManager;
.super Ljava/lang/Object;
.source "MirrorLinkManager.java"


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.mirrorlink"

.field public static final SERVICE_NAME:Ljava/lang/String; = "mirrorlinkservice"

.field private static final TAG:Ljava/lang/String; = "MirrorLinkManager"


# instance fields
.field private mService:Lcom/lge/systemservice/core/IMirrorLinkManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    .line 26
    return-void
.end method

.method private final getService()Lcom/lge/systemservice/core/IMirrorLinkManager;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    if-nez v0, :cond_10

    .line 31
    const-string v0, "mirrorlinkservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IMirrorLinkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    .line 33
    :cond_10
    iget-object v0, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    return-object v0
.end method


# virtual methods
.method public tzReadPCR([BI)I
    .registers 7
    .param p1, "pcrvalue"    # [B
    .param p2, "index"    # I

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "ret":I
    const-string v2, "MirrorLinkManager"

    const-string v3, "[START] tzReadPCR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/lge/systemservice/core/MirrorLinkManager;->getService()Lcom/lge/systemservice/core/IMirrorLinkManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    .line 62
    iget-object v2, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    if-eqz v2, :cond_1e

    .line 65
    :try_start_12
    iget-object v2, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/IMirrorLinkManager;->tzReadPCR([BI)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    .line 73
    :goto_18
    return v1

    .line 66
    :catch_19
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    const-string v2, "MirrorLinkManager"

    const-string v3, "getService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public tzTPMExtend([BI)I
    .registers 7
    .param p1, "pcrvalue"    # [B
    .param p2, "index"    # I

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "ret":I
    const-string v2, "MirrorLinkManager"

    const-string v3, "[START] tzTPMExtend"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/lge/systemservice/core/MirrorLinkManager;->getService()Lcom/lge/systemservice/core/IMirrorLinkManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    .line 88
    iget-object v2, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    if-eqz v2, :cond_1e

    .line 91
    :try_start_12
    iget-object v2, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    invoke-interface {v2, p1, p2}, Lcom/lge/systemservice/core/IMirrorLinkManager;->tzTPMExtend([BI)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    .line 99
    :goto_18
    return v1

    .line 92
    :catch_19
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18

    .line 97
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    const-string v2, "MirrorLinkManager"

    const-string v3, "getService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public tzTPMQuote([BI[B[B)I
    .registers 9
    .param p1, "externalData"    # [B
    .param p2, "index"    # I
    .param p3, "quoteSignature"    # [B
    .param p4, "tzQuoteInfo"    # [B

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, "ret":I
    const-string v2, "MirrorLinkManager"

    const-string v3, "[START] tzTPMQuote"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcom/lge/systemservice/core/MirrorLinkManager;->getService()Lcom/lge/systemservice/core/IMirrorLinkManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    .line 116
    iget-object v2, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    if-eqz v2, :cond_1e

    .line 119
    :try_start_12
    iget-object v2, p0, Lcom/lge/systemservice/core/MirrorLinkManager;->mService:Lcom/lge/systemservice/core/IMirrorLinkManager;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/lge/systemservice/core/IMirrorLinkManager;->tzTPMQuote([BI[B[B)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    .line 127
    :goto_18
    return v1

    .line 120
    :catch_19
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    const-string v2, "MirrorLinkManager"

    const-string v3, "getService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public tzWritePCR([BI)I
    .registers 5
    .param p1, "pcrvalue"    # [B
    .param p2, "index"    # I

    .prologue
    .line 46
    const-string v0, "MirrorLinkManager"

    const-string v1, "[START] tzWritePCR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    return v0
.end method
