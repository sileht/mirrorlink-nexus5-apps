.class public Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;
.super Ljava/lang/Object;
.source "TZMirrorLinkInterfaceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;,
        Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$1;
    }
.end annotation


# static fields
.field private static final DAP_PCR_IDX:I = 0xa

.field private static final LGCMD_MLTZ_TPM_EXTEND:I = 0xfe7

.field private static final LGCMD_MLTZ_TPM_QUOTE:I = 0xfe8

.field private static final LGCMD_MLTZ_TPM_QUOTE_GET_QUOTE_INFO:I = 0xfe9

.field private static final LGCMD_MLTZ_TPM_READ:I = 0xfe6

.field private static final LGCMD_MLTZ_VERIFY_RSA_KEY:I = 0xfea

.field private static final MAX_LG_COMMAND_SIZE:I = 0x100

.field private static final PCR_VALUE_LENGTH:I = 0x14

.field private static final QUOTE_SIG_LEN:I = 0x100

.field private static final SHA1_DIGEST_LEN:I = 0x14

.field private static final TAG:Ljava/lang/String; = "TZMirrorLinkInterfaceService"

.field private static final TZ_QUOTE_INFO_LEN:I = 0x30


# instance fields
.field private mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mTZMirrorLinkConnection:Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;)Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mTZMirrorLinkConnection:Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;

    return-object v0
.end method

.method static synthetic -set0(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;
    .registers 2

    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    .line 41
    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mTZMirrorLinkConnection:Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;

    .line 43
    new-instance v0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$1;-><init>(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mConnection:Landroid/content/ServiceConnection;

    .line 65
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mContext:Landroid/content/Context;

    .line 66
    const-string/jumbo v0, "TZMirrorLinkInterfaceService"

    const-string/jumbo v1, "TZMirrorLinkInterfaceService start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method


# virtual methods
.method public bindTzMlService()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.lge.android.atservice"

    const-string/jumbo v3, "com.lge.android.atservice.LGATCMDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 96
    const-string/jumbo v1, "TZMirrorLinkInterfaceService"

    const-string/jumbo v2, "Bind service successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v4

    .line 99
    :cond_28
    const-string/jumbo v1, "TZMirrorLinkInterfaceService"

    const-string/jumbo v2, "Bind service fail!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    return v1
.end method

.method public request(I[B)Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;
    .registers 11
    .param p1, "action"    # I
    .param p2, "in"    # [B

    .prologue
    const/4 v7, 0x0

    .line 140
    iget-object v4, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    if-nez v4, :cond_6

    .line 141
    return-object v7

    .line 144
    :cond_6
    const/4 v3, 0x0

    .line 146
    .local v3, "result":[B
    :try_start_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v4, "action"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string/jumbo v4, "data"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 150
    if-eqz p2, :cond_35

    .line 151
    const-string/jumbo v4, "TZMirrorLinkInterfaceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "in.length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_35
    iget-object v4, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    invoke-interface {v4, v0}, Lcom/lge/android/atservice/client/ILGATCMDService;->request(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 155
    .local v2, "response":Landroid/os/Bundle;
    if-eqz v2, :cond_50

    const-string/jumbo v4, "result"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_50

    .line 157
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 165
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "response":Landroid/os/Bundle;
    .end local v3    # "result":[B
    :goto_4d
    if-nez v3, :cond_5f

    .line 166
    return-object v7

    .line 159
    .restart local v0    # "data":Landroid/os/Bundle;
    .restart local v2    # "response":Landroid/os/Bundle;
    .restart local v3    # "result":[B
    :cond_50
    const-string/jumbo v4, "TZMirrorLinkInterfaceService"

    const-string/jumbo v5, "response.result Error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_59} :catch_5a

    goto :goto_4d

    .line 161
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "response":Landroid/os/Bundle;
    :catch_5a
    move-exception v1

    .line 162
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4d

    .line 169
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v3    # "result":[B
    :cond_5f
    new-instance v4, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;

    invoke-direct {v4, p0, v3}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;-><init>(Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;[B)V

    return-object v4
.end method

.method public setCallback(Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;)V
    .registers 2
    .param p1, "conn"    # Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mTZMirrorLinkConnection:Lcom/lge/mirrorlinkcertupdate/TZMirrorLinkConnection;

    .line 172
    return-void
.end method

.method public tzVerifyPrivateKeyPair()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xfea

    const/4 v4, -0x1

    .line 70
    const-string/jumbo v2, "TZMirrorLinkInterfaceService"

    const-string/jumbo v3, "tzVerifyPrivateKeyPair()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "response":Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;
    new-instance v1, Lcom/lge/mirrorlink/certificate/RsaKeyPairVerifier;

    iget-object v2, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/mirrorlink/certificate/RsaKeyPairVerifier;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, "testKeyVerifier":Lcom/lge/mirrorlink/certificate/RsaKeyVerifier;
    const-string/jumbo v2, "hello RSA\n"

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/certificate/RsaKeyVerifier;->setPlainText(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Lcom/lge/mirrorlink/certificate/RsaKeyVerifier;->makePTPacketWithLength()[B

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->request(I[B)Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;

    move-result-object v0

    .line 77
    .local v0, "response":Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;
    if-nez v0, :cond_26

    .line 78
    const/4 v2, -0x2

    return v2

    .line 79
    :cond_26
    iget v2, v0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;->result:I

    if-eqz v2, :cond_2b

    .line 80
    return v4

    .line 83
    :cond_2b
    invoke-virtual {v1}, Lcom/lge/mirrorlink/certificate/RsaKeyVerifier;->makeCTPacket()[B

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->request(I[B)Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;

    move-result-object v0

    .line 84
    if-nez v0, :cond_36

    .line 85
    return v4

    .line 88
    :cond_36
    iget v2, v0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService$Response;->result:I

    return v2
.end method

.method public unbindTzMlService()V
    .registers 3

    .prologue
    .line 104
    const-string/jumbo v0, "TZMirrorLinkInterfaceService"

    const-string/jumbo v1, "Unbind service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/mirrorlink/certificate/TZMirrorLinkInterfaceService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 103
    return-void
.end method
