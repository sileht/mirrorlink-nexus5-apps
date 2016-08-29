.class public Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
.super Lcom/lge/mirrorlink/upnp/applicationserver/types/App;
.source "TmApp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field public appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

.field public appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

.field public appID:I

.field public appIdentifier:Ljava/lang/String;

.field public componentName:Landroid/content/ComponentName;

.field private contextInfoAudioCategory:J

.field public firstRetrieveAppCert:J

.field public floatingActivity:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private mContextInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/vnc/lib/ContextInformation;",
            ">;"
        }
    .end annotation
.end field

.field public retrieveAppCertFailed:Z

.field public retrieveAppCertTried:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    .line 38
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->floatingActivity:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appIdentifier:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .line 42
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    .line 47
    iput v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    .line 48
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->mContextInfo:Ljava/util/List;

    .line 49
    iput-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->contextInfoAudioCategory:J

    .line 50
    iput-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->firstRetrieveAppCert:J

    .line 52
    iput-boolean v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertTried:Z

    .line 53
    iput-boolean v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertFailed:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;ILjava/lang/String;Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;)V
    .registers 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "appID"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "remotingInfo"    # Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    .line 38
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->floatingActivity:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appIdentifier:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .line 42
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    .line 47
    iput v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    .line 48
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->mContextInfo:Ljava/util/List;

    .line 49
    iput-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->contextInfoAudioCategory:J

    .line 50
    iput-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->firstRetrieveAppCert:J

    .line 52
    iput-boolean v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertTried:Z

    .line 53
    iput-boolean v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertFailed:Z

    .line 121
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    .line 123
    iput p2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    .line 124
    iput-object p3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->name:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "appID"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "protocolID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-direct {v0, p4}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;-><init>(Landroid/content/ComponentName;ILjava/lang/String;Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)V
    .registers 12
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 59
    invoke-direct {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;-><init>()V

    .line 37
    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    .line 38
    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->floatingActivity:Ljava/lang/String;

    .line 40
    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appIdentifier:Ljava/lang/String;

    .line 41
    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .line 42
    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    .line 47
    iput v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    .line 48
    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->mContextInfo:Ljava/util/List;

    .line 49
    iput-wide v8, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->contextInfoAudioCategory:J

    .line 50
    iput-wide v8, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->firstRetrieveAppCert:J

    .line 52
    iput-boolean v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertTried:Z

    .line 53
    iput-boolean v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertFailed:Z

    .line 62
    :try_start_1d
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    .line 63
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->floatingActivity:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->floatingActivity:Ljava/lang/String;

    .line 65
    iget v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    iput v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    .line 66
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->name:Ljava/lang/String;

    .line 67
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->icon:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->variant:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->variant:Ljava/lang/String;

    .line 70
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerName:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerName:Ljava/lang/String;

    .line 71
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerURL:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerURL:Ljava/lang/String;

    .line 72
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->description:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->description:Ljava/lang/String;

    .line 74
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    if-eqz v5, :cond_70

    .line 75
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    .line 76
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "icon$iterator":Ljava/util/Iterator;
    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    .line 77
    .local v1, "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 108
    .end local v1    # "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    .end local v2    # "icon$iterator":Ljava/util/Iterator;
    :catch_6e
    move-exception v0

    .line 59
    :goto_6f
    return-void

    .line 81
    :cond_70
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->allowedProfileIDs:Ljava/util/List;

    if-eqz v5, :cond_93

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->allowedProfileIDs:Ljava/util/List;

    .line 83
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->allowedProfileIDs:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "id$iterator":Ljava/util/Iterator;
    :goto_81
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 84
    .local v3, "id":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->allowedProfileIDs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 88
    .end local v3    # "id":Ljava/lang/Integer;
    .end local v4    # "id$iterator":Ljava/util/Iterator;
    :cond_93
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    if-eqz v5, :cond_a1

    .line 89
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    .line 92
    :cond_a1
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    if-eqz v5, :cond_af

    .line 93
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    .line 96
    :cond_af
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    if-eqz v5, :cond_bd

    .line 97
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    .line 100
    :cond_bd
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    if-eqz v5, :cond_cb

    .line 101
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    .line 105
    :cond_cb
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    .line 107
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;
    :try_end_d3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1d .. :try_end_d3} :catch_6e

    goto :goto_6f
