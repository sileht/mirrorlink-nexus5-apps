.class public Lcom/lge/mirrorlink/upnp/applicationserver/types/App;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "App.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field public allowedProfileIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public appCertificateURL:Ljava/lang/String;

.field public appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

.field public audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

.field public description:Ljava/lang/String;

.field public displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

.field public iconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public providerName:Ljava/lang/String;

.field public providerURL:Ljava/lang/String;

.field public remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

.field public resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

.field public variant:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->variant:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerName:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerURL:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->description:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-direct {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    .line 49
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appCertificateURL:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    invoke-direct {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    .line 51
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    invoke-direct {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    .line 52
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    invoke-direct {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    .line 54
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/types/App;)V
    .registers 10
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    .prologue
    const/4 v6, 0x0

    .line 62
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 35
    iput-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;

    .line 38
    iput-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->variant:Ljava/lang/String;

    .line 39
    iput-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerName:Ljava/lang/String;

    .line 40
    iput-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerURL:Ljava/lang/String;

    .line 41
    iput-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->description:Ljava/lang/String;

    .line 42
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    .line 43
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    .line 46
    new-instance v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-direct {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    .line 49
    iput-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appCertificateURL:Ljava/lang/String;

    .line 50
    new-instance v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    invoke-direct {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    .line 51
    new-instance v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    invoke-direct {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    .line 52
    new-instance v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    invoke-direct {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    .line 54
    iput-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    .line 65
    :try_start_3c
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;

    .line 67
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->variant:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->variant:Ljava/lang/String;

    .line 68
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerName:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerName:Ljava/lang/String;

    .line 69
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerURL:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerURL:Ljava/lang/String;

    .line 70
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->description:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->description:Ljava/lang/String;

    .line 72
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    if-eqz v5, :cond_7b

    .line 73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    .line 74
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "icon$iterator":Ljava/util/Iterator;
    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    .line 75
    .local v1, "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 106
    .end local v1    # "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    .end local v2    # "icon$iterator":Ljava/util/Iterator;
    :catch_79
    move-exception v0

    .line 62
    :goto_7a
    return-void

    .line 79
    :cond_7b
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    if-eqz v5, :cond_a7

    .line 80
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    .line 81
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "id$iterator":Ljava/util/Iterator;
    :goto_8c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 82
    .local v3, "id":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 86
    .end local v3    # "id":Ljava/lang/Integer;
    .end local v4    # "id$iterator":Ljava/util/Iterator;
    :cond_a7
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    if-eqz v5, :cond_b5

    .line 87
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    .line 90
    :cond_b5
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    if-eqz v5, :cond_c3

    .line 91
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    .line 94
    :cond_c3
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    if-eqz v5, :cond_d1

    .line 95
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    .line 98
    :cond_d1
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    if-eqz v5, :cond_df

    .line 99
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    .line 103
    :cond_df
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appCertificateURL:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appCertificateURL:Ljava/lang/String;

    .line 105
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;
    :try_end_e7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3c .. :try_end_e7} :catch_79

    goto :goto_7a
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "remotingInfo"    # Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->variant:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerName:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerURL:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->description:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-direct {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    .line 49
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appCertificateURL:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    invoke-direct {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    .line 51
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    invoke-direct {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    .line 52
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    invoke-direct {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    .line 54
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    .line 155
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "protocolID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-direct {v0, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;-><init>(Ljava/lang/String;Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;)V

    .line 148
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-super {p0}, Lcom/lge/mirrorlink/common/XMLElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    .line 115
    .local v0, "cloned":Lcom/lge/mirrorlink/upnp/applicationserver/types/App;
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    if-eqz v5, :cond_2f

    .line 116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    .line 117
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "icon$iterator":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    .line 118
    .local v1, "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    iget-object v6, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 122
    .end local v1    # "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    .end local v2    # "icon$iterator":Ljava/util/Iterator;
    :cond_2f
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    if-eqz v5, :cond_5b

    .line 123
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    .line 124
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "id$iterator":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 125
    .local v3, "id":Ljava/lang/Integer;
    iget-object v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 129
    .end local v3    # "id":Ljava/lang/Integer;
    .end local v4    # "id$iterator":Ljava/util/Iterator;
    :cond_5b
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    if-eqz v5, :cond_69

    .line 130
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    iput-object v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    .line 133
    :cond_69
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    if-eqz v5, :cond_77

    .line 134
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    iput-object v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    .line 137
    :cond_77
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    if-eqz v5, :cond_85

    .line 138
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    iput-object v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    .line 141
    :cond_85
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    if-eqz v5, :cond_93

    .line 142
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    iput-object v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    .line 145
    :cond_93
    return-object v0
.end method

.method public fromXML(Ljava/lang/String;)Z
    .registers 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 363
    if-nez p1, :cond_4

    .line 364
    return v5

    .line 367
    :cond_4
    :try_start_4
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 368
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 369
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 370
    .local v2, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/StringBufferInputStream;

    invoke-direct {v1, p1}, Ljava/io/StringBufferInputStream;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, "sbis":Ljava/io/StringBufferInputStream;
    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v4, "app"

    invoke-virtual {p0, v2, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->fromXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_1f} :catch_21

    move-result v4

    return v4

    .line 374
    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1    # "sbis":Ljava/io/StringBufferInputStream;
    .end local v2    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_21
    move-exception v3

    .line 376
    .local v3, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    return v5
.end method

.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 23
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "endTag"    # Ljava/lang/String;

    .prologue
    .line 385
    const/4 v10, 0x0

    .line 386
    .local v10, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 389
    .local v3, "className":Ljava/lang/String;
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 390
    .local v7, "eventType":I
    :goto_6
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_225

    .line 391
    if-nez v7, :cond_13

    .line 480
    :cond_e
    :goto_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_6

    .line 393
    :cond_13
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_e

    .line 395
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v7, v0, :cond_206

    .line 398
    const-string/jumbo v18, "name"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_48

    .line 399
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;
    :try_end_36
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_36} :catch_37
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_36} :catch_60

    goto :goto_e

    .line 482
    .end local v7    # "eventType":I
    :catch_37
    move-exception v5

    .line 483
    .local v5, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v18, "MirrorLink_UPnP"

    const-string/jumbo v19, "App.fromXML : XmlPullParserException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    const/16 v18, 0x0

    return v18

    .line 400
    .end local v5    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "eventType":I
    :cond_48
    :try_start_48
    const-string/jumbo v18, "variant"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_71

    .line 401
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->variant:Ljava/lang/String;
    :try_end_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_5f} :catch_37
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_5f} :catch_60

    goto :goto_e

    .line 485
    .end local v7    # "eventType":I
    :catch_60
    move-exception v6

    .line 486
    .local v6, "e2":Ljava/io/IOException;
    const-string/jumbo v18, "MirrorLink_UPnP"

    const-string/jumbo v19, "App.fromXML : IOException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    const/16 v18, 0x0

    return v18

    .line 402
    .end local v6    # "e2":Ljava/io/IOException;
    .restart local v7    # "eventType":I
    :cond_71
    :try_start_71
    const-string/jumbo v18, "providerName"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_89

    .line 403
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerName:Ljava/lang/String;

    goto :goto_e

    .line 404
    :cond_89
    const-string/jumbo v18, "providerURL"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a2

    .line 405
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerURL:Ljava/lang/String;

    goto/16 :goto_e

    .line 406
    :cond_a2
    const-string/jumbo v18, "description"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_bb

    .line 407
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->description:Ljava/lang/String;

    goto/16 :goto_e

    .line 408
    :cond_bb
    const-string/jumbo v18, "iconList"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_fa

    .line 409
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v17, "tmpIconList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;>;"
    const/4 v2, 0x0

    .line 412
    :cond_ce
    new-instance v8, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    invoke-direct {v8}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;-><init>()V

    .line 413
    .local v8, "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    .line 414
    .local v2, "bParsed":Z
    if-eqz v2, :cond_e6

    invoke-virtual {v8}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->hasRequiredElements()Z

    move-result v18

    if-eqz v18, :cond_e6

    .line 415
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_e6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 418
    if-nez v2, :cond_ce

    .line 420
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_e

    .line 421
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    goto/16 :goto_e

    .line 424
    .end local v2    # "bParsed":Z
    .end local v8    # "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    .end local v17    # "tmpIconList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;>;"
    :cond_fa
    const-string/jumbo v18, "allowedProfileIDs"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_14f

    .line 425
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, "commaSeparatedStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->CommaSeparatedStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 427
    .local v14, "strProfileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_e

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_e

    .line 428
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v16, "tmpAllowedProfileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .line 430
    .local v11, "profileID":Ljava/lang/Integer;
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v11    # "profileID":Ljava/lang/Integer;
    .local v13, "strID$iterator":Ljava/util/Iterator;
    :cond_121
    :goto_121
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_141

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 431
    .local v12, "strID":Ljava/lang/String;
    invoke-static {v12}, Lcom/lge/mirrorlink/common/StringUtil;->trimString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_130
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_130} :catch_37
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_130} :catch_60

    move-result-object v15

    .line 432
    .local v15, "text":Ljava/lang/String;
    if-eqz v15, :cond_121

    .line 434
    :try_start_133
    invoke-static {v15}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_136
    .catch Ljava/lang/NumberFormatException; {:try_start_133 .. :try_end_136} :catch_13f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_133 .. :try_end_136} :catch_37
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_60

    move-result-object v11

    .line 437
    :goto_137
    if-eqz v11, :cond_121

    .line 438
    :try_start_139
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_121

    .line 435
    :catch_13f
    move-exception v9

    .local v9, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_137

    .line 443
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    .end local v12    # "strID":Ljava/lang/String;
    .end local v15    # "text":Ljava/lang/String;
    :cond_141
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_e

    .line 444
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    goto/16 :goto_e

    .line 447
    .end local v4    # "commaSeparatedStr":Ljava/lang/String;
    .end local v13    # "strID$iterator":Ljava/util/Iterator;
    .end local v14    # "strProfileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "tmpAllowedProfileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_14f
    const-string/jumbo v18, "remotingInfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_176

    .line 448
    new-instance v18, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-direct/range {v18 .. v18}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto/16 :goto_e

    .line 450
    :cond_176
    const-string/jumbo v18, "appCertificateURL"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18f

    .line 451
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appCertificateURL:Ljava/lang/String;

    goto/16 :goto_e

    .line 452
    :cond_18f
    const-string/jumbo v18, "appInfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1ab

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto/16 :goto_e

    .line 454
    :cond_1ab
    const-string/jumbo v18, "displayInfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1c7

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto/16 :goto_e

    .line 456
    :cond_1c7
    const-string/jumbo v18, "audioInfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1e3

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto/16 :goto_e

    .line 458
    :cond_1e3
    const-string/jumbo v18, "resourceStatus"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 459
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lge/mirrorlink/common/StringUtil;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 460
    .restart local v15    # "text":Ljava/lang/String;
    if-eqz v15, :cond_e

    .line 462
    invoke-static {v15}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;->valueOf(Ljava/lang/String;)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    goto/16 :goto_e

    .line 470
    .end local v15    # "text":Ljava/lang/String;
    :cond_206
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_21d

    .line 472
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_139 .. :try_end_217} :catch_37
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_217} :catch_60

    move-result v18

    if-eqz v18, :cond_e

    .line 473
    const/16 v18, 0x1

    return v18

    .line 475
    :cond_21d
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_e

    goto/16 :goto_e

    .line 490
    :cond_225
    const/16 v18, 0x0

    return v18
