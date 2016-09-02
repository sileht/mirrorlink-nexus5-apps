.class public Lcom/lge/android/atservice/LGATCMDServiceRequest;
.super Ljava/lang/Object;
.source "LGATCMDServiceRequest.java"


# static fields
.field private static final ACTION_LGE_FACTORY:Ljava/lang/String; = "com.lge.action.atservice.FACTORY"

.field private static final PERMISSION_LGE_FACTORY:Ljava/lang/String; = "com.lge.permission.FACTORY"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/lge/android/atservice/LGATCMDServiceRequest;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private sendRequestToDaemon(Lcom/lge/android/atservice/LGCmdRequest;)Lcom/lge/android/atservice/LGCmdResponse;
    .registers 3
    .param p1, "request"    # Lcom/lge/android/atservice/LGCmdRequest;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDServiceRequest;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lge/android/atservice/LGATCMDService;

    invoke-virtual {v0, p1}, Lcom/lge/android/atservice/LGATCMDService;->SendRequestToDaemon(Lcom/lge/android/atservice/LGCmdRequest;)Lcom/lge/android/atservice/LGCmdResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public request(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .param p1, "req"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 37
    const/4 v2, 0x0

    .line 42
    .local v2, "result":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 43
    .local v3, "uid":I
    new-instance v0, Lcom/lge/android/atservice/LGCmdRequest;

    invoke-direct {v0}, Lcom/lge/android/atservice/LGCmdRequest;-><init>()V

    .line 44
    .local v0, "request":Lcom/lge/android/atservice/LGCmdRequest;
    const-string/jumbo v4, "action"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/lge/android/atservice/LGCmdRequest;->opcode:I

    .line 45
    const-string/jumbo v4, "data"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    .line 47
    iget v4, v0, Lcom/lge/android/atservice/LGCmdRequest;->opcode:I

    const/16 v5, 0x1068

    if-ne v4, v5, :cond_2e

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2e

    .line 48
    const-string/jumbo v4, "caller uid has no permission for the opcode!!"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->LogE(Ljava/lang/String;)V

    .line 49
    return-object v2

    .line 52
    :cond_2e
    iget-object v4, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    if-nez v4, :cond_56

    .line 53
    iput v6, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    .line 58
    :goto_34
    invoke-direct {p0, v0}, Lcom/lge/android/atservice/LGATCMDServiceRequest;->sendRequestToDaemon(Lcom/lge/android/atservice/LGCmdRequest;)Lcom/lge/android/atservice/LGCmdResponse;

    move-result-object v1

    .line 59
    .local v1, "response":Lcom/lge/android/atservice/LGCmdResponse;
    const-string/jumbo v4, "Get response"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 61
    if-eqz v1, :cond_55

    .line 62
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "result":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v2, "result":Landroid/os/Bundle;
    const-string/jumbo v4, "result"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string/jumbo v4, "data"

    invoke-virtual {v1}, Lcom/lge/android/atservice/LGCmdResponse;->ReadData()[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 69
    .end local v2    # "result":Landroid/os/Bundle;
    :cond_55
    return-object v2

    .line 55
    .end local v1    # "response":Lcom/lge/android/atservice/LGCmdResponse;
    .local v2, "result":Landroid/os/Bundle;
    :cond_56
    iget-object v4, v0, Lcom/lge/android/atservice/LGCmdRequest;->body:[B

    array-length v4, v4

    iput v4, v0, Lcom/lge/android/atservice/LGCmdRequest;->length:I

    goto :goto_34
.end method