.end method

.method private getAttributeValueObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 281
    if-eqz p1, :cond_135

    .line 282
    const-string/jumbo v0, "appID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 283
    iget v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    if-eqz v0, :cond_135

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_2b
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 287
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->name:Ljava/lang/String;

    if-eqz v0, :cond_135

    .line 288
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->name:Ljava/lang/String;

    return-object v0

    .line 290
    :cond_3b
    const-string/jumbo v0, "variant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 291
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->variant:Ljava/lang/String;

    if-eqz v0, :cond_135

    .line 292
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->variant:Ljava/lang/String;

    return-object v0

    .line 294
    :cond_4b
    const-string/jumbo v0, "providerName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 295
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerName:Ljava/lang/String;

    if-eqz v0, :cond_135

    .line 296
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerName:Ljava/lang/String;

    return-object v0

    .line 298
    :cond_5b
    const-string/jumbo v0, "providerURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 299
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerURL:Ljava/lang/String;

    if-eqz v0, :cond_135

    .line 300
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerURL:Ljava/lang/String;

    return-object v0

    .line 302
    :cond_6b
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 303
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->description:Ljava/lang/String;

    if-eqz v0, :cond_135

    .line 304
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->description:Ljava/lang/String;

    return-object v0

    .line 306
    :cond_7b
    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    const-string/jumbo v0, "icon@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 307
    :cond_8d
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    if-eqz v0, :cond_135

    .line 308
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    return-object v0

    .line 310
    :cond_94
    const-string/jumbo v0, "allowedProfileIDs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 311
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->allowedProfileIDs:Ljava/util/List;

    if-eqz v0, :cond_135

    .line 312
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->allowedProfileIDs:Ljava/util/List;

    return-object v0

    .line 314
    :cond_a4
    const-string/jumbo v0, "remotingInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string/jumbo v0, "remotingInfo@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 315
    :cond_b6
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    if-eqz v0, :cond_135

    .line 316
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    return-object v0

    .line 318
    :cond_bd
    const-string/jumbo v0, "appCertificateURL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 319
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    if-eqz v0, :cond_135

    .line 320
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    return-object v0

    .line 322
    :cond_cd
    const-string/jumbo v0, "appInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    const-string/jumbo v0, "appInfo@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 323
    :cond_df
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    if-eqz v0, :cond_135

    .line 324
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    return-object v0

    .line 326
    :cond_e6
    const-string/jumbo v0, "displayInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    const-string/jumbo v0, "displayInfo@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 327
    :cond_f8
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    if-eqz v0, :cond_135

    .line 328
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    return-object v0

    .line 330
    :cond_ff
    const-string/jumbo v0, "audioInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_111

    const-string/jumbo v0, "audioInfo@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 331
    :cond_111
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    if-eqz v0, :cond_135

    .line 332
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    return-object v0

    .line 334
    :cond_118
    const-string/jumbo v0, "resourceStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12a

    const-string/jumbo v0, "resourceStatus@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 335
    :cond_12a
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    if-eqz v0, :cond_135

    .line 336
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :cond_135
    return-object v1
.end method

.method private isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 9
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "appListingFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 644
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 645
    :cond_a
    return v5

    .line 644
    :cond_b
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 649
    if-eqz p2, :cond_41

    const-string/jumbo v2, "@"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 650
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "filterKey$iterator":Ljava/util/Iterator;
    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    .local v0, "filterKey":Ljava/lang/String;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 652
    return v5

    .line 657
    .end local v0    # "filterKey":Ljava/lang/String;
    .end local v1    # "filterKey$iterator":Ljava/util/Iterator;
    :cond_41
    return v4
.end method


