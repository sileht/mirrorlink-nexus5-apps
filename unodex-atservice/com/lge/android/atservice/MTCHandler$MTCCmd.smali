.class Lcom/lge/android/atservice/MTCHandler$MTCCmd;
.super Ljava/lang/Object;
.source "MTCHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/MTCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTCCmd"
.end annotation


# instance fields
.field public cmdcode:B

.field public subcmd:B

.field final synthetic this$0:Lcom/lge/android/atservice/MTCHandler;


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/MTCHandler;[B)V
    .registers 4
    .param p1, "this$0"    # Lcom/lge/android/atservice/MTCHandler;
    .param p2, "cmd"    # [B

    .prologue
    .line 514
    iput-object p1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->this$0:Lcom/lge/android/atservice/MTCHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const/4 v0, 0x0

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->cmdcode:B

    .line 516
    const/4 v0, 0x1

    aget-byte v0, p2, v0

    iput-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->subcmd:B

    .line 514
    return-void
.end method


# virtual methods
.method public toBytes([B)V
    .registers 4
    .param p1, "cmd"    # [B

    .prologue
    .line 520
    iget-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->cmdcode:B

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    .line 521
    iget-byte v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->subcmd:B

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    .line 519
    return-void
.end method
