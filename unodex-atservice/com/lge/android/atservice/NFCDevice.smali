.class public Lcom/lge/android/atservice/NFCDevice;
.super Lcom/lge/android/atservice/Device;
.source "NFCDevice.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNfcTest:Lcom/lge/android/atservice/NfcTestService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/Device;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/android/atservice/NFCDevice;->mNfcTest:Lcom/lge/android/atservice/NfcTestService;

    .line 19
    iput-object p1, p0, Lcom/lge/android/atservice/NFCDevice;->mContext:Landroid/content/Context;

    .line 21
    const-string/jumbo v0, "@@NFCDevice Start"

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/lge/android/atservice/NfcTestService;

    iget-object v1, p0, Lcom/lge/android/atservice/NFCDevice;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/android/atservice/NfcTestService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/android/atservice/NFCDevice;->mNfcTest:Lcom/lge/android/atservice/NfcTestService;

    .line 16
    return-void
.end method


# virtual methods
.method public atCmd_NFC_SetTestMode(B[B[B)I
    .registers 8
    .param p1, "cmdByte"    # B
    .param p2, "response"    # [B
    .param p3, "resval"    # [B

    .prologue
    const/4 v3, 0x0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NFC Set Test Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/lge/android/atservice/NFCDevice;->mNfcTest:Lcom/lge/android/atservice/NfcTestService;

    if-eqz v1, :cond_31

    .line 30
    iget-object v1, p0, Lcom/lge/android/atservice/NFCDevice;->mNfcTest:Lcom/lge/android/atservice/NfcTestService;

    invoke-virtual {v1, p1, p3}, Lcom/lge/android/atservice/NfcTestService;->NfcTestCmd(B[B)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "resp":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1, p2, v3}, Ljava/lang/String;->getBytes(II[BI)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 36
    :cond_30
    return v3

    .line 39
    .end local v0    # "resp":Ljava/lang/String;
    :cond_31
    const-string/jumbo v1, "mNfcTest is null"

    invoke-static {v1}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 40
    aput-byte v3, p3, v3

    .line 41
    return v3
.end method