# virtual methods
.method public fromXML(Ljava/lang/String;)Z
    .registers 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 483
    if-nez p1, :cond_4

    .line 484
    return v5

    .line 487
    :cond_4
    :try_start_4
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 488
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 489
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 490
    .local v2, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/StringBufferInputStream;

    invoke-direct {v1, p1}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    .line 491
    .local v1, "sbis":Ljava/io/StringBufferInputStream;
    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 493
    const-string/jumbo v4, "app"

    invoke-virtual {p0, v2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->fromXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_1f} :catch_21

    move-result v4

    return v4

    .line 494
    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1    # "sbis":Ljava/io/StringBufferInputStream;
    .end local v2    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_21
    move-exception v3

    .line 496
    .local v3, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    return v5
.end method

.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 25
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "endTag"    # Ljava/lang/String;

    .prologue
    .line 505
    const/4 v11, 0x0

    .line 506
    .local v11, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 509
    .local v3, "className":Ljava/lang/String;
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 510
    .end local v3    # "className":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .local v7, "eventType":I
    :goto_6
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_2e2

    .line 511
    if-nez v7, :cond_13

    .line 620
    :cond_e
    :goto_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_6

    .line 513
    :cond_13
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_e

    .line 515
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v7, v0, :cond_2c3

    .line 518
    const-string/jumbo v19, "packageName"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_55

    .line 519
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 520
    .local v11, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 521
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    invoke-direct {v0, v11, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_43} :catch_44
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_43} :catch_7a

    goto :goto_e

    .line 622
    .end local v7    # "eventType":I
    .end local v11    # "packageName":Ljava/lang/String;
    :catch_44
    move-exception v5

    .line 623
    .local v5, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v19, "MirrorLink_UPnP"

    const-string/jumbo v20, "App.fromXML : XmlPullParserException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    const/16 v19, 0x0

    return v19

    .line 523
    .end local v5    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "eventType":I
    :cond_55
    :try_start_55
    const-string/jumbo v19, "className"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8b

    .line 524
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "className":Ljava/lang/String;
    if-eqz v11, :cond_e

    .line 526
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    invoke-direct {v0, v11, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;
    :try_end_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_79} :catch_44
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_79} :catch_7a

    goto :goto_e

    .line 625
    .end local v3    # "className":Ljava/lang/String;
    .end local v7    # "eventType":I
    :catch_7a
    move-exception v6

    .line 626
    .local v6, "e2":Ljava/io/IOException;
    const-string/jumbo v19, "MirrorLink_UPnP"

    const-string/jumbo v20, "App.fromXML : IOException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    const/16 v19, 0x0

    return v19

    .line 528
    .end local v6    # "e2":Ljava/io/IOException;
    .restart local v7    # "eventType":I
    :cond_8b
    :try_start_8b
    const-string/jumbo v19, "floatingActivity"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a8

    .line 529
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->floatingActivity:Ljava/lang/String;

    goto/16 :goto_e

    .line 530
    :cond_a8
    const-string/jumbo v19, "appID"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f4

    .line 531
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/lge/mirrorlink/common/StringUtil;->trimString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_bc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_bc} :catch_44
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_bc} :catch_7a

    move-result-object v16

    .line 532
    .local v16, "text":Ljava/lang/String;
    if-eqz v16, :cond_e

    .line 534
    :try_start_bf
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I
    :try_end_d1
    .catch Ljava/lang/NumberFormatException; {:try_start_bf .. :try_end_d1} :catch_d3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bf .. :try_end_d1} :catch_44
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_d1} :catch_7a

    goto/16 :goto_e

    .line 535
    :catch_d3
    move-exception v8

    .line 537
    .local v8, "ex":Ljava/lang/NumberFormatException;
    :try_start_d4
    const-string/jumbo v19, "MirrorLink_UPnP"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "[App.fromXML] invalid appID : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 540
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    .end local v16    # "text":Ljava/lang/String;
    :cond_f4
    const-string/jumbo v19, "name"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10d

    .line 541
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 542
    :cond_10d
    const-string/jumbo v19, "variant"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_126

    .line 543
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->variant:Ljava/lang/String;

    goto/16 :goto_e

    .line 544
    :cond_126
    const-string/jumbo v19, "providerName"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13f

    .line 545
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerName:Ljava/lang/String;

    goto/16 :goto_e

    .line 546
    :cond_13f
    const-string/jumbo v19, "providerURL"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_158

    .line 547
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerURL:Ljava/lang/String;

    goto/16 :goto_e

    .line 548
    :cond_158
    const-string/jumbo v19, "description"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_171

    .line 549
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->description:Ljava/lang/String;

    goto/16 :goto_e

    .line 550
    :cond_171
    const-string/jumbo v19, "iconList"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1b0

    .line 551
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v18, "tmpIconList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;>;"
    const/4 v2, 0x0

    .line 554
    :cond_184
    new-instance v9, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    invoke-direct {v9}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;-><init>()V

    .line 555
    .local v9, "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    .line 556
    .local v2, "bParsed":Z
    if-eqz v2, :cond_19c

    invoke-virtual {v9}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->hasRequiredElements()Z

    move-result v19

    if-eqz v19, :cond_19c

    .line 557
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_19c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 560
    if-nez v2, :cond_184

    .line 562
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_e

    .line 563
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    goto/16 :goto_e

    .line 566
    .end local v2    # "bParsed":Z
    .end local v9    # "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    .end local v18    # "tmpIconList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;>;"
    :cond_1b0
    const-string/jumbo v19, "allowedProfileIDs"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_20c

    .line 567
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, "commaSeparatedStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->CommaSeparatedStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 569
    .local v15, "strProfileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_e

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_e

    .line 570
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v17, "tmpAllowedProfileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "strID$iterator":Ljava/util/Iterator;
    :cond_1d6
    :goto_1d6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1fe

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 573
    .local v13, "strID":Ljava/lang/String;
    invoke-static {v13}, Lcom/lge/mirrorlink/common/StringUtil;->trimString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d4 .. :try_end_1e5} :catch_44
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_1e5} :catch_7a

    move-result-object v16

    .line 574
    .restart local v16    # "text":Ljava/lang/String;
    if-eqz v16, :cond_1d6

    .line 576
    :try_start_1e8
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 577
    .local v12, "profileID":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1fb
    .catch Ljava/lang/NumberFormatException; {:try_start_1e8 .. :try_end_1fb} :catch_1fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e8 .. :try_end_1fb} :catch_44
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1fb} :catch_7a

    goto :goto_1d6

    .line 578
    .end local v12    # "profileID":I
    :catch_1fc
    move-exception v10

    .local v10, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_1d6

    .line 583
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    .end local v13    # "strID":Ljava/lang/String;
    .end local v16    # "text":Ljava/lang/String;
    :cond_1fe
    :try_start_1fe
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_e

    .line 584
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->allowedProfileIDs:Ljava/util/List;

    goto/16 :goto_e

    .line 587
    .end local v4    # "commaSeparatedStr":Ljava/lang/String;
    .end local v14    # "strID$iterator":Ljava/util/Iterator;
    .end local v15    # "strProfileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "tmpAllowedProfileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_20c
    const-string/jumbo v19, "remotingInfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_233

    .line 588
    new-instance v19, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-direct/range {v19 .. v19}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto/16 :goto_e

    .line 590
    :cond_233
    const-string/jumbo v19, "appCertificateURL"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_24c

    .line 591
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    goto/16 :goto_e

    .line 592
    :cond_24c
    const-string/jumbo v19, "appInfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_268

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto/16 :goto_e

    .line 594
    :cond_268
    const-string/jumbo v19, "displayInfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_284

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto/16 :goto_e

    .line 596
    :cond_284
    const-string/jumbo v19, "audioInfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2a0

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto/16 :goto_e

    .line 598
    :cond_2a0
    const-string/jumbo v19, "resourceStatus"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 599
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/lge/mirrorlink/common/StringUtil;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 600
    .restart local v16    # "text":Ljava/lang/String;
    if-eqz v16, :cond_e

    .line 602
    invoke-static/range {v16 .. v16}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;->valueOf(Ljava/lang/String;)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    goto/16 :goto_e

    .line 610
    .end local v16    # "text":Ljava/lang/String;
    :cond_2c3
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v7, v0, :cond_2da

    .line 612
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1fe .. :try_end_2d4} :catch_44
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_2d4} :catch_7a

    move-result v19

    if-eqz v19, :cond_e

    .line 613
    const/16 v19, 0x1

    return v19

    .line 615
    :cond_2da
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v7, v0, :cond_e

    goto/16 :goto_e

    .line 630
    :cond_2e2
    const/16 v19, 0x0

    return v19
