.class Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;
.super Lcom/lge/android/atservice/MTCHandler$MTCCmd;
.source "MTCHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/MTCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MTCCmdPhoneReport"
.end annotation


# instance fields
.field public enabledFunctions:I

.field public imei:Ljava/lang/String;

.field public modelName:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public releaseDate:Ljava/util/Date;

.field public softwareVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/android/atservice/MTCHandler;


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/MTCHandler;[B)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/android/atservice/MTCHandler;
    .param p2, "cmd"    # [B

    .prologue
    .line 556
    iput-object p1, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->this$0:Lcom/lge/android/atservice/MTCHandler;

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;-><init>(Lcom/lge/android/atservice/MTCHandler;[B)V

    .line 556
    return-void
.end method


# virtual methods
.method public toBytes([B)V
    .registers 8
    .param p1, "cmd"    # [B

    .prologue
    const v5, 0xff00

    .line 564
    invoke-super {p0, p1}, Lcom/lge/android/atservice/MTCHandler$MTCCmd;->toBytes([B)V

    .line 567
    const/4 v0, 0x2

    .line 568
    .local v0, "index":I
    iget-object v3, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->modelName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/lge/android/atservice/Utils;->copyBytes([BI[B)V

    .line 572
    iget-object v3, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->releaseDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v2, v3, 0x76c

    .line 571
    .local v2, "year":I
    const/16 v3, 0xc

    .line 573
    const/16 v0, 0xd

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 574
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    and-int v3, v2, v5

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 575
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget-object v3, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->releaseDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 576
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget-object v3, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->releaseDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Release date: year="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 578
    const-string/jumbo v4, " month="

    .line 577
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 578
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->releaseDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 577
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 579
    const-string/jumbo v4, " date="

    .line 577
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 579
    iget-object v4, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->releaseDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v4

    .line 577
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 582
    const/16 v0, 0x10

    .line 583
    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget-object v3, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/lge/android/atservice/Utils;->copyBytes([BI[B)V

    .line 586
    const/16 v0, 0x38

    .line 587
    iget-object v3, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->imei:Ljava/lang/String;

    if-eqz v3, :cond_97

    .line 588
    iget-object v3, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->imei:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/lge/android/atservice/Utils;->copyBytes([BI[B)V

    .line 592
    :cond_97
    const/16 v0, 0x47

    .line 593
    iget-object v3, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/lge/android/atservice/Utils;->copyBytes([BI[B)V

    .line 596
    const/16 v3, 0x56

    .line 597
    const/16 v0, 0x57

    iget v4, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->enabledFunctions:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 598
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v3, p0, Lcom/lge/android/atservice/MTCHandler$MTCCmdPhoneReport;->enabledFunctions:I

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 599
    sget-boolean v3, Lcom/lge/android/atservice/Debug;->mDebug:Z

    if-eqz v3, :cond_c8

    .line 600
    const-string/jumbo v3, "Phone report response"

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 601
    invoke-static {p1}, Lcom/lge/android/atservice/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 561
    :cond_c8
    return-void
.end method