.end method

.method public getAppCategory()J
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    if-eqz v0, :cond_9

    .line 255
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    iget-wide v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->appCategory:J

    return-wide v0

    .line 257
    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAppInfo()Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    return-object v0
.end method

.method public getAppTrustLevel()J
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    if-eqz v0, :cond_9

    .line 271
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    iget-wide v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->trustLevel:J

    return-wide v0

    .line 273
    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAudioContentCategory()J
    .registers 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    if-eqz v0, :cond_9

    .line 344
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    iget-wide v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentCategory:J

    return-wide v0

    .line 346
    :cond_9
    const-wide/32 v0, -0x80000000

    return-wide v0
.end method

.method public getDisplayContentCategory()J
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    if-eqz v0, :cond_9

    .line 293
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    iget-wide v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentCategory:J

    return-wide v0

    .line 295
    :cond_9
    const-wide/32 v0, -0x80000000

    return-wide v0
.end method

.method public getDisplayContentRules()J
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    if-eqz v0, :cond_9

    .line 310
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    iget-wide v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentRules:J

    return-wide v0

    .line 312
    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDisplayTrustLevel()J
    .registers 7

    .prologue
    const-wide/16 v4, 0xa0

    const-wide/16 v2, 0x80

    .line 322
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    if-eqz v0, :cond_28

    .line 323
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->isCertifiedApp()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 324
    return-wide v4

    .line 325
    :cond_f
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    iget-wide v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->trustLevel:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1a

    .line 326
    const-wide/16 v0, 0x60

    return-wide v0

    .line 327
    :cond_1a
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    iget-wide v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->trustLevel:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    .line 328
    return-wide v2

    .line 330
    :cond_23
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    iget-wide v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->trustLevel:J

    return-wide v0

    .line 333
    :cond_28
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolID()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    if-eqz v0, :cond_a

    .line 243
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->protocolID:Ljava/lang/String;

    return-object v0

    .line 245
    :cond_a
    return-object v1
