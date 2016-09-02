.class public Lcom/lge/android/atservice/ETAHandler;
.super Ljava/lang/Object;
.source "ETAHandler.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mMTC:Lcom/lge/android/atservice/MTCHandler;

.field private mRequest:Lcom/lge/android/atservice/ETAPacket;

.field private mResponse:Lcom/lge/android/atservice/ETAPacket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sput-object p1, Lcom/lge/android/atservice/ETAHandler;->mContext:Landroid/content/Context;

    .line 20
    new-instance v0, Lcom/lge/android/atservice/ETAPacket;

    invoke-direct {v0}, Lcom/lge/android/atservice/ETAPacket;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/ETAHandler;->mRequest:Lcom/lge/android/atservice/ETAPacket;

    .line 21
    new-instance v0, Lcom/lge/android/atservice/ETAPacket;

    invoke-direct {v0}, Lcom/lge/android/atservice/ETAPacket;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/ETAHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    .line 22
    new-instance v0, Lcom/lge/android/atservice/MTCHandler;

    sget-object v1, Lcom/lge/android/atservice/ETAHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/android/atservice/MTCHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/ETAHandler;->mMTC:Lcom/lge/android/atservice/MTCHandler;

    .line 18
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/lge/android/atservice/ETAHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public request(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v1, p0, Lcom/lge/android/atservice/ETAHandler;->mRequest:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v1, p1}, Lcom/lge/android/atservice/ETAPacket;->decode(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/lge/android/atservice/ETAHandler;->mRequest:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v1}, Lcom/lge/android/atservice/ETAPacket;->dumpCmd()V

    .line 33
    iget-object v1, p0, Lcom/lge/android/atservice/ETAHandler;->mMTC:Lcom/lge/android/atservice/MTCHandler;

    iget-object v2, p0, Lcom/lge/android/atservice/ETAHandler;->mRequest:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v2}, Lcom/lge/android/atservice/ETAPacket;->getDecoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/android/atservice/MTCHandler;->request([B)[B

    move-result-object v0

    .line 35
    .local v0, "rsp":[B
    if-nez v0, :cond_20

    .line 36
    const-string/jumbo v1, "MTC rsp is null!!"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 37
    return-object v3

    .line 39
    :cond_20
    iget-object v1, p0, Lcom/lge/android/atservice/ETAHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v1, v0}, Lcom/lge/android/atservice/ETAPacket;->encode([B)V

    .line 41
    iget-object v1, p0, Lcom/lge/android/atservice/ETAHandler;->mResponse:Lcom/lge/android/atservice/ETAPacket;

    invoke-virtual {v1}, Lcom/lge/android/atservice/ETAPacket;->getEncoded()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
