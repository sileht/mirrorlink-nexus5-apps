.class Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;
.super Lcom/lge/android/atservice/MTCHandler$MTCCmd;
.source "MTCHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/MTCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTCCmdPriData"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public strValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/android/atservice/MTCHandler;


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/MTCHandler;[B)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/android/atservice/MTCHandler;
    .param p2, "cmd"    # [B

    .prologue
    .line 807
    iput-object p1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->this$0:Lcom/lge/android/atservice/MTCHandler;

    .line 808
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 809
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 810
    .local v0, "temp":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->name:Ljava/lang/String;

    .line 807
    return-void
.end method


# virtual methods
.method public toBytes([B)V
    .registers 4
    .param p1, "cmd"    # [B

    .prologue
    .line 815
    iget-object v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->strValue:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 816
    iget-object v0, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPriData;->strValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/lge/android/atservice/Utils;->copyBytes([BI[B)V

    .line 814
    :cond_e
    return-void
.end method