.end method

.method public getAppId()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_c

    .line 225
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :cond_c
    return-object v1
.end method

.method public getContextInformation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/vnc/lib/ContextInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->mContextInfo:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultContextInformation(IIII)Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .registers 23
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 269
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppTrustLevel()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDisplayTrustLevel()J

    move-result-wide v6

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppCategory()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDisplayContentCategory()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDisplayContentRules()J

    move-result-wide v12

    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    .line 269
    invoke-direct/range {v0 .. v17}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;-><init>(Ljava/lang/String;Ljava/lang/String;IJJJJJIIII)V

    return-object v0
.end method

.method public getDevId()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v0, :cond_a

    .line 238
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v0, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    return-object v0

    .line 240
    :cond_a
    return-object v1
.end method

.method public getFloatingActivityName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->floatingActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_c

    .line 213
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 215
    :cond_c
    return-object v1
.end method

.method public isACMSCertified()Z
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isCertified()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 141
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isCertifiedApp()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isCertified()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 131
    return v2

    .line 132
    :cond_e
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->isCertified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 133
    return v2

    .line 135
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public isDriveCertified()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 157
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isDriveCertified()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 158
    return v2

    .line 159
    :cond_e
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->isCertified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 160
    return v2

    .line 162
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public isInternalApp()Z
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->hasRequiredElements()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "com.lge.mirrorlink"

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isRemovedByCertFilter(Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "appCertFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_4

    .line 460
    const/4 v1, 0x0

    return v1

    .line 463
    :cond_4
    const/4 v0, 0x0

    .line 465
    .local v0, "appCertInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isCertifiedApp()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 466
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    if-eqz v1, :cond_3c

    .line 467
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    iget-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    .line 472
    .end local v0    # "appCertInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    :cond_13
    :goto_13
    if-nez v0, :cond_45

    .line 473
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "app("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") is filtered out. appCertInfo not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x1

    return v1

    .line 468
    .restart local v0    # "appCertInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    :cond_3c
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v1, :cond_13

    .line 469
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v0, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    .local v0, "appCertInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    goto :goto_13

    .line 477
    .end local v0    # "appCertInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    :cond_45
    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->isRemovedByFilter(Ljava/util/Map;)Z

    move-result v1

    return v1
.end method

.method public isRemovedByFilter(Ljava/util/Map;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "appListingFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_290

    .line 357
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_290

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 358
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    .local v0, "attribute":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 363
    .local v3, "filter":Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/mirrorlink/common/StringUtil;->isValidFilter(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 364
    invoke-direct {p0, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAttributeValueObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 365
    .local v10, "valueObj":Ljava/lang/Object;
    if-eqz v10, :cond_24f

    .line 366
    const-string/jumbo v11, "allowedProfileIDs"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_89

    .line 367
    invoke-static {v3}, Lcom/lge/mirrorlink/common/StringUtil;->CommaSeparatedStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 368
    .local v4, "filterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->allowedProfileIDs:Ljava/util/List;

    .line 370
    .local v9, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_a

    .line 374
    if-eqz v9, :cond_a

    .line 375
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_a

    .line 376
    invoke-interface {v9, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 377
    const-string/jumbo v11, "MirrorLink_UPnP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "check Filter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") is filtered out by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v11, 0x1

    return v11

    .line 381
    .end local v4    # "filterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_89
    const-string/jumbo v11, "icon@"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e7

    .line 382
    const/4 v7, 0x0

    .line 383
    .local v7, "matchedIconExists":Z
    iget-object v11, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "icon$iterator":Ljava/util/Iterator;
    :cond_99
    :goto_99
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ad

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    .line 384
    .local v5, "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    invoke-virtual {v5, v0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_99

    .line 385
    const/4 v7, 0x1

    goto :goto_99

    .line 389
    .end local v5    # "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    :cond_ad
    if-nez v7, :cond_a

    .line 390
    const-string/jumbo v11, "MirrorLink_UPnP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "check Filter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") is filtered out by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v11, 0x1

    return v11

    .line 394
    .end local v6    # "icon$iterator":Ljava/util/Iterator;
    .end local v7    # "matchedIconExists":Z
    :cond_e7
    const-string/jumbo v11, "remotingInfo@"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_130

    .line 395
    iget-object v11, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-virtual {v11, v0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 396
    const-string/jumbo v11, "MirrorLink_UPnP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "check Filter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") is filtered out by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v11, 0x1

    return v11

    .line 399
    :cond_130
    const-string/jumbo v11, "appInfo@"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_179

    .line 400
    iget-object v11, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    invoke-virtual {v11, v0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 401
    const-string/jumbo v11, "MirrorLink_UPnP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "check Filter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") is filtered out by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v11, 0x1

    return v11

    .line 404
    :cond_179
    const-string/jumbo v11, "displayInfo@"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c2

    .line 405
    iget-object v11, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    invoke-virtual {v11, v0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 406
    const-string/jumbo v11, "MirrorLink_UPnP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "check Filter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") is filtered out by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v11, 0x1

    return v11

    .line 409
    :cond_1c2
    const-string/jumbo v11, "audioInfo@"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_20b

    .line 410
    iget-object v11, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    invoke-virtual {v11, v0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 411
    const-string/jumbo v11, "MirrorLink_UPnP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "check Filter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") is filtered out by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const/4 v11, 0x1

    return v11

    .line 419
    :cond_20b
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 421
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_217

    invoke-static {v8, v3}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 423
    :cond_217
    const-string/jumbo v11, "MirrorLink_UPnP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "check Filter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") is filtered out by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v11, 0x1

    return v11

    .line 432
    .end local v8    # "value":Ljava/lang/String;
    :cond_24f
    const-string/jumbo v11, "allowedProfileIDs"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 435
    const-string/jumbo v11, "MirrorLink_UPnP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "check Filter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") is filtered out by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v11, 0x1

    return v11

    .line 444
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "filter":Ljava/lang/String;
    .end local v10    # "valueObj":Ljava/lang/Object;
    :cond_290
    const-string/jumbo v11, "MirrorLink_UPnP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "check Filter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is added"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v11, 0x0

    return v11
.end method

.method public isSelfCertified()Z
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->isCertified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 150
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public makeXMLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .param p1, "parentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 670
    .local p2, "appListingFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->hasRequiredElements()Z

    move-result v4

    if-nez v4, :cond_a

    .line 671
    const-string/jumbo v4, ""

    return-object v4

    .line 674
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 676
    .local v3, "strXML":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const-string/jumbo v4, "<appID>0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</appID>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const-string/jumbo v4, "<name>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->encodeXMLText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string/jumbo v4, "</name>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string/jumbo v4, "variant"

    invoke-direct {p0, p2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->variant:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 684
    const-string/jumbo v4, "<variant>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->variant:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->encodeXMLText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const-string/jumbo v4, "</variant>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_74
    const-string/jumbo v4, "providerName"

    invoke-direct {p0, p2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 690
    const-string/jumbo v4, "<providerName>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->encodeXMLText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string/jumbo v4, "</providerName>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_9a
    const-string/jumbo v4, "providerURL"

    invoke-direct {p0, p2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c0

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerURL:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 696
    const-string/jumbo v4, "<providerURL>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->providerURL:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->encodeXMLText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const-string/jumbo v4, "</providerURL>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_c0
    const-string/jumbo v4, "description"

    invoke-direct {p0, p2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e6

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->description:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 702
    const-string/jumbo v4, "<description>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->description:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->encodeXMLText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const-string/jumbo v4, "</description>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_e6
    const-string/jumbo v4, "icon@"

    invoke-direct {p0, p2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_121

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    if-eqz v4, :cond_121

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_121

    .line 708
    const-string/jumbo v4, "<iconList>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "icon$iterator":Ljava/util/Iterator;
    :goto_107
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    .line 710
    .local v1, "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->makeXMLString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_107

    .line 712
    .end local v1    # "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    :cond_11b
    const-string/jumbo v4, "</iconList>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .end local v2    # "icon$iterator":Ljava/util/Iterator;
    :cond_121
    const-string/jumbo v4, "allowedProfileIDs"

    invoke-direct {p0, p2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_153

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->allowedProfileIDs:Ljava/util/List;

    if-eqz v4, :cond_153

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->allowedProfileIDs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_153

    .line 717
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->allowedProfileIDs:Ljava/util/List;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "commaSeparatedStr":Ljava/lang/String;
    if-eqz v0, :cond_153

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_153

    .line 719
    const-string/jumbo v4, "<allowedProfileIDs>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string/jumbo v4, "</allowedProfileIDs>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .end local v0    # "commaSeparatedStr":Ljava/lang/String;
    :cond_153
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->makeXMLString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const-string/jumbo v4, "appCertificateURL"

    invoke-direct {p0, p2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17e

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    if-eqz v4, :cond_17e

    .line 728
    const-string/jumbo v4, "<appCertificateURL>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->encodeXMLText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string/jumbo v4, "</appCertificateURL>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_17e
    const-string/jumbo v4, "appInfo@"

    invoke-direct {p0, p2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_198

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    if-eqz v4, :cond_198

    .line 734
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isCertifiedApp()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->makeXMLString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :cond_198
    const-string/jumbo v4, "displayInfo@"

    invoke-direct {p0, p2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b6

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    if-eqz v4, :cond_1b6

    .line 738
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isCertifiedApp()Z

    move-result v5

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isDriveCertified()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->makeXMLString(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :cond_1b6
    const-string/jumbo v4, "audioInfo@"

    invoke-direct {p0, p2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d0

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    if-eqz v4, :cond_1d0

    .line 742
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isCertifiedApp()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->makeXMLString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_1d0
    const-string/jumbo v4, "resourceStatus"

    invoke-direct {p0, p2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isFilterApplied(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ee

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    if-eqz v4, :cond_1ee

    .line 747
    const-string/jumbo v4, "<resourceStatus>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 749
    const-string/jumbo v4, "</resourceStatus>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    :cond_1ee
    const-string/jumbo v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public setAppId(I)V
    .registers 2
    .param p1, "appid"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    .line 175
    return-void
.end method

.method public setAppIdentifier(Ljava/lang/String;)V
    .registers 2
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appIdentifier:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->name:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setComponentName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    .line 185
    return-void
.end method

.method public setContextInformation(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/vnc/lib/ContextInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "ctxInfo":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->mContextInfo:Ljava/util/List;

    .line 243
    return-void
.end method

.method public setContextInformationAudioCategory(J)V
    .registers 4
    .param p1, "category"    # J

    .prologue
    .line 250
    iput-wide p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->contextInfoAudioCategory:J

    .line 248
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->icon:Landroid/graphics/drawable/Drawable;

    .line 195
    return-void
.end method

.method public updateContextInformation()V
    .registers 10

    .prologue
    .line 260
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->mContextInfo:Ljava/util/List;

    if-eqz v1, :cond_2a

    .line 261
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->mContextInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "ctxInfo$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;

    .line 262
    .local v0, "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppTrustLevel()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDisplayTrustLevel()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDisplayContentRules()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/lge/mirrorlink/vnc/lib/ContextInformation;->setTrustLevel(IJJJ)V

    goto :goto_a

    .line 258
    .end local v0    # "ctxInfo":Lcom/lge/mirrorlink/vnc/lib/ContextInformation;
    .end local v8    # "ctxInfo$iterator":Ljava/util/Iterator;
    :cond_2a
    return-void
.end method
