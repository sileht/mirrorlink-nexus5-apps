.class public Lcom/lge/systemservice/core/integrity/VerificationReport;
.super Ljava/lang/Object;
.source "VerificationReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/integrity/VerificationReport;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHA256_LEN:I = 0x20


# instance fields
.field public baselineFingerprint:[B

.field public currentTime:Ljava/lang/String;

.field public isValid:I

.field public newFingerprint:[B

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lcom/lge/systemservice/core/integrity/VerificationReport$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/integrity/VerificationReport$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/integrity/VerificationReport;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/lge/systemservice/core/integrity/VerificationReport;->readFromParcel(Landroid/os/Parcel;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[BILjava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baselineFingerprint"    # [B
    .param p3, "newFingerprint"    # [B
    .param p4, "isValid"    # I
    .param p5, "currentTime"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->packageName:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->baselineFingerprint:[B

    .line 71
    iput-object p3, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->newFingerprint:[B

    .line 72
    iput p4, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->isValid:I

    .line 73
    iput-object p5, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->currentTime:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->packageName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .local v0, "baselineFingerprintLen":I
    if-ne v0, v3, :cond_25

    .line 85
    iput-object v4, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->baselineFingerprint:[B

    .line 91
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .local v1, "newFingerprintLen":I
    if-ne v1, v3, :cond_2f

    .line 93
    iput-object v4, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->newFingerprint:[B

    .line 99
    :goto_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->isValid:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->currentTime:Ljava/lang/String;

    .line 101
    return-void

    .line 87
    .end local v1    # "newFingerprintLen":I
    :cond_25
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->baselineFingerprint:[B

    .line 88
    iget-object v2, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->baselineFingerprint:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_10

    .line 95
    .restart local v1    # "newFingerprintLen":I
    :cond_2f
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->newFingerprint:[B

    .line 96
    iget-object v2, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->newFingerprint:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "value":Ljava/lang/StringBuilder;
    const-string v1, "---------------------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "packageName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "baselineFingerprint : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->baselineFingerprint:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "newFingerprint : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->newFingerprint:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "isValid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->isValid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "currentTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->currentTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "---------------------------------------------------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, -0x1

    .line 39
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->baselineFingerprint:[B

    if-nez v0, :cond_1f

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    :goto_d
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->newFingerprint:[B

    if-nez v0, :cond_2b

    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    :goto_14
    iget v0, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->isValid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->currentTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void

    .line 44
    :cond_1f
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->baselineFingerprint:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->baselineFingerprint:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_d

    .line 51
    :cond_2b
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->newFingerprint:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lcom/lge/systemservice/core/integrity/VerificationReport;->newFingerprint:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_14
.end method
