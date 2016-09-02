.class public Lcom/lge/android/atservice/PatternLockClear;
.super Lcom/lge/android/atservice/Device;
.source "PatternLockClear.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PTNCLR"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/lge/android/atservice/Device;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/lge/android/atservice/PatternLockClear;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public PatternLockClr(ILjava/lang/String;)Z
    .registers 15
    .param p1, "request"    # I
    .param p2, "imei"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xe

    if-ne v9, v10, :cond_75

    .line 30
    const/16 v9, 0xe

    new-array v5, v9, [I

    .line 31
    .local v5, "nimei":[I
    const/4 v3, 0x0

    .line 32
    .local v3, "nSum":I
    const/4 v2, -0x1

    .line 34
    .local v2, "nCheckdigit":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    const/16 v9, 0xe

    if-ge v0, v9, :cond_3a

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    aput v9, v5, v0

    .line 36
    const-string/jumbo v9, "PTNCLR"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "PTNCLR_CHECK: imei ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v5, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 39
    :cond_3a
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3b
    const/16 v9, 0xe

    if-ge v1, v9, :cond_5a

    .line 40
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_49

    .line 41
    aget v9, v5, v1

    add-int/2addr v3, v9

    .line 39
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 43
    :cond_49
    aget v9, v5, v1

    mul-int/lit8 v4, v9, 0x2

    .line 44
    .local v4, "nTemp":I
    const/16 v9, 0xa

    if-lt v4, v9, :cond_58

    .line 45
    div-int/lit8 v9, v4, 0xa

    rem-int/lit8 v10, v4, 0xa

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    goto :goto_46

    .line 47
    :cond_58
    add-int/2addr v3, v4

    goto :goto_46

    .line 51
    .end local v4    # "nTemp":I
    :cond_5a
    rem-int/lit8 v9, v3, 0xa

    rsub-int/lit8 v9, v9, 0xa

    rem-int/lit8 v2, v9, 0xa

    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 55
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "nCheckdigit":I
    .end local v3    # "nSum":I
    .end local v5    # "nimei":[I
    :cond_75
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "result":Ljava/lang/String;
    const/16 v9, 0x10

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 58
    .local v8, "seed":I
    mul-int/lit16 v9, v8, 0x5acb

    const v10, 0xf4240

    rem-int v7, v9, v10

    .line 60
    .local v7, "sec_key":I
    const-string/jumbo v9, "PTNCLR"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "PTNCLR_CHECK: imei ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", seed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", seed_key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    mul-int/lit16 v11, v8, 0x5acb

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-ne p1, v7, :cond_d8

    .line 63
    const/4 v9, 0x1

    return v9

    .line 65
    :cond_d8
    const/4 v9, 0x0

    return v9
.end method
