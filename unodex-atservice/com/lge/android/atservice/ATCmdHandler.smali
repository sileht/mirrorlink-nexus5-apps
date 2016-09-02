.class public Lcom/lge/android/atservice/ATCmdHandler;
.super Ljava/lang/Object;
.source "ATCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/android/atservice/ATCmdHandler$Status;
    }
.end annotation


# instance fields
.field private final COMMAND:Ljava/lang/String;

.field protected mResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/android/atservice/ATCmdHandler;->COMMAND:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/lge/android/atservice/ATCmdHandler;->mResult:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method command()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    const-string/jumbo v0, ""

    return-object v0
.end method

.method getResult()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/android/atservice/ATCmdHandler;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method request(Ljava/lang/String;Lcom/lge/android/atservice/ATParser$AtCmdAction;[Ljava/lang/String;)Lcom/lge/android/atservice/ATCmdHandler$Status;
    .registers 5
    .param p1, "atCmd"    # Ljava/lang/String;
    .param p2, "atAct"    # Lcom/lge/android/atservice/ATParser$AtCmdAction;
    .param p3, "atParams"    # [Ljava/lang/String;

    .prologue
    .line 21
    sget-object v0, Lcom/lge/android/atservice/ATCmdHandler$Status;->ERROR:Lcom/lge/android/atservice/ATCmdHandler$Status;

    return-object v0
.end method
