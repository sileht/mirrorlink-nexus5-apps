.class public final Lcom/lge/nfcaddon/CardEmulationAddon;
.super Ljava/lang/Object;
.source "CardEmulationAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;
    }
.end annotation


# static fields
.field public static final INVALID_SECURE_ELEMENT_ROUTE:I = -0x1

.field public static final SECURE_ELEMENT_ROUTE_ESE:I = 0xf4

.field public static final SECURE_ELEMENT_ROUTE_HOST:I = 0x0

.field public static final SECURE_ELEMENT_ROUTE_UICC:I = 0xf3

.field private static final TAG:Ljava/lang/String; = "CardEmulationAddon"

.field private static sGsmaService:Lcom/lge/nfcaddon/IGsmaNfcController;

.field private static sService:Lcom/lge/nfcaddon/ICardEmulationAddon;


# instance fields
.field private mRecovery:Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;


# direct methods
.method public constructor <init>(Lcom/lge/nfcaddon/ICardEmulationAddon;Lcom/lge/nfcaddon/IGsmaNfcController;Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;)V
    .registers 4
    .param p1, "service"    # Lcom/lge/nfcaddon/ICardEmulationAddon;
    .param p2, "gsmaService"    # Lcom/lge/nfcaddon/IGsmaNfcController;
    .param p3, "recovery"    # Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sput-object p1, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    .line 33
    sput-object p2, Lcom/lge/nfcaddon/CardEmulationAddon;->sGsmaService:Lcom/lge/nfcaddon/IGsmaNfcController;

    .line 34
    iput-object p3, p0, Lcom/lge/nfcaddon/CardEmulationAddon;->mRecovery:Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;

    .line 35
    return-void
.end method

.method private attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lge/nfcaddon/CardEmulationAddon;->mRecovery:Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;

    if-nez v0, :cond_5

    .line 95
    :goto_4
    return-void

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/lge/nfcaddon/CardEmulationAddon;->mRecovery:Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;

    invoke-interface {v0, p1}, Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 93
    iget-object v0, p0, Lcom/lge/nfcaddon/CardEmulationAddon;->mRecovery:Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;

    invoke-interface {v0}, Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;->getGsmaNfcControllerServiceInterface()Lcom/lge/nfcaddon/IGsmaNfcController;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcaddon/CardEmulationAddon;->sGsmaService:Lcom/lge/nfcaddon/IGsmaNfcController;

    .line 94
    iget-object v0, p0, Lcom/lge/nfcaddon/CardEmulationAddon;->mRecovery:Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;

    invoke-interface {v0}, Lcom/lge/nfcaddon/CardEmulationAddon$NfcAddonRecovery;->getCardEmulationAddonServiceInterface()Lcom/lge/nfcaddon/ICardEmulationAddon;

    move-result-object v0

    sput-object v0, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    goto :goto_4
.end method


# virtual methods
.method public getDefaultRoute()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    invoke-interface {v1}, Lcom/lge/nfcaddon/ICardEmulationAddon;->getDefaultRoute()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_d

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a

    .line 40
    :catch_d
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/CardEmulationAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 42
    new-instance v1, Ljava/io/IOException;

    const-string v2, "getDefaultRoute Exception!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getService()Lcom/lge/nfcaddon/ICardEmulationAddon;
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    return-object v0
.end method

.method public getServices(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    sget-object v0, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/lge/nfcaddon/ICardEmulationAddon;->getServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 84
    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isCertificateAllowed(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sGsmaService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sGsmaService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->isGSMACertificateAllowed(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_d

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a

    .line 58
    :catch_d
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/CardEmulationAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 60
    new-instance v1, Ljava/io/IOException;

    const-string v2, "isCertificateAllowed Exception!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isCertificateAllowed([Ljava/lang/String;)[Z
    .registers 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sGsmaService:Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sGsmaService:Lcom/lge/nfcaddon/IGsmaNfcController;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/IGsmaNfcController;->isGSMACertificateAllowedArray([Ljava/lang/String;)[Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_d

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a

    .line 67
    :catch_d
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/CardEmulationAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 69
    new-instance v1, Ljava/io/IOException;

    const-string v2, "isCertificateAllowed Exception!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDefaultRoute(I)Z
    .registers 5
    .param p1, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/lge/nfcaddon/CardEmulationAddon;->sService:Lcom/lge/nfcaddon/ICardEmulationAddon;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/ICardEmulationAddon;->setDefaultRoute(I)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_d

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a

    .line 49
    :catch_d
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/lge/nfcaddon/CardEmulationAddon;->attemptDeadServiceAddonRecovery(Ljava/lang/Exception;)V

    .line 51
    new-instance v1, Ljava/io/IOException;

    const-string v2, "getDefaultRoute Exception!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
