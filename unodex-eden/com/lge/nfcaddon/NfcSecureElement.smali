.class public final Lcom/lge/nfcaddon/NfcSecureElement;
.super Ljava/lang/Object;
.source "NfcSecureElement.java"


# static fields
.field public static final ALL_SE_ID:Ljava/lang/String; = "com.nxp.all_se.ID"

.field public static final ALL_SE_ID_TYPE:I = 0x3

.field public static final HOST_ID:Ljava/lang/String; = "com.nxp.host.ID"

.field public static final HOST_ID_TYPE:I = 0x0

.field public static final SMART_MX_ID:Ljava/lang/String; = "com.nxp.smart_mx.ID"

.field public static final SMART_MX_ID_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NfcSecureElement"

.field public static final UICC_ID:Ljava/lang/String; = "com.nxp.uicc.ID"

.field public static final UICC_ID_TYPE:I = 0x2


# instance fields
.field private mService:Lcom/lge/nfcaddon/INfcSecureElement;


# direct methods
.method public constructor <init>(Lcom/lge/nfcaddon/INfcSecureElement;)V
    .registers 2
    .param p1, "mSecureElementService"    # Lcom/lge/nfcaddon/INfcSecureElement;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    .line 82
    return-void
.end method


# virtual methods
.method public activeSwp()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/lge/nfcaddon/NfcSecureElement;->getDefaultSelectedSecureElement()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "seID":Ljava/lang/String;
    const-string v2, "com.nxp.uicc.ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_14

    .line 311
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UICC is not selected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcSecureElement;->activeSwp()I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a

    .line 320
    return-void

    .line 316
    :catch_1a
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NfcSecureElement"

    const-string v3, "activeSwp failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    new-instance v2, Ljava/io/IOException;

    const-string v3, "activeSwp failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public closeSecureElementConnection(I)V
    .registers 6
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/INfcSecureElement;->closeSecureElementConnection(I)I

    move-result v1

    .line 143
    .local v1, "status":I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 144
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error during the conection close"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    .line 146
    .end local v1    # "status":I
    :catch_14
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in closeSecureElement(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in closeSecureElement()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "status":I
    :cond_24
    return-void
.end method

.method public deSelectedSecureElement()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v1}, Lcom/lge/nfcaddon/INfcSecureElement;->deselectSecureElement()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 363
    return-void

    .line 359
    :catch_6
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NfcSecureElement"

    const-string v2, "deselectSecureElement failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    new-instance v1, Ljava/io/IOException;

    const-string v2, "deselectSecureElement failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public exchangeAPDU(I[B)[B
    .registers 7
    .param p1, "handle"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v2, p1, p2}, Lcom/lge/nfcaddon/INfcSecureElement;->exchangeAPDU(I[B)[B

    move-result-object v1

    .line 124
    .local v1, "response":[B
    if-nez v1, :cond_20

    .line 125
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exchange APDU failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_10

    .line 128
    .end local v1    # "response":[B
    :catch_10
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in exchangeAPDU(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in exchangeAPDU()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "response":[B
    :cond_20
    return-object v1
.end method

.method public getDefaultSelectedSecureElement()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 335
    .local v1, "seID":I
    :try_start_1
    iget-object v2, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcSecureElement;->getSelectedSecureElement()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1f

    move-result v1

    .line 336
    const v2, 0xabcdf0

    if-ne v1, v2, :cond_f

    .line 337
    const-string v2, "com.nxp.uicc.ID"

    .line 339
    :goto_e
    return-object v2

    .line 338
    :cond_f
    const v2, 0xabcdef

    if-ne v1, v2, :cond_17

    .line 339
    const-string v2, "com.nxp.smart_mx.ID"

    goto :goto_e

    .line 341
    :cond_17
    :try_start_17
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Secure Element selected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_1f

    .line 343
    :catch_1f
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NfcSecureElement"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSecureElementTechList(I)[I
    .registers 5
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/INfcSecureElement;->getSecureElementTechList(I)[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 162
    :catch_7
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NfcSecureElement"

    const-string v2, "RemoteException in getSecureElementTechList(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RemoteException in getSecureElementTechList()"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSecureElementUid(I)[B
    .registers 6
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 176
    .local v1, "uid":[B
    :try_start_1
    iget-object v2, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v2, p1}, Lcom/lge/nfcaddon/INfcSecureElement;->getSecureElementUid(I)[B

    move-result-object v1

    .line 178
    if-nez v1, :cond_21

    .line 179
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Get Secure Element UID failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_11

    .line 182
    :catch_11
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in getSecureElementUid(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in getSecureElementUid()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    return-object v1
.end method

.method public openSecureElementConnection(Ljava/lang/String;)I
    .registers 6
    .param p1, "seType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v2, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 94
    :try_start_8
    iget-object v2, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcSecureElement;->openSecureElementConnection()I

    move-result v1

    .line 96
    .local v1, "handle":I
    if-eqz v1, :cond_11

    .line 97
    return v1

    .line 99
    :cond_11
    new-instance v2, Ljava/io/IOException;

    const-string v3, "SmartMX connection not allowed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_19

    .line 101
    .end local v1    # "handle":I
    :catch_19
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in openSecureElementConnection(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in openSecureElementConnection()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_29
    const-string v2, "com.nxp.uicc.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 106
    new-instance v2, Ljava/io/IOException;

    const-string v3, "UICC connection not supported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_39
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown Secure Element type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openSecureElementConnectionForTTIA(Ljava/lang/String;I)I
    .registers 7
    .param p1, "seType"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v2, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 197
    iget-object v2, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    if-nez v2, :cond_14

    .line 198
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Service is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v2, p2}, Lcom/lge/nfcaddon/INfcSecureElement;->openSecureElementConnectionForTTIA(I)I

    move-result v1

    .line 203
    .local v1, "handle":I
    if-eqz v1, :cond_1d

    .line 213
    .end local v1    # "handle":I
    :goto_1c
    return v1

    .line 206
    .restart local v1    # "handle":I
    :cond_1d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "SmartMX connection not allowed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_35

    .line 208
    .end local v1    # "handle":I
    :catch_25
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in openSecureElementConnection(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in openSecureElementConnection()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_35
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    const/4 v1, -0x1

    goto :goto_1c

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3b
    const-string v2, "com.nxp.uicc.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 216
    new-instance v2, Ljava/io/IOException;

    const-string v3, "UICC connection not supported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_4b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown Secure Element type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public selectDefaultSecureElement(Ljava/lang/String;)V
    .registers 9
    .param p1, "seId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "seID":I
    const/4 v4, 0x0

    .line 253
    .local v4, "seSelected":Z
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 254
    const/4 v2, 0x2

    .line 264
    :goto_b
    :try_start_b
    iget-object v5, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v5}, Lcom/lge/nfcaddon/INfcSecureElement;->getSelectedSecureElement()I

    move-result v5

    if-eq v5, v2, :cond_18

    .line 265
    iget-object v5, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v5}, Lcom/lge/nfcaddon/INfcSecureElement;->deselectSecureElement()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_5e

    .line 274
    :cond_18
    :try_start_18
    iget-object v5, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v5}, Lcom/lge/nfcaddon/INfcSecureElement;->getSecureElementList()[I

    move-result-object v3

    .line 275
    .local v3, "seList":[I
    array-length v5, v3

    if-eqz v5, :cond_25

    .line 276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    array-length v5, v3

    if-lt v1, v5, :cond_6e

    .line 285
    .end local v1    # "i":I
    :cond_25
    if-nez v4, :cond_44

    .line 286
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 287
    iget-object v5, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v5, v2}, Lcom/lge/nfcaddon/INfcSecureElement;->storeSePreference(I)V

    .line 288
    new-instance v5, Ljava/io/IOException;

    const-string v6, "UICC not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3c} :catch_3c

    .line 294
    .end local v3    # "seList":[I
    :catch_3c
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "NfcSecureElement"

    const-string v6, "selectUiccCardEmulation: getSecureElementList failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_44
    return-void

    .line 255
    :cond_45
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 256
    const/4 v2, 0x1

    .line 257
    goto :goto_b

    .line 258
    :cond_4f
    const-string v5, "NfcSecureElement"

    const-string v6, "selectDefaultSecureElement: wrong Secure Element ID"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v5, Ljava/io/IOException;

    const-string v6, "selectDefaultSecureElement failed: Wrong Secure Element ID"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 267
    :catch_5e
    move-exception v0

    .line 268
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "NfcSecureElement"

    const-string v6, "selectDefaultSecureElement: getSelectedSecureElement failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failure in deselecting the selected Secure Element"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v3    # "seList":[I
    :cond_6e
    :try_start_6e
    aget v5, v3, v1

    if-ne v5, v2, :cond_78

    .line 279
    iget-object v5, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v5, v2}, Lcom/lge/nfcaddon/INfcSecureElement;->selectSecureElement(I)I

    .line 280
    const/4 v4, 0x1

    .line 276
    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 289
    .end local v1    # "i":I
    :cond_7b
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 290
    iget-object v5, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v5, v2}, Lcom/lge/nfcaddon/INfcSecureElement;->storeSePreference(I)V

    .line 291
    new-instance v5, Ljava/io/IOException;

    const-string v6, "SMART_MX not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_90} :catch_3c
.end method

.method public setDefaultSecureElementState(Z)V
    .registers 6
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v1, 0x0

    .line 377
    .local v1, "seID":I
    :try_start_1
    iget-object v2, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v2}, Lcom/lge/nfcaddon/INfcSecureElement;->getSelectedSecureElement()I

    move-result v1

    .line 380
    if-nez v1, :cond_21

    .line 381
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Secure Element selected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_11

    .line 401
    :catch_11
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NfcSecureElement"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    if-eqz p1, :cond_3a

    .line 387
    :try_start_23
    iget-object v2, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/lge/nfcaddon/INfcSecureElement;->setSecureElementState(Z)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2a

    .line 405
    :goto_29
    return-void

    .line 388
    :catch_2a
    move-exception v0

    .line 389
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2b
    const-string v2, "NfcSecureElement"

    const-string v3, "Enable card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Enable card emulation failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3a} :catch_11

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/nfcaddon/INfcSecureElement;->setSecureElementState(Z)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_40} :catch_41

    goto :goto_29

    .line 396
    :catch_41
    move-exception v0

    .line 397
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_42
    const-string v2, "NfcSecureElement"

    const-string v3, "Disable card emulation failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Disable card emulation failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_51} :catch_11
.end method

.method public setSecureElementStateForTTIA(I)I
    .registers 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    const-string v1, "NfcSecureElement"

    const-string v2, "In setSecureElementStateForTTIA in NfcSecureElement"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/lge/nfcaddon/NfcSecureElement;->mService:Lcom/lge/nfcaddon/INfcSecureElement;

    invoke-interface {v1, p1}, Lcom/lge/nfcaddon/INfcSecureElement;->setSecureElementStateForTTIA(I)I

    move-result v0

    .line 231
    .local v0, "status":I
    const-string v1, "NfcSecureElement"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In setSecureElementStateForTTIA in NfcSecureElement. status : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 232
    return v0

    .line 234
    .end local v0    # "status":I
    :catch_22
    move-exception v1

    const-string v1, "NfcSecureElement"

    const-string v2, "setSecureElementStateForTTIA failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v1, Ljava/io/IOException;

    const-string v2, "setSecureElementStateForTTIA failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
