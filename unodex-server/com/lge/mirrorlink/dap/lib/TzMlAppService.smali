.class public Lcom/lge/mirrorlink/dap/lib/TzMlAppService;
.super Ljava/lang/Object;
.source "TzMlAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/dap/lib/TzMlAppService$1;
    }
.end annotation


# static fields
.field private static final DAP_PCR_IDX:I = 0xa

.field private static final LGCMD_MLTZ_TPM_EXTEND:I = 0xfe7

.field private static final LGCMD_MLTZ_TPM_QUOTE:I = 0xfe8

.field private static final LGCMD_MLTZ_TPM_QUOTE_GET_QUOTE_INFO:I = 0xfe9

.field private static final LGCMD_MLTZ_TPM_READ:I = 0xfe6

.field private static final MAX_LG_COMMAND_SIZE:I = 0x100

.field private static final PCR_VALUE_LENGTH:I = 0x14

.field private static final QUOTE_SIG_LEN:I = 0x100

.field private static final SHA1_DIGEST_LEN:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MirrorLink_DAP"

.field private static final TZ_QUOTE_INFO_LEN:I = 0x30

.field private static volatile sATService:Lcom/lge/android/atservice/client/ILGATCMDService;

.field private static volatile sTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -set0(Lcom/lge/android/atservice/client/ILGATCMDService;)Lcom/lge/android/atservice/client/ILGATCMDService;
    .registers 1

    sput-object p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    .line 36
    sput-object v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService$1;-><init>(Lcom/lge/mirrorlink/dap/lib/TzMlAppService;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mConnection:Landroid/content/ServiceConnection;

    .line 69
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "TzMlAppService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService$1;-><init>(Lcom/lge/mirrorlink/dap/lib/TzMlAppService;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mConnection:Landroid/content/ServiceConnection;

    .line 74
    const-string/jumbo v0, "MirrorLink_DAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TzMlAppService(), context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/dap/lib/TzMlAppService;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    if-nez v0, :cond_13

    .line 55
    const-class v1, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    monitor-enter v1

    .line 56
    :try_start_7
    sget-object v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    if-nez v0, :cond_12

    .line 57
    new-instance v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit v1

    .line 61
    :cond_13
    sget-object v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sTzMlAppService:Lcom/lge/mirrorlink/dap/lib/TzMlAppService;

    return-object v0

    .line 55
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private request(I[B)Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;
    .registers 11
    .param p1, "action"    # I
    .param p2, "in"    # [B

    .prologue
    const/4 v7, 0x0

    .line 181
    sget-object v4, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    if-nez v4, :cond_f

    .line 182
    const-string/jumbo v4, "MirrorLink_DAP"

    const-string/jumbo v5, "sATService is null !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-object v7

    .line 186
    :cond_f
    const/4 v3, 0x0

    .line 188
    .local v3, "result":[B
    :try_start_10
    new-instance v1, Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;

    invoke-direct {v1, p1, p2}, Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;-><init>(I[B)V

    .line 189
    .local v1, "req":Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;
    sget-object v4, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/lge/android/atservice/client/ILGATCMDService;->request(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 190
    .local v2, "response":Landroid/os/Bundle;
    if-eqz v2, :cond_55

    const-string/jumbo v4, "result"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_55

    .line 191
    const-string/jumbo v4, "MirrorLink_DAP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "response.result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "result"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string/jumbo v4, "data"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 200
    .end local v1    # "req":Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;
    .end local v2    # "response":Landroid/os/Bundle;
    .end local v3    # "result":[B
    :goto_52
    if-nez v3, :cond_64

    .line 201
    return-object v7

    .line 194
    .restart local v1    # "req":Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;
    .restart local v2    # "response":Landroid/os/Bundle;
    .restart local v3    # "result":[B
    :cond_55
    const-string/jumbo v4, "MirrorLink_DAP"

    const-string/jumbo v5, "response.result Error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_5e} :catch_5f

    goto :goto_52

    .line 196
    .end local v1    # "req":Lcom/lge/mirrorlink/dap/lib/TzMlAppRequest;
    .end local v2    # "response":Landroid/os/Bundle;
    :catch_5f
    move-exception v0

    .line 197
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_52

    .line 204
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "result":[B
    :cond_64
    new-instance v4, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;

    invoke-direct {v4, v3}, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;-><init>([B)V

    return-object v4
.end method


# virtual methods
.method public bindATService()Z
    .registers 5

    .prologue
    .line 159
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 160
    const/4 v1, 0x0

    return v1

    .line 163
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.lge.android.atservice"

    const-string/jumbo v3, "com.lge.android.atservice.LGATCMDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public isServiceConnected()Z
    .registers 4

    .prologue
    .line 79
    sget-object v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    if-nez v0, :cond_13

    .line 80
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "isServiceConnected(), sATService is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_d
    sget-object v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_12
    return v0

    .line 82
    :cond_13
    const-string/jumbo v0, "MirrorLink_DAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isServiceConnected(), sATService is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->sATService:Lcom/lge/android/atservice/client/ILGATCMDService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 85
    :cond_30
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public tzReadPCR([BI)I
    .registers 7
    .param p1, "pcrvalue"    # [B
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 94
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "tzReadPCR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "response":Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;
    const-string/jumbo v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0xfe6

    invoke-direct {p0, v2, v1}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->request(I[B)Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;

    move-result-object v0

    .line 98
    .local v0, "response":Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;
    if-nez v0, :cond_25

    .line 99
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "response is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, -0x1

    return v1

    .line 102
    :cond_25
    iget v1, v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->result:I

    if-nez v1, :cond_3c

    .line 103
    iget-object v1, v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->data:[B

    const/16 v2, 0x14

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 104
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "tzReadPCR OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_39
    iget v1, v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->result:I

    return v1

    .line 106
    :cond_3c
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "tzReadPCR FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public tzTPMExtend([BI)I
    .registers 6
    .param p1, "pcrvalue"    # [B
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "tzTPMExtend"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "response":Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;
    const/16 v1, 0xfe7

    invoke-direct {p0, v1, p1}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->request(I[B)Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;

    move-result-object v0

    .line 116
    .local v0, "response":Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;
    if-nez v0, :cond_1d

    .line 117
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "response is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, -0x1

    return v1

    .line 120
    :cond_1d
    iget v1, v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->result:I

    if-nez v1, :cond_2d

    .line 121
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "tzTPMExtend OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_2a
    iget v1, v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->result:I

    return v1

    .line 123
    :cond_2d
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "tzTPMExtend FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public tzTPMQuote([BI[B[B)I
    .registers 10
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
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 129
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "tzTPMQuote"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "response":Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;
    const/16 v1, 0xfe8

    invoke-direct {p0, v1, p1}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->request(I[B)Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;

    move-result-object v0

    .line 132
    .local v0, "response":Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;
    if-nez v0, :cond_1e

    .line 133
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "response is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v4

    .line 136
    :cond_1e
    iget v1, v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->result:I

    if-nez v1, :cond_3e

    .line 137
    iget-object v1, v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->data:[B

    const/16 v2, 0x100

    invoke-static {v1, v3, p3, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 138
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "tzTPMQuote OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_32
    if-nez v0, :cond_48

    .line 143
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "response is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v4

    .line 140
    :cond_3e
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "tzTPMQuote FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 146
    :cond_48
    const/16 v1, 0xfe9

    invoke-direct {p0, v1, p1}, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->request(I[B)Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;

    move-result-object v0

    .line 148
    iget v1, v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->result:I

    if-nez v1, :cond_65

    .line 149
    iget-object v1, v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->data:[B

    const/16 v2, 0x30

    invoke-static {v1, v3, p4, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 150
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "tzTPMQuoteGetQuoteInfo OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_62
    iget v1, v0, Lcom/lge/mirrorlink/dap/lib/TzMlAppResponse;->result:I

    return v1

    .line 152
    :cond_65
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "tzTPMQuoteGetQuoteInfo FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62
.end method

.method public tzWritePCR([BI)I
    .registers 5
    .param p1, "pcrvalue"    # [B
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    const-string/jumbo v0, "MirrorLink_DAP"

    const-string/jumbo v1, "tzWritePCR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public unbindATService()V
    .registers 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_5

    .line 171
    return-void

    .line 174
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/mirrorlink/dap/lib/TzMlAppService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_c} :catch_d

    .line 169
    :goto_c
    return-void

    .line 175
    :catch_d
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "MirrorLink_DAP"

    const-string/jumbo v2, "IllegalArgumentException happens !"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
