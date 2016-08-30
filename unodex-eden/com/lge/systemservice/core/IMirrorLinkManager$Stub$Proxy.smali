.class Lcom/lge/systemservice/core/IMirrorLinkManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMirrorLinkManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/IMirrorLinkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IMirrorLinkManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 112
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    const-string v0, "com.lge.systemservice.core.IMirrorLinkManager"

    return-object v0
.end method

.method public tzReadPCR([BI)I
    .registers 9
    .param p1, "pcrvalue"    # [B
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 147
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.lge.systemservice.core.IMirrorLinkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 149
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v3, p0, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_result":I
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    return v2

    .line 155
    .end local v2    # "_result":I
    :catchall_2b
    move-exception v3

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    throw v3
.end method

.method public tzTPMExtend([BI)I
    .registers 9
    .param p1, "pcrvalue"    # [B
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.lge.systemservice.core.IMirrorLinkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 169
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v3, p0, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "_result":I
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    return v2

    .line 175
    .end local v2    # "_result":I
    :catchall_2b
    move-exception v3

    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw v3
.end method

.method public tzTPMQuote([BI[B[B)I
    .registers 11
    .param p1, "externalData"    # [B
    .param p2, "index"    # I
    .param p3, "quoteSignature"    # [B
    .param p4, "tzQuoteInfo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 187
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.lge.systemservice.core.IMirrorLinkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 189
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 191
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 192
    iget-object v3, p0, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .local v2, "_result":I
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 196
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 197
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_37

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    return v2

    .line 199
    .end local v2    # "_result":I
    :catchall_37
    move-exception v3

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw v3
.end method

.method public tzWritePCR([BI)I
    .registers 9
    .param p1, "pcrvalue"    # [B
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 124
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 127
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.lge.systemservice.core.IMirrorLinkManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v3, p0, Lcom/lge/systemservice/core/IMirrorLinkManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_result":I
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_2b

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    return v2

    .line 135
    .end local v2    # "_result":I
    :catchall_2b
    move-exception v3

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    throw v3
.end method
