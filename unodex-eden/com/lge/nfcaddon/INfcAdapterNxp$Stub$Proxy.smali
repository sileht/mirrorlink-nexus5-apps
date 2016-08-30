.class Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;
.super Ljava/lang/Object;
.source "INfcAdapterNxp.java"

# interfaces
.implements Lcom/lge/nfcaddon/INfcAdapterNxp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;
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
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 129
    return-void
.end method


# virtual methods
.method public DefaultRouteSet(IZZZ)V
    .registers 10
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    if-eqz p2, :cond_34

    move v4, v2

    :goto_15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    if-eqz p3, :cond_36

    move v4, v2

    :goto_1b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    if-eqz p4, :cond_38

    :goto_20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v2, p0, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_3a

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    return-void

    :cond_34
    move v4, v3

    .line 201
    goto :goto_15

    :cond_36
    move v4, v3

    .line 202
    goto :goto_1b

    :cond_38
    move v2, v3

    .line 203
    goto :goto_20

    .line 207
    :catchall_3a
    move-exception v2

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 210
    throw v2
.end method

.method public MifareCLTRouteSet(IZZZ)V
    .registers 10
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 215
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 217
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    if-eqz p2, :cond_34

    move v4, v2

    :goto_15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    if-eqz p3, :cond_36

    move v4, v2

    :goto_1b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    if-eqz p4, :cond_38

    :goto_20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v2, p0, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_3a

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    return-void

    :cond_34
    move v4, v3

    .line 219
    goto :goto_15

    :cond_36
    move v4, v3

    .line 220
    goto :goto_1b

    :cond_38
    move v2, v3

    .line 221
    goto :goto_20

    .line 225
    :catchall_3a
    move-exception v2

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    throw v2
.end method

.method public MifareDesfireRouteSet(IZZZ)V
    .registers 10
    .param p1, "routeLoc"    # I
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 181
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    if-eqz p2, :cond_34

    move v4, v2

    :goto_15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    if-eqz p3, :cond_36

    move v4, v2

    :goto_1b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    if-eqz p4, :cond_38

    :goto_20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v2, p0, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_3a

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    return-void

    :cond_34
    move v4, v3

    .line 183
    goto :goto_15

    :cond_36
    move v4, v3

    .line 184
    goto :goto_1b

    :cond_38
    move v2, v3

    .line 185
    goto :goto_20

    .line 189
    :catchall_3a
    move-exception v2

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    const-string v0, "com.lge.nfcaddon.INfcAdapterNxp"

    return-object v0
.end method

.method public getNfcSecureElementInterface()Lcom/lge/nfcaddon/INfcSecureElement;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/nfcaddon/INfcSecureElement$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcSecureElement;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-object v2

    .line 242
    .local v2, "_result":Lcom/lge/nfcaddon/INfcSecureElement;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    return-object v2

    .line 241
    .end local v2    # "_result":Lcom/lge/nfcaddon/INfcSecureElement;
    :catchall_26
    move-exception v3

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    throw v3
.end method

.method public setScreenOffCondition(Z)V
    .registers 7
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 164
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    if-eqz p1, :cond_11

    const/4 v2, 0x1

    :cond_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v2, p0, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_25

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    return-void

    .line 169
    :catchall_25
    move-exception v2

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    throw v2
.end method

.method public setVzwAidList([Lcom/vzw/nfc/RouteEntry;)Z
    .registers 9
    .param p1, "entries"    # [Lcom/vzw/nfc/RouteEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 147
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 148
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 149
    iget-object v4, p0, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_2c

    move-result v4

    if-eqz v4, :cond_2a

    .line 154
    .local v2, "_result":Z
    :goto_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    return v2

    .end local v2    # "_result":Z
    :cond_2a
    move v2, v3

    .line 151
    goto :goto_23

    .line 153
    :catchall_2c
    move-exception v3

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw v3
.end method
