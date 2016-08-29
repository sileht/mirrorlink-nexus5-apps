.class public Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;
.super Ljava/lang/Object;
.source "TmProtoUtil.java"


# static fields
.field public static final FBConfigStr:[Ljava/lang/String;

.field public static final PixelFormatStr:[Ljava/lang/String;

.field private static statusConf:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "Svr Orientation Switch Avail"

    aput-object v1, v0, v3

    .line 63
    const-string/jumbo v1, "Svr FB rotaion Avail"

    aput-object v1, v0, v4

    .line 64
    const-string/jumbo v1, "Svr FB up-scailing Avail"

    aput-object v1, v0, v5

    .line 65
    const-string/jumbo v1, "Svr FB down-scailing Avail"

    aput-object v1, v0, v6

    .line 66
    const-string/jumbo v1, "Svr can replace empty FB"

    aput-object v1, v0, v7

    .line 61
    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->FBConfigStr:[Ljava/lang/String;

    .line 68
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "32-bit ARGB888"

    aput-object v1, v0, v3

    .line 70
    const-string/jumbo v1, "Any 32-bit"

    aput-object v1, v0, v4

    .line 71
    const-string/jumbo v1, "24-bit RGB888"

    aput-object v1, v0, v5

    .line 72
    const-string/jumbo v1, "Any 24-bit"

    aput-object v1, v0, v6

    .line 73
    const-string/jumbo v1, "16-bit RGB565"

    aput-object v1, v0, v7

    .line 74
    const-string/jumbo v1, "16-bit ARGB555"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "16-bit RGB444"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "16-bit RGB343"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "Any 16-bit"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "16-bit Gray"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "8-bit Gray"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 68
    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->PixelFormatStr:[Ljava/lang/String;

    .line 415
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "  Key-lock : "

    aput-object v1, v0, v3

    .line 416
    const-string/jumbo v1, "  Device-lock : "

    aput-object v1, v0, v4

    .line 417
    const-string/jumbo v1, "  Screen Saver : "

    aput-object v1, v0, v5

    .line 418
    const-string/jumbo v1, "  Night Mode : "

    aput-object v1, v0, v6

    .line 419
    const-string/jumbo v1, "  Voice control input on MirrorLink Server : "

    aput-object v1, v0, v7

    .line 420
    const-string/jumbo v1, "  Microphone input on MirrorLink Client : "

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 421
    const-string/jumbo v1, "  Driver Distraction : "

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 422
    const-string/jumbo v1, "  Absolute Framebuffer rotation : "

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 423
    const-string/jumbo v1, "  Framebuffer orientation : "

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 415
    sput-object v0, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->statusConf:[Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeAudioBlockNoti([B)Ljava/lang/String;
    .registers 11
    .param p0, "payload"    # [B

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 526
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "Not allowed application category"

    aput-object v4, v3, v7

    .line 527
    const-string/jumbo v4, "Not sufficient application trust level"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 528
    const-string/jumbo v4, "Not allowed application ID"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 529
    const-string/jumbo v4, "Global audio muted"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 530
    const-string/jumbo v4, "Audio stream, as given by application ID, muted"

    aput-object v4, v3, v6

    .line 533
    .local v3, "reason":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 534
    .local v1, "decodedStr":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "MirrorLink Client Audio Blocking Notification Message\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    const-string/jumbo v4, "AppId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {p0, v7}, Lcom/lge/mirrorlink/common/Utility;->getIntString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    invoke-static {p0, v6}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v0

    .line 538
    .local v0, "IReason":I
    const-string/jumbo v4, "Reason for blocking: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {p0, v6}, Lcom/lge/mirrorlink/common/Utility;->getShortString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 540
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5a
    if-ge v2, v8, :cond_6e

    .line 541
    invoke-static {v0, v2}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 542
    aget-object v4, v3, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 540
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 546
    :cond_6e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static decodeCliDispConf([B)Ljava/lang/String;
    .registers 11
    .param p0, "payload"    # [B

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xa

    .line 116
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "Svr Orientation Switch used"

    aput-object v3, v0, v6

    .line 117
    const-string/jumbo v3, "Svr FB rotaion used"

    aput-object v3, v0, v7

    .line 118
    const-string/jumbo v3, "Cli FB up-scaling Avail"

    aput-object v3, v0, v8

    .line 119
    const-string/jumbo v3, "Cli FB down-scailing Avail"

    aput-object v3, v0, v9

    .line 120
    const-string/jumbo v3, "Svr can replace empty FB"

    const/4 v4, 0x4

    aput-object v3, v0, v4

    .line 121
    const-string/jumbo v3, "Cli support framebuffer alternative text message"

    const/4 v4, 0x5

    aput-object v3, v0, v4

    .line 124
    .local v0, "FBConfigStr":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v1, "decodedStr":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "  TM Client Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    aget-byte v4, p0, v6

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    const/16 v4, 0x2e

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    aget-byte v4, p0, v7

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v3, "  Framebuffer Configuration: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 129
    invoke-static {p0, v8}, Lcom/lge/mirrorlink/common/Utility;->getShortString([BI)Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 129
    const-string/jumbo v4, ": \n"

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5f
    array-length v3, v0

    if-ge v2, v3, :cond_7d

    .line 131
    aget-byte v3, p0, v9

    invoke-static {v3, v2}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 132
    const-string/jumbo v3, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 135
    :cond_7d
    const-string/jumbo v3, "  Display[pixel] width:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 136
    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v4

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    const-string/jumbo v4, " height:"

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 138
    const/4 v4, 0x6

    invoke-static {p0, v4}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v4

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    const-string/jumbo v4, "  Display[mm] width:"

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 141
    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v4

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    const-string/jumbo v4, " height:"

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 143
    invoke-static {p0, v5}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v4

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 145
    const-string/jumbo v4, "  Distance user Client Display: "

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v4

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static decodeDevStatus([B)Ljava/lang/String;
    .registers 9
    .param p0, "payload"    # [B

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x0

    const/16 v7, 0xa

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v1, "decodedStr":Ljava/lang/StringBuilder;
    invoke-static {p0, v4}, Lcom/lge/mirrorlink/common/Utility;->getInt([BI)I

    move-result v0

    .line 430
    .local v0, "IConfiguration":I
    const-string/jumbo v3, "Device Features: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 431
    invoke-static {p0, v4}, Lcom/lge/mirrorlink/common/Utility;->getIntString([BI)Ljava/lang/String;

    move-result-object v4

    .line 430
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v6, :cond_3e

    .line 435
    sget-object v3, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->statusConf:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 436
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v2, 0x2

    invoke-static {v0, v4, v5}, Lcom/lge/mirrorlink/common/Utility;->isModeChk(III)Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 439
    :cond_3e
    sget-object v3, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->statusConf:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 440
    const/16 v4, 0x11

    const/16 v5, 0x10

    invoke-static {v0, v4, v5}, Lcom/lge/mirrorlink/common/Utility;->isModeChk(III)Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    sget-object v3, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->statusConf:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 443
    const/16 v4, 0x1a

    const/16 v5, 0x19

    const/16 v6, 0x18

    invoke-static {v0, v4, v5, v6}, Lcom/lge/mirrorlink/common/Utility;->isRotationChk(IIII)Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    sget-object v3, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->statusConf:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 446
    const/16 v4, 0x1c

    const/16 v5, 0x1b

    invoke-static {v0, v4, v5}, Lcom/lge/mirrorlink/common/Utility;->isOrientationChk(III)Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static decodeDevStatusRequest([B)Ljava/lang/String;
    .registers 10
    .param p0, "payload"    # [B

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    const/16 v8, 0xa

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v1, "decodedStr":Ljava/lang/StringBuilder;
    invoke-static {p0, v5}, Lcom/lge/mirrorlink/common/Utility;->getInt([BI)I

    move-result v0

    .line 457
    .local v0, "IConfiguration":I
    const-string/jumbo v4, "  Device Features : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 458
    invoke-static {p0, v5}, Lcom/lge/mirrorlink/common/Utility;->getIntString([BI)Ljava/lang/String;

    move-result-object v5

    .line 457
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v6, :cond_4a

    .line 462
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v2, 0x2

    invoke-static {v0, v4, v5}, Lcom/lge/mirrorlink/common/Utility;->isModeChk(III)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "mode":Ljava/lang/String;
    const-string/jumbo v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 464
    const-string/jumbo v3, "ignore"

    .line 466
    :cond_38
    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->statusConf:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 470
    .end local v3    # "mode":Ljava/lang/String;
    :cond_4a
    const/16 v4, 0x11

    const/16 v5, 0x10

    invoke-static {v0, v4, v5}, Lcom/lge/mirrorlink/common/Utility;->isModeChk(III)Ljava/lang/String;

    move-result-object v3

    .line 471
    .restart local v3    # "mode":Ljava/lang/String;
    const-string/jumbo v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 472
    const-string/jumbo v3, "ignore"

    .line 474
    :cond_5e
    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->statusConf:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->statusConf:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 476
    const/16 v5, 0x1a

    const/16 v6, 0x19

    const/16 v7, 0x18

    invoke-static {v0, v5, v6, v7}, Lcom/lge/mirrorlink/common/Utility;->isRotationChk(IIII)Ljava/lang/String;

    move-result-object v5

    .line 475
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->statusConf:[Ljava/lang/String;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 479
    const/16 v5, 0x1c

    const/16 v6, 0x1b

    invoke-static {v0, v5, v6}, Lcom/lge/mirrorlink/common/Utility;->isOrientationChk(III)Ljava/lang/String;

    move-result-object v5

    .line 478
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static decodeEvtConf([BLjava/lang/String;)Ljava/lang/String;
    .registers 24
    .param p0, "payload"    # [B
    .param p1, "chk"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v13, "decodedStr":Ljava/lang/StringBuilder;
    const/16 v17, 0x10

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    const-string/jumbo v17, "Shift along x axis"

    const/16 v18, 0x0

    aput-object v17, v9, v18

    .line 156
    const-string/jumbo v17, "shift along y axis"

    const/16 v18, 0x1

    aput-object v17, v9, v18

    .line 157
    const-string/jumbo v17, "shift anlog xy diagolals"

    const/16 v18, 0x2

    aput-object v17, v9, v18

    .line 158
    const-string/jumbo v17, "push along z axis"

    const/16 v18, 0x3

    aput-object v17, v9, v18

    .line 159
    const-string/jumbo v17, "pull along z axis"

    const/16 v18, 0x4

    aput-object v17, v9, v18

    .line 160
    const-string/jumbo v17, "Rotation around x axis"

    const/16 v18, 0x5

    aput-object v17, v9, v18

    .line 161
    const-string/jumbo v17, "Rotation around y axis"

    const/16 v18, 0x6

    aput-object v17, v9, v18

    .line 162
    const-string/jumbo v17, "Rotation around z axis"

    const/16 v18, 0x7

    aput-object v17, v9, v18

    .line 163
    const-string/jumbo v17, "second device Shift along x axis"

    const/16 v18, 0x8

    aput-object v17, v9, v18

    .line 164
    const-string/jumbo v17, "second device shift along y axis"

    const/16 v18, 0x9

    aput-object v17, v9, v18

    .line 165
    const-string/jumbo v17, "second device shift anlog xy diagolals"

    const/16 v18, 0xa

    aput-object v17, v9, v18

    .line 166
    const-string/jumbo v17, "second device push along z axis"

    const/16 v18, 0xb

    aput-object v17, v9, v18

    .line 167
    const-string/jumbo v17, "second device pull along z axis"

    const/16 v18, 0xc

    aput-object v17, v9, v18

    .line 168
    const-string/jumbo v17, "second device Rotation around x axis"

    const/16 v18, 0xd

    aput-object v17, v9, v18

    .line 169
    const-string/jumbo v17, "second device Rotation around y axis"

    const/16 v18, 0xe

    aput-object v17, v9, v18

    .line 170
    const-string/jumbo v17, "second device Rotation around z axis"

    const/16 v18, 0xf

    aput-object v17, v9, v18

    .line 173
    .local v9, "KnobKey":[Ljava/lang/String;
    const/16 v17, 0x10

    move/from16 v0, v17

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v17, "Device_Phone_call"

    const/16 v18, 0x0

    aput-object v17, v2, v18

    .line 174
    const-string/jumbo v17, "Device_Phone_end"

    const/16 v18, 0x1

    aput-object v17, v2, v18

    .line 175
    const-string/jumbo v17, "Device_Soft_left"

    const/16 v18, 0x2

    aput-object v17, v2, v18

    .line 176
    const-string/jumbo v17, "Device_Soft_middle"

    const/16 v18, 0x3

    aput-object v17, v2, v18

    .line 177
    const-string/jumbo v17, "Device_soft_right"

    const/16 v18, 0x4

    aput-object v17, v2, v18

    .line 178
    const-string/jumbo v17, "Device_Application"

    const/16 v18, 0x5

    aput-object v17, v2, v18

    .line 179
    const-string/jumbo v17, "Device_Ok"

    const/16 v18, 0x6

    aput-object v17, v2, v18

    .line 180
    const-string/jumbo v17, "Device_Delete"

    const/16 v18, 0x7

    aput-object v17, v2, v18

    .line 181
    const-string/jumbo v17, "Device_Zoom_in"

    const/16 v18, 0x8

    aput-object v17, v2, v18

    .line 182
    const-string/jumbo v17, "Device_Zoom_out"

    const/16 v18, 0x9

    aput-object v17, v2, v18

    .line 183
    const-string/jumbo v17, "Device_Clear"

    const/16 v18, 0xa

    aput-object v17, v2, v18

    .line 184
    const-string/jumbo v17, "Device_Forward"

    const/16 v18, 0xb

    aput-object v17, v2, v18

    .line 185
    const-string/jumbo v17, "Device_BackWard"

    const/16 v18, 0xc

    aput-object v17, v2, v18

    .line 186
    const-string/jumbo v17, "Device_Home"

    const/16 v18, 0xd

    aput-object v17, v2, v18

    .line 187
    const-string/jumbo v17, "Device_Search"

    const/16 v18, 0xe

    aput-object v17, v2, v18

    .line 188
    const-string/jumbo v17, "Device_Menu"

    const/16 v18, 0xf

    aput-object v17, v2, v18

    .line 191
    .local v2, "DeviceKeys":[Ljava/lang/String;
    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/String;

    const-string/jumbo v17, "Multimidia_Play"

    const/16 v18, 0x0

    aput-object v17, v10, v18

    .line 192
    const-string/jumbo v17, "Multimidia_Pause"

    const/16 v18, 0x1

    aput-object v17, v10, v18

    .line 193
    const-string/jumbo v17, "Multimidia_Stop"

    const/16 v18, 0x2

    aput-object v17, v10, v18

    .line 194
    const-string/jumbo v17, "Multimidia_Forward"

    const/16 v18, 0x3

    aput-object v17, v10, v18

    .line 195
    const-string/jumbo v17, "Multimidia_Rewind"

    const/16 v18, 0x4

    aput-object v17, v10, v18

    .line 196
    const-string/jumbo v17, "Multimidia_Next"

    const/16 v18, 0x5

    aput-object v17, v10, v18

    .line 197
    const-string/jumbo v17, "Multimidia_Previous"

    const/16 v18, 0x6

    aput-object v17, v10, v18

    .line 198
    const-string/jumbo v17, "Multimidia_Mute"

    const/16 v18, 0x7

    aput-object v17, v10, v18

    .line 199
    const-string/jumbo v17, "Multimidia_Unmute"

    const/16 v18, 0x8

    aput-object v17, v10, v18

    .line 200
    const-string/jumbo v17, "Multimidia_Photo"

    const/16 v18, 0x9

    aput-object v17, v10, v18

    .line 203
    .local v10, "MultimediaKey":[Ljava/lang/String;
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    .line 204
    const-string/jumbo v17, "ITU keypad(T9 events)"

    const/16 v18, 0x0

    aput-object v17, v8, v18

    .line 205
    const-string/jumbo v17, "Virtual keyboard trigger support"

    const/16 v18, 0x1

    aput-object v17, v8, v18

    .line 206
    const-string/jumbo v17, "Key event listing support"

    const/16 v18, 0x2

    aput-object v17, v8, v18

    .line 207
    const-string/jumbo v17, "event mapping support(MUST be \'1\')"

    const/16 v18, 0x3

    aput-object v17, v8, v18

    .line 208
    const-string/jumbo v17, "additional Function keys"

    const/16 v18, 0x4

    aput-object v17, v8, v18

    .line 211
    .local v8, "KeyRelated":[Ljava/lang/String;
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v11, v0, [Ljava/lang/String;

    .line 212
    const-string/jumbo v17, "Pointer event"

    const/16 v18, 0x0

    aput-object v17, v11, v18

    .line 213
    const-string/jumbo v17, "Touch event"

    const/16 v18, 0x1

    aput-object v17, v11, v18

    .line 214
    const-string/jumbo v17, "Pointer event button mask"

    const/16 v18, 0x2

    aput-object v17, v11, v18

    .line 215
    const-string/jumbo v17, "Number of supported simultaneous events"

    const/16 v18, 0x3

    aput-object v17, v11, v18

    .line 216
    const-string/jumbo v17, "Touch event pressure mask"

    const/16 v18, 0x4

    aput-object v17, v11, v18

    .line 219
    .local v11, "PointerRelated":[Ljava/lang/String;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    .line 220
    const-string/jumbo v17, "Keyboard Layout - Language code : "

    const/16 v18, 0x0

    aput-object v17, v12, v18

    .line 221
    const-string/jumbo v17, "Keyboard Layout - Country code : "

    const/16 v18, 0x1

    aput-object v17, v12, v18

    .line 222
    const-string/jumbo v17, "UI Language - Language code : "

    const/16 v18, 0x2

    aput-object v17, v12, v18

    .line 223
    const-string/jumbo v17, "UI Language - Country code : "

    const/16 v18, 0x3

    aput-object v17, v12, v18

    .line 226
    .local v12, "code":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1b2
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_1de

    .line 227
    const-string/jumbo v17, "  "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v12, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    mul-int/lit8 v18, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->getCodeString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v14, v14, 0x1

    goto :goto_1b2

    .line 230
    :cond_1de
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->getInt([BI)I

    move-result v5

    .line 231
    .local v5, "IKnobKey":I
    const-string/jumbo v17, "  Knob Key: "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->getIntString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    const/4 v14, 0x0

    :goto_205
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_229

    .line 233
    invoke-static {v5, v14}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v17

    if-eqz v17, :cond_226

    .line 234
    const-string/jumbo v17, "    "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    :cond_226
    add-int/lit8 v14, v14, 0x1

    goto :goto_205

    .line 238
    :cond_229
    const/16 v17, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->getInt([BI)I

    move-result v3

    .line 239
    .local v3, "IDeviceKeys":I
    const-string/jumbo v17, "  DeviceKey: "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->getIntString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    const/4 v14, 0x0

    :goto_250
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_274

    .line 241
    invoke-static {v3, v14}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v17

    if-eqz v17, :cond_271

    .line 242
    const-string/jumbo v17, "    "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v2, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :cond_271
    add-int/lit8 v14, v14, 0x1

    goto :goto_250

    .line 246
    :cond_274
    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->getInt([BI)I

    move-result v6

    .line 247
    .local v6, "IMultimediaKey":I
    const-string/jumbo v17, "  MultimediaKey: "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->getIntString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    const/4 v14, 0x0

    :goto_29b
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_2bf

    .line 249
    invoke-static {v6, v14}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v17

    if-eqz v17, :cond_2bc

    .line 250
    const-string/jumbo v17, "    "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v10, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_2bc
    add-int/lit8 v14, v14, 0x1

    goto :goto_29b

    .line 254
    :cond_2bf
    const/16 v17, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->getInt([BI)I

    move-result v4

    .line 255
    .local v4, "IKeyRelated":I
    const-string/jumbo v17, "  KeyRelated: "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->getIntString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x2

    const/16 v20, 0x3

    const/16 v21, 0x8

    filled-new-array/range {v17 .. v21}, [I

    move-result-object v15

    .line 257
    .local v15, "keyRelatedArray":[I
    const/4 v14, 0x0

    :goto_2f4
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_31c

    .line 258
    aget v17, v15, v14

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v17

    if-eqz v17, :cond_319

    .line 259
    const-string/jumbo v17, "    "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v8, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    :cond_319
    add-int/lit8 v14, v14, 0x1

    goto :goto_2f4

    .line 263
    :cond_31c
    const/16 v17, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->getInt([BI)I

    move-result v7

    .line 264
    .local v7, "IPointerRelated":I
    const-string/jumbo v17, "  PointerRelated: "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->getIntString([BI)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x8

    const/16 v20, 0x10

    const/16 v21, 0x18

    filled-new-array/range {v17 .. v21}, [I

    move-result-object v16

    .line 266
    .local v16, "pointerRelatedArray":[I
    const/4 v14, 0x0

    :goto_351
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_37b

    .line 267
    aget v17, v16, v14

    move/from16 v0, v17

    invoke-static {v7, v0}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v17

    if-eqz v17, :cond_378

    .line 268
    const-string/jumbo v17, "    "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v11, v14

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    :cond_378
    add-int/lit8 v14, v14, 0x1

    goto :goto_351

    .line 272
    :cond_37b
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17
.end method

.method public static decodeEvtMap([BLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "payload"    # [B
    .param p1, "chk"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v0, "decodedStr":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "  Client Key Symbol Value : "

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/lge/mirrorlink/common/Utility;->getIntString([BI)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    const-string/jumbo v2, "  Server Key Symbol Value : "

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/lge/mirrorlink/common/Utility;->getIntString([BI)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static decodeFBAlterText([B)Ljava/lang/String;
    .registers 5
    .param p0, "payload"    # [B

    .prologue
    .line 571
    const-string/jumbo v0, "MirrorLink Framebuffer Alternative Text Message"

    .line 572
    .local v0, "decodedStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "AppID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Length of textual Information : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x5

    aget-byte v3, p0, v3

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Textual information : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x7

    aget-byte v3, p0, v3

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    return-object v0
.end method

.method public static decodeFBAlterTextReqiest([B)Ljava/lang/String;
    .registers 5
    .param p0, "payload"    # [B

    .prologue
    .line 587
    const-string/jumbo v0, "MirrorLink Framebuffer Alternative Text Message"

    .line 588
    .local v0, "decodedStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Maximum length of the meta information : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    return-object v0
.end method

.method public static decodeFBBlockNoti([B)Ljava/lang/String;
    .registers 12
    .param p0, "payload"    # [B

    .prologue
    .line 486
    const/16 v9, 0xb

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v9, "Not allowed content category"

    const/4 v10, 0x0

    aput-object v9, v5, v10

    .line 487
    const-string/jumbo v9, "Not allowed application category"

    const/4 v10, 0x1

    aput-object v9, v5, v10

    .line 488
    const-string/jumbo v9, "Not sufficient content trust level"

    const/4 v10, 0x2

    aput-object v9, v5, v10

    .line 489
    const-string/jumbo v9, "Not sufficient application trust level"

    const/4 v10, 0x3

    aput-object v9, v5, v10

    .line 490
    const-string/jumbo v9, "Content rules not followed"

    const/4 v10, 0x4

    aput-object v9, v5, v10

    .line 491
    const-string/jumbo v9, "Not allowed application ID"

    const/4 v10, 0x5

    aput-object v9, v5, v10

    .line 492
    const-string/jumbo v9, "(Invalid bit)"

    const/4 v10, 0x6

    aput-object v9, v5, v10

    .line 493
    const-string/jumbo v9, "(Invalid bit)"

    const/4 v10, 0x7

    aput-object v9, v5, v10

    .line 494
    const-string/jumbo v9, "UI not in focus on remote display"

    const/16 v10, 0x8

    aput-object v9, v5, v10

    .line 495
    const-string/jumbo v9, "UI not visible on remote display"

    const/16 v10, 0x9

    aput-object v9, v5, v10

    .line 496
    const-string/jumbo v9, "UI layout not supported (after a Desktop Size Pseudo Encoding) "

    const/16 v10, 0xa

    aput-object v9, v5, v10

    .line 499
    .local v5, "reason":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 501
    .local v2, "decodedStr":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v7

    .line 502
    .local v7, "x":S
    const/4 v9, 0x2

    invoke-static {p0, v9}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v8

    .line 503
    .local v8, "y":S
    const/4 v9, 0x4

    invoke-static {p0, v9}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v6

    .line 504
    .local v6, "w":S
    const/4 v9, 0x6

    invoke-static {p0, v9}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v3

    .line 505
    .local v3, "h":S
    const/16 v9, 0x8

    invoke-static {p0, v9}, Lcom/lge/mirrorlink/common/Utility;->getInt([BI)I

    move-result v1

    .line 507
    .local v1, "appid":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "range: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "appid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const/16 v9, 0xc

    invoke-static {p0, v9}, Lcom/lge/mirrorlink/common/Utility;->getShort([BI)S

    move-result v0

    .line 511
    .local v0, "IReason":S
    const-string/jumbo v9, "Reason for blocking: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 512
    invoke-static {v0}, Lcom/lge/mirrorlink/common/Utility;->getHexString(S)Ljava/lang/String;

    move-result-object v10

    .line 511
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 513
    const/16 v10, 0xa

    .line 511
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e0
    const/16 v9, 0xb

    if-ge v4, v9, :cond_f8

    .line 516
    invoke-static {v0, v4}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(SI)Z

    move-result v9

    if-eqz v9, :cond_f5

    .line 517
    aget-object v9, v5, v4

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    :cond_f5
    add-int/lit8 v4, v4, 0x1

    goto :goto_e0

    .line 521
    :cond_f8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static decodeKeyEvtList([B)Ljava/lang/String;
    .registers 11
    .param p0, "payload"    # [B

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 291
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v2, "Incremental flag (0 = non-incremental, 1 = incremental)"

    aput-object v2, v0, v6

    .line 292
    const-string/jumbo v2, "Listing flag (0 = black list, 1 = white list)"

    aput-object v2, v0, v5

    .line 293
    const-string/jumbo v2, "Default key event list flag"

    aput-object v2, v0, v7

    .line 294
    const-string/jumbo v2, "Key event list follows flag (0 = last list, 1 = event list follows)"

    aput-object v2, v0, v8

    .line 297
    .local v0, "Configuration":[Ljava/lang/String;
    const-string/jumbo v1, "MirrorLink Server Key Event Listing Messgae"

    .line 298
    .local v1, "decodedStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "KeyList Configuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v6

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, p0, v5

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    aget-byte v2, p0, v5

    invoke-static {v2, v6}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    :cond_6a
    aget-byte v2, p0, v5

    invoke-static {v2, v5}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    :cond_8c
    aget-byte v2, p0, v5

    invoke-static {v2, v7}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    :cond_ae
    aget-byte v2, p0, v5

    invoke-static {v2, v8}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    :cond_d0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Key Event in List :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Key Event Counter :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v7

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, p0, v8

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "KeySymValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v9

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x5

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x6

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x7

    aget-byte v4, p0, v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    return-object v1
.end method

.method public static decodeKeyEvtListRequest([B)Ljava/lang/String;
    .registers 10
    .param p0, "payload"    # [B

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 325
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "Incremental flag (0 = non-incremental, 1 = incremental)"

    aput-object v2, v0, v6

    .line 326
    const-string/jumbo v2, "Listing flag (0 = black list, 1 = white list)"

    aput-object v2, v0, v5

    .line 327
    const-string/jumbo v2, "Default key event list flag"

    aput-object v2, v0, v7

    .line 328
    const-string/jumbo v2, "Key event list follows flag (0 = last list, 1 = event list follows)"

    aput-object v2, v0, v8

    .line 331
    .local v0, "Configuration":[Ljava/lang/String;
    const-string/jumbo v1, "MirrorLink Client Key Event Listing Request Messgae"

    .line 332
    .local v1, "decodedStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "KeyList Configuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v6

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, p0, v5

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    aget-byte v2, p0, v5

    invoke-static {v2, v6}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    :cond_6a
    aget-byte v2, p0, v5

    invoke-static {v2, v5}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    :cond_8c
    aget-byte v2, p0, v5

    invoke-static {v2, v7}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    :cond_ae
    aget-byte v2, p0, v5

    invoke-static {v2, v8}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    :cond_d0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    return-object v1
.end method

.method public static decodeSvrDispConf([B)Ljava/lang/String;
    .registers 9
    .param p0, "payload"    # [B

    .prologue
    const/16 v7, 0x8

    const/16 v6, 0xa

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "decodedStr":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "  TM Server Version: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    const/16 v5, 0x2e

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    const/4 v5, 0x1

    aget-byte v5, p0, v5

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 88
    const-string/jumbo v5, "  Framebuffer Configuration: "

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    const/4 v5, 0x2

    invoke-static {p0, v5}, Lcom/lge/mirrorlink/common/Utility;->getShortString([BI)Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->FBConfigStr:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5f

    .line 92
    const/4 v4, 0x3

    aget-byte v4, p0, v4

    invoke-static {v4, v1}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(BI)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 93
    const-string/jumbo v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->FBConfigStr:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 98
    :cond_5f
    const-string/jumbo v4, "  Relative width: "

    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 98
    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/lge/mirrorlink/common/Utility;->getShortString([BI)Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    const-string/jumbo v5, " height: "

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    const/4 v5, 0x6

    invoke-static {p0, v5}, Lcom/lge/mirrorlink/common/Utility;->getShortString([BI)Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {p0, v7}, Lcom/lge/mirrorlink/common/Utility;->getInt([BI)I

    move-result v3

    .line 103
    .local v3, "pixelFormatSupport":I
    const-string/jumbo v4, "  Pixel Format Support: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v7}, Lcom/lge/mirrorlink/common/Utility;->getIntString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    const/16 v4, 0xb

    new-array v2, v4, [I

    .local v2, "pixelFormatIndex":[I
    fill-array-data v2, :array_c8

    .line 105
    const/4 v1, 0x0

    :goto_a0
    sget-object v4, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->PixelFormatStr:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_c2

    .line 106
    aget v4, v2, v1

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 107
    const-string/jumbo v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->PixelFormatStr:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :cond_bf
    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    .line 111
    :cond_c2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 104
    nop

    :array_c8
    .array-data 4
        0x0
        0x7
        0x8
        0xf
        0x10
        0x11
        0x12
        0x13
        0x17
        0x18
        0x19
    .end array-data
.end method

.method public static decodeTmProtocol(I[B)Ljava/lang/String;
    .registers 3
    .param p0, "TmExtType"    # I
    .param p1, "payload"    # [B

    .prologue
    .line 15
    packed-switch p0, :pswitch_data_68

    .line 58
    :pswitch_3
    const-string/jumbo v0, ""

    return-object v0

    .line 17
    :pswitch_7
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeSvrDispConf([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_c
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeCliDispConf([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_11
    const-string/jumbo v0, "Server"

    invoke-static {p1, v0}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeEvtConf([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_19
    const-string/jumbo v0, "Client"

    invoke-static {p1, v0}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeEvtConf([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_21
    const-string/jumbo v0, "Server"

    invoke-static {p1, v0}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeEvtMap([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_29
    const-string/jumbo v0, "Client"

    invoke-static {p1, v0}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeEvtMap([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_31
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeKeyEvtList([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_36
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeKeyEvtListRequest([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :pswitch_3b
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeVKeyTrigger([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_40
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeVKeyTriggerRequest([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_45
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeDevStatus([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :pswitch_4a
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeDevStatusRequest([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    :pswitch_4f
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeFBBlockNoti([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :pswitch_54
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeAudioBlockNoti([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :pswitch_59
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeTouchEvt([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :pswitch_5e
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeFBAlterText([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_63
    invoke-static {p1}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->decodeFBAlterTextReqiest([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_7
        :pswitch_c
        :pswitch_11
        :pswitch_19
        :pswitch_21
        :pswitch_29
        :pswitch_31
        :pswitch_36
        :pswitch_3b
        :pswitch_40
        :pswitch_45
        :pswitch_4a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4f
        :pswitch_3
        :pswitch_54
        :pswitch_3
        :pswitch_59
        :pswitch_5e
        :pswitch_63
    .end packed-switch
.end method

.method public static decodeTouchEvt([B)Ljava/lang/String;
    .registers 5
    .param p0, "payload"    # [B

    .prologue
    const/16 v3, 0xa

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .local v0, "decodedStr":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MirrorLink Touch Event Message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    const-string/jumbo v1, "Event Number : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->getByteString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    const-string/jumbo v1, "X-position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/lge/mirrorlink/common/Utility;->getShortString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    const-string/jumbo v1, "Y-position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/lge/mirrorlink/common/Utility;->getShortString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    const-string/jumbo v1, "Event identifier : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->getByteString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    const-string/jumbo v1, "Pressure value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p0, v2}, Lcom/lge/mirrorlink/vnc/lib/TmProtoUtil;->getByteString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static decodeVKeyTrigger([B)Ljava/lang/String;
    .registers 11
    .param p0, "payload"    # [B

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 352
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v3, "Valid cursor position "

    aput-object v3, v0, v5

    .line 353
    const-string/jumbo v3, "Valid text input area"

    aput-object v3, v0, v6

    .line 354
    const-string/jumbo v3, "Key Event listing follows"

    aput-object v3, v0, v7

    .line 355
    const-string/jumbo v3, "Virtual keyboard control (0 = show keyboard, 1 = remove keyboard)"

    aput-object v3, v0, v8

    .line 358
    .local v0, "Configuration":[Ljava/lang/String;
    const-string/jumbo v2, "MirrorLink Server Virtual Keyboard Trigger Message"

    .line 360
    .local v2, "decodedStr":Ljava/lang/String;
    aget-byte v3, p0, v5

    shl-int/lit8 v3, v3, 0x18

    aget-byte v4, p0, v6

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aget-byte v4, p0, v7

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v4, p0, v8

    or-int v1, v3, v4

    .line 361
    .local v1, "IConfiguration":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "VK Trigger Configuration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-static {v1, v5}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    :cond_73
    invoke-static {v1, v6}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    :cond_93
    invoke-static {v1, v7}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    :cond_b3
    invoke-static {v1, v8}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    :cond_d3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Cursor - X Position :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, v9

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Cursor - Y Position :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x7

    aget-byte v5, p0, v5

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Text input area X-Position :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    const/16 v5, 0x9

    aget-byte v5, p0, v5

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Text input area Y-Position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    const/16 v5, 0xb

    aget-byte v5, p0, v5

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Text input area Width :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    const/16 v5, 0xd

    aget-byte v5, p0, v5

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Text input area Height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xe

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    const/16 v5, 0xf

    aget-byte v5, p0, v5

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 390
    return-object v2
.end method

.method public static decodeVKeyTriggerRequest([B)Ljava/lang/String;
    .registers 10
    .param p0, "payload"    # [B

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 395
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "Valid cursor position "

    aput-object v3, v0, v5

    .line 396
    const-string/jumbo v3, "Valid text input area"

    aput-object v3, v0, v6

    .line 397
    const-string/jumbo v3, "Key Event listing follows"

    aput-object v3, v0, v7

    .line 398
    const-string/jumbo v3, "Virtual keyboard control (0 = show keyboard, 1 = remove keyboard)"

    aput-object v3, v0, v8

    .line 401
    .local v0, "Configuration":[Ljava/lang/String;
    const-string/jumbo v2, "MirrorLink Client Virtual Keyboard Trigger Request Message"

    .line 402
    .local v2, "decodedStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    aget-byte v3, p0, v5

    shl-int/lit8 v3, v3, 0x18

    aget-byte v4, p0, v6

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aget-byte v4, p0, v7

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v4, p0, v8

    or-int v1, v3, v4

    .line 405
    .local v1, "IConfiguration":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "VK Trigger Configuration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v1, v5}, Lcom/lge/mirrorlink/common/Utility;->isBitSet(II)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    :cond_87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    return-object v2
.end method

.method public static getByteString([BI)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 598
    const-string/jumbo v0, "0x%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aget-byte v2, p0, p1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
