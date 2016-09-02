.class public Lcom/lge/android/atservice/NfcTestService;
.super Ljava/lang/Object;
.source "NfcTestService.java"


# static fields
.field private static final MyTAG:Ljava/lang/String; = "NfcAtServiceTest"

.field private static bTestStarted:Z

.field private static mIsAdapterEnabled:Z

.field private static mRetData:[B

.field private static mRetString:Ljava/lang/String;

.field private static nChipFwVersion:I

.field private static nFileFwVersion:I

.field private static reResult:B

.field private static reString:Ljava/lang/String;

.field private static resp1:B

.field private static resp2:B

.field private static resp3:B


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

.field private mNfcManager:Landroid/nfc/NfcManager;

.field private mServiceContext:Lcom/lge/systemservice/core/LGContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 26
    sput-boolean v1, Lcom/lge/android/atservice/NfcTestService;->bTestStarted:Z

    .line 32
    sput-boolean v1, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "FAIL"

    sput-object v0, Lcom/lge/android/atservice/NfcTestService;->reString:Ljava/lang/String;

    .line 36
    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 37
    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->resp3:B

    .line 40
    sput v1, Lcom/lge/android/atservice/NfcTestService;->nFileFwVersion:I

    .line 41
    sput v1, Lcom/lge/android/atservice/NfcTestService;->nChipFwVersion:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    .line 29
    iput-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 39
    iput-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcManager:Landroid/nfc/NfcManager;

    .line 44
    const-string/jumbo v0, "@@NfcTestService Called"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/lge/android/atservice/NfcTestService;->mContext:Landroid/content/Context;

    .line 49
    const-string/jumbo v0, "@@LGContext"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/lge/android/atservice/NfcTestService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 52
    iget-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    if-eqz v0, :cond_38

    .line 53
    iget-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    const-string/jumbo v1, "nfcLgService"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/NfcLgManager;

    iput-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    .line 54
    const-string/jumbo v0, "Create NFCDevice mServiceContext"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 58
    :cond_38
    iget-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v0, :cond_44

    .line 59
    iget-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    invoke-virtual {v0}, Lcom/lge/systemservice/core/NfcLgManager;->createNfcFactoryObj()Z

    move-result v0

    sput-boolean v0, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    .line 43
    :cond_44
    return-void
.end method


# virtual methods
.method public ActAntSelfTest()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 188
    const-string/jumbo v1, "ActAntSelfTest::In"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 192
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckTestStatus()Z

    move-result v0

    .line 194
    .local v0, "status":Z
    if-nez v0, :cond_19

    .line 195
    const-string/jumbo v1, "ActAntSelfTest:: not in test"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 196
    return-void

    .line 199
    :cond_19
    iget-object v1, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v1, :cond_27

    .line 200
    iget-object v1, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    invoke-virtual {v1, v5, v2}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 203
    :cond_27
    sget-object v1, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v1, v1, v4

    if-ne v1, v3, :cond_8a

    .line 204
    sget-object v1, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v1, v1, v3

    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    .line 205
    sget-object v1, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->resp2:B

    .line 206
    sget-object v1, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v1, v1, v5

    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->resp3:B

    .line 207
    sput-byte v3, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 213
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ActAntSelfTest called["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-byte v2, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-byte v2, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-byte v2, Lcom/lge/android/atservice/NfcTestService;->resp2:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-byte v2, Lcom/lge/android/atservice/NfcTestService;->resp3:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 185
    return-void

    .line 210
    :cond_8a
    sput-byte v4, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_42
.end method

.method public CheckFirmware()Z
    .registers 4

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, "ret":Z
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->GetVersion()V

    .line 567
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->GetFileVersion()V

    .line 569
    sget v1, Lcom/lge/android/atservice/NfcTestService;->nFileFwVersion:I

    sget v2, Lcom/lge/android/atservice/NfcTestService;->nChipFwVersion:I

    if-ne v1, v2, :cond_12

    .line 570
    const/4 v0, 0x1

    .line 571
    const/4 v1, 0x1

    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 578
    :goto_11
    return v0

    .line 574
    :cond_12
    const/4 v0, 0x0

    .line 575
    const/4 v1, 0x0

    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_11
.end method

.method public CheckSwpStatus()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "swp":B
    const-string/jumbo v2, "CheckSwpStatus::In"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 142
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckTestStatus()Z

    move-result v0

    .line 144
    .local v0, "status":Z
    if-nez v0, :cond_19

    .line 145
    const-string/jumbo v2, "CheckSwpStatus:: not in test"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 146
    return-void

    .line 149
    :cond_19
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_28

    .line 150
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 153
    :cond_28
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v2, v2, v5

    if-ne v2, v6, :cond_79

    .line 154
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v1, v2, v6

    .line 155
    .local v1, "swp":B
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 156
    packed-switch v1, :pswitch_data_7c

    .line 174
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 182
    .end local v1    # "swp":B
    :goto_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CheckSwpStatus called["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-byte v3, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 134
    return-void

    .line 158
    .restart local v1    # "swp":B
    :pswitch_65
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    .line 159
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->resp2:B

    goto :goto_39

    .line 162
    :pswitch_6a
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    .line 163
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->resp2:B

    goto :goto_39

    .line 166
    :pswitch_6f
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    .line 167
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->resp2:B

    goto :goto_39

    .line 170
    :pswitch_74
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    .line 171
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->resp2:B

    goto :goto_39

    .line 179
    .local v1, "swp":B
    :cond_79
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_39

    .line 156
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_65
        :pswitch_6a
        :pswitch_6f
        :pswitch_74
    .end packed-switch
.end method

.method public CheckTestStatus()Z
    .registers 2

    .prologue
    .line 555
    sget-boolean v0, Lcom/lge/android/atservice/NfcTestService;->bTestStarted:Z

    if-nez v0, :cond_6

    .line 556
    const/4 v0, 0x0

    return v0

    .line 559
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public FinshTestEnv()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 520
    const/16 v2, 0xa

    new-array v0, v2, [B

    .line 523
    .local v0, "reg_set":[B
    const-string/jumbo v2, "FinshTestEnv::In"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 527
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckTestStatus()Z

    move-result v1

    .line 529
    .local v1, "status":Z
    if-nez v1, :cond_1e

    .line 530
    const-string/jumbo v2, "SetTestEnv::Already Off Out"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 531
    sput-byte v4, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 532
    return-void

    .line 535
    :cond_1e
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_2c

    .line 540
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    invoke-virtual {v2, v4, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 543
    :cond_2c
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v2, v2, v5

    if-ne v2, v4, :cond_37

    .line 544
    sput-boolean v5, Lcom/lge/android/atservice/NfcTestService;->bTestStarted:Z

    .line 545
    sput-byte v4, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 551
    :goto_36
    return-void

    .line 548
    :cond_37
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_36
.end method

.method public GetCPLC(B)V
    .registers 12
    .param p1, "cmdByte"    # B

    .prologue
    const-wide/16 v8, 0x5dc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, "NfcStatus":Z
    const-string/jumbo v2, "GetCPLC::In"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 432
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckTestStatus()Z

    move-result v1

    .line 434
    .local v1, "status":Z
    if-nez v1, :cond_7d

    .line 435
    const-string/jumbo v2, "GetCPLC goto test"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 437
    sget-boolean v2, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    if-nez v2, :cond_2f

    .line 438
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_2f

    .line 439
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    invoke-virtual {v2}, Lcom/lge/systemservice/core/NfcLgManager;->createNfcFactoryObj()Z

    move-result v2

    sput-boolean v2, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    .line 440
    const-wide/16 v2, 0x15e

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 444
    :cond_2f
    sget-boolean v2, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    if-nez v2, :cond_3c

    .line 445
    const-string/jumbo v2, "TestEnvironment not ready"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 446
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 447
    return-void

    .line 450
    :cond_3c
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->NfcGetDefaultAdapter()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 451
    const-string/jumbo v2, "mNfcAdapter Fail"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 452
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 453
    return-void

    .line 456
    :cond_4b
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_60

    .line 457
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 458
    const/4 v0, 0x1

    .line 460
    :cond_58
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 461
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 464
    :cond_60
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_6e

    .line 465
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    invoke-virtual {v2, v5, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 468
    :cond_6e
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v2, v2, v5

    if-eq v2, v6, :cond_7d

    .line 469
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 470
    const-string/jumbo v2, "GetCPLC fail not in test"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 471
    return-void

    .line 475
    :cond_7d
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_91

    .line 476
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    const/16 v4, 0xe

    invoke-virtual {v2, v4, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 477
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->reString:Ljava/lang/String;

    .line 481
    :cond_91
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v2, v2, v5

    if-lez v2, :cond_b4

    .line 482
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 488
    :goto_99
    if-nez v1, :cond_b3

    .line 489
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_a9

    .line 490
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    invoke-virtual {v2, v6, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 492
    :cond_a9
    if-eqz v0, :cond_b3

    .line 493
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 494
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 498
    :cond_b3
    return-void

    .line 485
    :cond_b4
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_99
.end method

.method public GetFileVersion()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, "version":I
    const-string/jumbo v2, "GetFileVersion::In"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 252
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_1b

    .line 253
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 255
    :cond_1b
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v2, v2, v6

    if-ne v2, v5, :cond_5d

    .line 256
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v2, v2, v5

    and-int/lit16 v1, v2, 0xff

    .line 257
    sput v1, Lcom/lge/android/atservice/NfcTestService;->nFileFwVersion:I

    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "sf":Ljava/lang/String;
    sput-object v0, Lcom/lge/android/atservice/NfcTestService;->reString:Ljava/lang/String;

    .line 260
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 266
    .end local v0    # "sf":Ljava/lang/String;
    :goto_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GetFileVersion called["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-byte v3, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 245
    return-void

    .line 263
    :cond_5d
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_31
.end method

.method public GetMode()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 504
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 505
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckTestStatus()Z

    move-result v0

    .line 506
    .local v0, "status":Z
    sput-byte v2, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 508
    if-eqz v0, :cond_15

    .line 509
    const-string/jumbo v1, "GetMode::on"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 510
    sput-byte v2, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    .line 516
    :goto_14
    return-void

    .line 513
    :cond_15
    const-string/jumbo v1, "GetMode::off"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 514
    const/4 v1, 0x0

    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    goto :goto_14
.end method

.method public GetVersion()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x5dc

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "NfcStatus":Z
    const/4 v3, 0x0

    .line 350
    .local v3, "version":I
    const-string/jumbo v4, "GetVersion::In"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 353
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckTestStatus()Z

    move-result v2

    .line 354
    .local v2, "status":Z
    if-nez v2, :cond_7e

    .line 356
    const-string/jumbo v4, "GetVersion goto test"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 358
    sget-boolean v4, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    if-nez v4, :cond_30

    .line 359
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v4, :cond_30

    .line 360
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    invoke-virtual {v4}, Lcom/lge/systemservice/core/NfcLgManager;->createNfcFactoryObj()Z

    move-result v4

    sput-boolean v4, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    .line 361
    const-wide/16 v4, 0x15e

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 365
    :cond_30
    sget-boolean v4, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    if-nez v4, :cond_3d

    .line 366
    const-string/jumbo v4, "TestEnvironment not ready"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 367
    sput-byte v7, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 368
    return-void

    .line 371
    :cond_3d
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->NfcGetDefaultAdapter()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 372
    const-string/jumbo v4, "mNfcAdapter Fail"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 373
    sput-byte v7, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 374
    return-void

    .line 377
    :cond_4c
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v4, :cond_61

    .line 378
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 379
    const/4 v0, 0x1

    .line 381
    :cond_59
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 382
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 385
    :cond_61
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v4, :cond_6f

    .line 386
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v5, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    invoke-virtual {v4, v8, v5}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 389
    :cond_6f
    sget-object v4, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v4, v4, v8

    if-eq v4, v7, :cond_7e

    .line 390
    sput-byte v8, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 391
    const-string/jumbo v4, "GetVersion fail not in test"

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 392
    return-void

    .line 396
    :cond_7e
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v4, :cond_8d

    .line 397
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v5, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    const/4 v6, 0x7

    invoke-virtual {v4, v6, v5}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 401
    :cond_8d
    sget-object v4, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v4, v4, v8

    if-ne v4, v7, :cond_e9

    .line 402
    sget-object v4, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v4, v4, v7

    and-int/lit16 v3, v4, 0xff

    .line 403
    sput v3, Lcom/lge/android/atservice/NfcTestService;->nChipFwVersion:I

    .line 404
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "sf":Ljava/lang/String;
    sput-object v1, Lcom/lge/android/atservice/NfcTestService;->reString:Ljava/lang/String;

    .line 406
    sput-byte v7, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 412
    .end local v1    # "sf":Ljava/lang/String;
    :goto_a3
    if-nez v2, :cond_bd

    .line 413
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v4, :cond_b3

    .line 414
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v5, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    invoke-virtual {v4, v7, v5}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 416
    :cond_b3
    if-eqz v0, :cond_bd

    .line 417
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 418
    iget-object v4, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 422
    :cond_bd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GetVersion called["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 345
    return-void

    .line 409
    :cond_e9
    sput-byte v8, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_a3
.end method

.method public NfcGetDefaultAdapter()Z
    .registers 3

    .prologue
    .line 64
    const-string/jumbo v0, "NfcGetDefaultAdapter get NFC Service"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_23

    .line 66
    iget-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nfc"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    iput-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcManager:Landroid/nfc/NfcManager;

    .line 67
    iget-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcManager:Landroid/nfc/NfcManager;

    if-eqz v0, :cond_2b

    .line 68
    iget-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcManager:Landroid/nfc/NfcManager;

    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 75
    :cond_23
    const-string/jumbo v0, "mNfcAdapter SUCCESS"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_2b
    const-string/jumbo v0, "mNfcAdapter Fail"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public NfcTestCmd(B[B)Ljava/lang/String;
    .registers 9
    .param p1, "cmdByte"    # B
    .param p2, "resval"    # [B

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NfcTestCmd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 641
    sparse-switch p1, :sswitch_data_102

    .line 695
    const-string/jumbo v0, "Invalid Command Received"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 696
    aput-byte v4, p2, v4

    .line 697
    const/4 v0, 0x0

    return-object v0

    .line 643
    :sswitch_28
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->SetTestEnv()V

    .line 699
    :goto_2b
    sget-byte v0, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    aput-byte v0, p2, v4

    .line 700
    sget-object v0, Lcom/lge/android/atservice/NfcTestService;->reString:Ljava/lang/String;

    return-object v0

    .line 646
    :sswitch_32
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->FinshTestEnv()V

    goto :goto_2b

    .line 649
    :sswitch_36
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckSwpStatus()V

    .line 650
    sget-byte v0, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    aput-byte v0, p2, v2

    .line 651
    sget-byte v0, Lcom/lge/android/atservice/NfcTestService;->resp2:B

    aput-byte v0, p2, v3

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NFC 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NFC 2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto :goto_2b

    .line 656
    :sswitch_74
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ActAntSelfTest()V

    .line 657
    sget-byte v0, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    aput-byte v0, p2, v2

    .line 658
    sget-byte v0, Lcom/lge/android/atservice/NfcTestService;->resp2:B

    aput-byte v0, p2, v3

    .line 659
    sget-byte v0, Lcom/lge/android/atservice/NfcTestService;->resp3:B

    aput-byte v0, p2, v5

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NFC 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NFC 2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NFC 3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 665
    :sswitch_d0
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->TestReaderMode()V

    goto/16 :goto_2b

    .line 668
    :sswitch_d5
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->GetFileVersion()V

    goto/16 :goto_2b

    .line 671
    :sswitch_da
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->UpgradeFirmeware()V

    goto/16 :goto_2b

    .line 675
    :sswitch_df
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->GetVersion()V

    goto/16 :goto_2b

    .line 679
    :sswitch_e4
    invoke-virtual {p0, p1}, Lcom/lge/android/atservice/NfcTestService;->GetCPLC(B)V

    goto/16 :goto_2b

    .line 682
    :sswitch_e9
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->GetMode()V

    .line 683
    sget-byte v0, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    aput-byte v0, p2, v2

    goto/16 :goto_2b

    .line 686
    :sswitch_f2
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckFirmware()Z

    goto/16 :goto_2b

    .line 689
    :sswitch_f7
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->TxContEmissionStart()V

    goto/16 :goto_2b

    .line 692
    :sswitch_fc
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->TxContEmissionStop()V

    goto/16 :goto_2b

    .line 641
    nop

    :sswitch_data_102
    .sparse-switch
        0x30 -> :sswitch_28
        0x31 -> :sswitch_32
        0x32 -> :sswitch_36
        0x33 -> :sswitch_74
        0x34 -> :sswitch_d0
        0x35 -> :sswitch_d5
        0x36 -> :sswitch_da
        0x37 -> :sswitch_df
        0x38 -> :sswitch_e4
        0x39 -> :sswitch_df
        0x41 -> :sswitch_e4
        0x42 -> :sswitch_e9
        0x43 -> :sswitch_f2
        0x64 -> :sswitch_f7
        0x65 -> :sswitch_fc
    .end sparse-switch
.end method

.method public ResetRetString()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 704
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/android/atservice/NfcTestService;->reString:Ljava/lang/String;

    .line 705
    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 706
    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->resp1:B

    .line 707
    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->resp2:B

    .line 708
    sput-byte v1, Lcom/lge/android/atservice/NfcTestService;->resp3:B

    .line 703
    return-void
.end method

.method public SetTestEnv()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 80
    const/16 v1, 0xa

    new-array v0, v1, [B

    .line 81
    .local v0, "reg_set":[B
    const-string/jumbo v1, "SetTestEnv::In"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 85
    sget-boolean v1, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    if-nez v1, :cond_24

    .line 86
    iget-object v1, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v1, :cond_24

    .line 87
    iget-object v1, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    invoke-virtual {v1}, Lcom/lge/systemservice/core/NfcLgManager;->createNfcFactoryObj()Z

    move-result v1

    sput-boolean v1, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    .line 88
    const-wide/16 v2, 0x15e

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 92
    :cond_24
    sget-boolean v1, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    if-nez v1, :cond_31

    .line 93
    const-string/jumbo v1, "TestEnvironment not ready"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 94
    sput-byte v4, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 95
    return-void

    .line 98
    :cond_31
    sget-boolean v1, Lcom/lge/android/atservice/NfcTestService;->bTestStarted:Z

    if-eqz v1, :cond_3e

    .line 99
    const-string/jumbo v1, "SetTestEnv::Already On Out"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 100
    sput-byte v4, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 101
    return-void

    .line 104
    :cond_3e
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->NfcGetDefaultAdapter()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 105
    const-string/jumbo v1, "mNfcAdapter Fail"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 106
    sput-byte v4, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 107
    return-void

    .line 110
    :cond_4d
    iget-object v1, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_5b

    .line 111
    iget-object v1, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 112
    const-wide/16 v2, 0x5dc

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 115
    :cond_5b
    iget-object v1, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v1, :cond_69

    .line 116
    iget-object v1, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    invoke-virtual {v1, v5, v2}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 119
    :cond_69
    sget-object v1, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v1, v1, v5

    if-ne v1, v4, :cond_94

    .line 120
    sput-boolean v4, Lcom/lge/android/atservice/NfcTestService;->bTestStarted:Z

    .line 121
    sput-byte v4, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 131
    :goto_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SetTestEnv called["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/android/atservice/NfcTestService;->bTestStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 79
    return-void

    .line 128
    :cond_94
    sput-boolean v5, Lcom/lge/android/atservice/NfcTestService;->bTestStarted:Z

    .line 129
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_73
.end method

.method public TestReaderMode()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 217
    const/4 v0, 0x0

    .line 220
    .local v0, "ret":I
    const-string/jumbo v2, "TestReaderMode::In"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 224
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckTestStatus()Z

    move-result v1

    .line 225
    .local v1, "status":Z
    if-nez v1, :cond_1c

    .line 226
    const-string/jumbo v2, "TestReaderMode:: not in test"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 228
    return-void

    .line 231
    :cond_1c
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_2b

    .line 232
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 235
    :cond_2b
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v2, v2, v5

    if-ne v2, v6, :cond_54

    .line 236
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 242
    :goto_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TestReaderMode called["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-byte v3, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 216
    return-void

    .line 239
    :cond_54
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_33
.end method

.method public TxContEmissionStart()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 582
    const/4 v0, 0x0

    .line 585
    .local v0, "ret":I
    const-string/jumbo v2, "TxContEmissionStart::In"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 589
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckTestStatus()Z

    move-result v1

    .line 590
    .local v1, "status":Z
    if-nez v1, :cond_1c

    .line 591
    const-string/jumbo v2, "TxContEmissionStart:: not in test"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 593
    return-void

    .line 596
    :cond_1c
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_2c

    .line 597
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 600
    :cond_2c
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v2, v2, v5

    if-ne v2, v6, :cond_55

    .line 601
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 607
    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TxContEmissionStart called["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-byte v3, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 581
    return-void

    .line 604
    :cond_55
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_34
.end method

.method public TxContEmissionStop()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 611
    const/4 v0, 0x0

    .line 614
    .local v0, "ret":I
    const-string/jumbo v2, "TxContEmissionStop::In"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 618
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckTestStatus()Z

    move-result v1

    .line 619
    .local v1, "status":Z
    if-nez v1, :cond_1c

    .line 620
    const-string/jumbo v2, "TxContEmissionStop:: not in test"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 622
    return-void

    .line 625
    :cond_1c
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_2c

    .line 626
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 629
    :cond_2c
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v2, v2, v5

    if-ne v2, v6, :cond_55

    .line 630
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 636
    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TxContEmissionStop called["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-byte v3, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 610
    return-void

    .line 633
    :cond_55
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_34
.end method

.method public UpgradeFirmeware()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x5dc

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 271
    const/4 v0, 0x0

    .line 273
    .local v0, "NfcStatus":Z
    const-string/jumbo v2, "UpgradeFirmeware::In"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->ResetRetString()V

    .line 277
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->CheckTestStatus()Z

    move-result v1

    .line 278
    .local v1, "status":Z
    if-nez v1, :cond_7d

    .line 280
    const-string/jumbo v2, "UpgradeFirmeware goto test"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 282
    sget-boolean v2, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    if-nez v2, :cond_2f

    .line 283
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_2f

    .line 284
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    invoke-virtual {v2}, Lcom/lge/systemservice/core/NfcLgManager;->createNfcFactoryObj()Z

    move-result v2

    sput-boolean v2, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    .line 285
    const-wide/16 v2, 0x15e

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 289
    :cond_2f
    sget-boolean v2, Lcom/lge/android/atservice/NfcTestService;->mIsAdapterEnabled:Z

    if-nez v2, :cond_3c

    .line 290
    const-string/jumbo v2, "TestEnvironment not ready"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 291
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 292
    return-void

    .line 295
    :cond_3c
    invoke-virtual {p0}, Lcom/lge/android/atservice/NfcTestService;->NfcGetDefaultAdapter()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 296
    const-string/jumbo v2, "mNfcAdapter Fail"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 297
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 298
    return-void

    .line 301
    :cond_4b
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_60

    .line 302
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 303
    const/4 v0, 0x1

    .line 305
    :cond_58
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 306
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 310
    :cond_60
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_6e

    .line 311
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    invoke-virtual {v2, v6, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 314
    :cond_6e
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v2, v2, v6

    if-eq v2, v5, :cond_7d

    .line 315
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 316
    const-string/jumbo v2, "UpgradeFirmeware fail not in test"

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 317
    return-void

    .line 321
    :cond_7d
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_8c

    .line 322
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 325
    :cond_8c
    sget-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    aget-byte v2, v2, v6

    if-ne v2, v5, :cond_cf

    .line 326
    sput-byte v5, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    .line 332
    :goto_94
    if-nez v1, :cond_ae

    .line 333
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    if-eqz v2, :cond_a4

    .line 334
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcLgManager:Lcom/lge/systemservice/core/NfcLgManager;

    sget-object v3, Lcom/lge/android/atservice/NfcTestService;->mRetData:[B

    invoke-virtual {v2, v5, v3}, Lcom/lge/systemservice/core/NfcLgManager;->handleNfcTest(I[B)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/android/atservice/NfcTestService;->mRetString:Ljava/lang/String;

    .line 336
    :cond_a4
    if-eqz v0, :cond_ae

    .line 337
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 338
    iget-object v2, p0, Lcom/lge/android/atservice/NfcTestService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 342
    :cond_ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UpgradeFirmeware called["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-byte v3, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 269
    return-void

    .line 329
    :cond_cf
    sput-byte v6, Lcom/lge/android/atservice/NfcTestService;->reResult:B

    goto :goto_94
.end method