.end method

.method public hasRequiredElements()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    if-nez v0, :cond_6

    .line 167
    return v1

    .line 171
    :cond_6
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    if-nez v0, :cond_f

    .line 172
    :cond_e
    return v1

    .line 174
    :cond_f
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->hasRequiredElements()Z

    move-result v0

    if-nez v0, :cond_20

    .line 175
    :cond_1f
    return v1

    .line 178
    :cond_20
    const/4 v0, 0x1

    return v0
.end method

.method public isCertifiedApp()Z
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public setAppCategory(I)V
    .registers 6
    .param p1, "applicationCategory"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    int-to-long v2, p1

    iput-wide v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->appCategory:J

    .line 260
    return-void
.end method

.method public setAppInfo(Lcom/lge/mirrorlink/upnp/applicationserver/types/App;)V
    .registers 10
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    .prologue
    .line 193
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->name:Ljava/lang/String;

    .line 194
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->variant:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->variant:Ljava/lang/String;

    .line 195
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerName:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerName:Ljava/lang/String;

    .line 196
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerURL:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->providerURL:Ljava/lang/String;

    .line 197
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->description:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->description:Ljava/lang/String;

    .line 199
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    if-eqz v5, :cond_3f

    .line 200
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    .line 201
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "icon$iterator":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    .line 203
    .local v1, "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    :try_start_31
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->iconList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_31 .. :try_end_3c} :catch_3d

    goto :goto_25

    .line 204
    :catch_3d
    move-exception v0

    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_25

    .line 209
    .end local v0    # "cnse":Ljava/lang/CloneNotSupportedException;
    .end local v1    # "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    .end local v2    # "icon$iterator":Ljava/util/Iterator;
    :cond_3f
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    if-eqz v5, :cond_6b

    .line 210
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    .line 211
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "id$iterator":Ljava/util/Iterator;
    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 212
    .local v3, "id":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->allowedProfileIDs:Ljava/util/List;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 217
    .end local v3    # "id":Ljava/lang/Integer;
    .end local v4    # "id$iterator":Ljava/util/Iterator;
    :cond_6b
    :try_start_6b
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->remotingInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;
    :try_end_75
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6b .. :try_end_75} :catch_a2

    .line 221
    :goto_75
    :try_start_75
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;
    :try_end_7f
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_75 .. :try_end_7f} :catch_a0

    .line 225
    :goto_7f
    :try_start_7f
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;
    :try_end_89
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7f .. :try_end_89} :catch_9e

    .line 229
    :goto_89
    :try_start_89
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;
    :try_end_93
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_89 .. :try_end_93} :catch_9c

    .line 232
    :goto_93
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appCertificateURL:Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appCertificateURL:Ljava/lang/String;

    .line 233
    iget-object v5, p1, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->resourceStatus:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$ResourceStatus;

    .line 191
    return-void

    .line 230
    :catch_9c
    move-exception v0

    .restart local v0    # "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_93

    .line 226
    .end local v0    # "cnse":Ljava/lang/CloneNotSupportedException;
    :catch_9e
    move-exception v0

    .restart local v0    # "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_89

    .line 222
    .end local v0    # "cnse":Ljava/lang/CloneNotSupportedException;
    :catch_a0
    move-exception v0

    .restart local v0    # "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_7f

    .line 218
    .end local v0    # "cnse":Ljava/lang/CloneNotSupportedException;
    :catch_a2
    move-exception v0

    .restart local v0    # "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_75
.end method

.method public setAppTrustLevel(I)Z
    .registers 6
    .param p1, "trustLevel"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    if-eqz v0, :cond_b

    .line 279
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    int-to-long v2, p1

    iput-wide v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->trustLevel:J

    .line 280
    const/4 v0, 0x1

    return v0

    .line 282
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public setAudioContentCategory(I)V
    .registers 6
    .param p1, "contentCategory"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->audioInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;

    int-to-long v2, p1

    iput-wide v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AudioInfo;->contentCategory:J

    .line 349
    return-void
.end method

.method public setDisplayContentCategory(I)V
    .registers 6
    .param p1, "contentCategory"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/App;->displayInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;

    int-to-long v2, p1

    iput-wide v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/DisplayInfo;->contentCategory:J

    .line 298
    return-void
.end method
