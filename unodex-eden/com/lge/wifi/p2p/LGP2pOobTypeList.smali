.class public Lcom/lge/wifi/p2p/LGP2pOobTypeList;
.super Ljava/lang/Object;
.source "LGP2pOobTypeList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pOobTypeList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOobTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pOobType;",
            "Lcom/lge/wifi/p2p/LGP2pServiceInfoList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pOobTypeList$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pOobTypeList$1;-><init>()V

    .line 114
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pOobType;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V
    .registers 4
    .param p1, "oobType"    # Lcom/lge/wifi/p2p/LGP2pOobType;
    .param p2, "serviceInfoList"    # Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->add(Lcom/lge/wifi/p2p/LGP2pOobType;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pOobTypeList;)V
    .registers 6
    .param p1, "source"    # Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    .line 21
    if-eqz p1, :cond_16

    .line 22
    invoke-virtual {p1}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->getOobTypeList()Ljava/util/Iterator;

    move-result-object v1

    .line 23
    .local v1, "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_17

    .line 29
    .end local v1    # "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :cond_16
    return-void

    .line 24
    .restart local v1    # "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 25
    .local v0, "oobType":Lcom/lge/wifi/p2p/LGP2pOobType;
    invoke-virtual {p1, v0}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->get(Lcom/lge/wifi/p2p/LGP2pOobType;)Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    move-result-object v2

    .line 26
    .local v2, "serviceInfoList":Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
    invoke-virtual {p0, v0, v2}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->add(Lcom/lge/wifi/p2p/LGP2pOobType;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    goto :goto_10
.end method


# virtual methods
.method public add(Lcom/lge/wifi/p2p/LGP2pOobType;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V
    .registers 5
    .param p1, "oobType"    # Lcom/lge/wifi/p2p/LGP2pOobType;
    .param p2, "serviceInfoList"    # Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 41
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_d
    return-void

    .line 43
    :cond_e
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 44
    .local v0, "sInfoList":Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
    invoke-virtual {v0, p2}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->updateList(Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    goto :goto_d
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 37
    return-void
.end method

.method public contains(Lcom/lge/wifi/p2p/LGP2pOobType;)Z
    .registers 3
    .param p1, "oobType"    # Lcom/lge/wifi/p2p/LGP2pOobType;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public get(Lcom/lge/wifi/p2p/LGP2pOobType;)Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
    .registers 3
    .param p1, "oobType"    # Lcom/lge/wifi/p2p/LGP2pOobType;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    return-object v0
.end method

.method public getOobTypeList()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pOobType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/lge/wifi/p2p/LGP2pOobType;)V
    .registers 3
    .param p1, "oobType"    # Lcom/lge/wifi/p2p/LGP2pOobType;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public remove(Lcom/lge/wifi/p2p/LGP2pOobType;Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V
    .registers 5
    .param p1, "oobType"    # Lcom/lge/wifi/p2p/LGP2pOobType;
    .param p2, "serviceInfo"    # Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 54
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 55
    .local v0, "servcieInfoList":Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
    invoke-virtual {v0, p2}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->remove(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .line 57
    invoke-virtual {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->size()I

    move-result v1

    if-nez v1, :cond_1c

    .line 58
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->remove(Lcom/lge/wifi/p2p/LGP2pOobType;)V

    .line 61
    .end local v0    # "servcieInfoList":Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
    :cond_1c
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 80
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const-string v4, "mOobTypeList["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 82
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 83
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->size()I

    move-result v4

    if-lez v4, :cond_28

    .line 85
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->getOobTypeList()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 93
    .end local v1    # "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 87
    .restart local v1    # "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 88
    .local v0, "oobType":Lcom/lge/wifi/p2p/LGP2pOobType;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->get(Lcom/lge/wifi/p2p/LGP2pOobType;)Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    move-result-object v3

    .line 89
    .local v3, "serviceInfoList":Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
    const-string v4, "\n ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lge/wifi/p2p/LGP2pOobType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v4, "\n ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_22
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->getOobTypeList()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    .local v1, "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 111
    return-void

    .line 106
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 107
    .local v0, "oobType":Lcom/lge/wifi/p2p/LGP2pOobType;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->get(Lcom/lge/wifi/p2p/LGP2pOobType;)Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    move-result-object v2

    .line 108
    .local v2, "serviceInfoList":Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/p2p/LGP2pOobType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    invoke-virtual {v2, p1, p2}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b
.end method
