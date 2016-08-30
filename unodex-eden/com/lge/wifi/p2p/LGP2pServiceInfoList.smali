.class public Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
.super Ljava/lang/Object;
.source "LGP2pServiceInfoList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pServiceInfoList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LGP2pServiceInfoList"

.field private static sDBG:Z


# instance fields
.field private final mServiceInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wifi/p2p/LGP2pServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->sDBG:Z

    .line 142
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList$1;-><init>()V

    .line 141
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 160
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V
    .registers 4
    .param p1, "serviceInfo"    # Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    .line 43
    sget-boolean v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->sDBG:Z

    if-eqz v0, :cond_15

    .line 44
    const-string v0, "LGP2pServiceInfoList"

    const-string v1, "LGP2pServiceInfoList 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_15
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->update(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V
    .registers 6
    .param p1, "serviceInfoList"    # Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    .line 33
    sget-boolean v2, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->sDBG:Z

    if-eqz v2, :cond_15

    .line 34
    const-string v2, "LGP2pServiceInfoList"

    const-string v3, "LGP2pServiceInfoList 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_15
    invoke-virtual {p1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->getList()Ljava/util/Collection;

    move-result-object v1

    .line 37
    .local v1, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lge/wifi/p2p/LGP2pServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_24

    .line 40
    return-void

    .line 37
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .line 38
    .local v0, "serviceInfo":Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->update(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V

    goto :goto_1d
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lge/wifi/p2p/LGP2pServiceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    .line 24
    sget-boolean v1, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->sDBG:Z

    if-eqz v1, :cond_15

    .line 25
    const-string v1, "LGP2pServiceInfoList"

    const-string v2, "LGP2pServiceInfoList 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_15
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_20

    .line 30
    return-void

    .line 27
    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .line 28
    .local v0, "serviceInfo":Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->update(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V

    goto :goto_19
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->sDBG:Z

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 51
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    return-object v0
.end method

.method public getList()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    .registers 5
    .param p1, "serviceInfo"    # Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .prologue
    .line 86
    sget-boolean v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->sDBG:Z

    if-eqz v0, :cond_20

    .line 87
    const-string v0, "LGP2pServiceInfoList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove : ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_20
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    return-object v0
.end method

.method public setDebugMode(Z)V
    .registers 2
    .param p1, "enableDbg"    # Z

    .prologue
    .line 123
    sput-boolean p1, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->sDBG:Z

    .line 124
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->getList()Ljava/util/Collection;

    move-result-object v1

    .line 111
    .local v1, "servcieInfoList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lge/wifi/p2p/LGP2pServiceInfo;>;"
    const-string v3, "mServiceInfos["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 112
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 113
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_2c

    .line 115
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_31

    .line 119
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 115
    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .line 116
    .local v2, "serviceInfo":Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    const-string v4, "\n ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26
.end method

.method public update(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V
    .registers 6
    .param p1, "serviceInfo"    # Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .prologue
    .line 54
    sget-boolean v1, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->sDBG:Z

    if-eqz v1, :cond_2c

    .line 55
    const-string v1, "LGP2pServiceInfoList"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update : ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2c
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .line 58
    .local v0, "d":Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    if-eqz v0, :cond_41

    .line 59
    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    .line 60
    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    .line 65
    :goto_40
    return-void

    .line 64
    :cond_41
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->mServiceInfos:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40
.end method

.method public updateList(Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V
    .registers 6
    .param p1, "serviceInfoList"    # Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .prologue
    .line 68
    sget-boolean v2, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->sDBG:Z

    if-eqz v2, :cond_b

    .line 69
    const-string v2, "LGP2pServiceInfoList"

    const-string v3, "updateList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_b
    invoke-virtual {p1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->getList()Ljava/util/Collection;

    move-result-object v1

    .line 72
    .local v1, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lge/wifi/p2p/LGP2pServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 75
    return-void

    .line 72
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .line 73
    .local v0, "serviceInfo":Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->update(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V

    goto :goto_13
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->getList()Ljava/util/Collection;

    move-result-object v0

    .line 134
    .local v0, "servcieInfoList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lge/wifi/p2p/LGP2pServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 138
    return-void

    .line 135
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .line 136
    .local v1, "serviceInfo":Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_f
.end method
