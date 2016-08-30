.class public Lcom/lge/telephony/LGSignalStrength;
.super Ljava/lang/Object;
.source "LGSignalStrength.java"


# static fields
.field private static final DBG:Z = false

.field private static final GSM_ECIO_VALUE:I = -0x37849

.field private static final INVALID:I = 0x7fffffff

.field public static final INVALID_LEVEL:I = -0x1

.field private static final LG_SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "LGSignalStrength"

.field private static final NUM_LG_SIGNAL_STRENGTH_AWESOME:I = 0x5

.field private static final NUM_LG_SIGNAL_STRENGTH_BEST:I = 0x6

.field public static final NUM_LG_SIGNAL_STRENGTH_BINS:I

.field private static final NUM_LG_SIGNAL_STRENGTH_GREAT:I = 0x4

.field private static lastLevelIndex:I

.field private static lastLevels:[I

.field private static mLGRssiData:Lcom/lge/telephony/LGRssiData;


# instance fields
.field private H3G_LTE_RSRP_VALUE:[I

.field private H3G_UMTS_DBM_VALUE:[I

.field private LGE_GSM_ASU_VALUE:[I

.field private LGE_GSM_DBM_VALUE:[I

.field private LGE_LTE_RSRP_VALUE:[I

.field private LGE_UMTS_ASU_VALUE:[I

.field private LGE_UMTS_DBM_VALUE:[I

.field private TEL_LTE_RSRP_VALUE:[I

.field private mDataRadioTechnology:I

.field private mGsmDbm:I

.field private mGsmEcio:I

.field private mLteBand:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getNumSignalStrength()I

    move-result v0

    sput v0, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/lge/telephony/LGSignalStrength;->lastLevelIndex:I

    .line 77
    return-void

    .line 73
    :array_12
    .array-data 4
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v2, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 45
    iput v2, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 48
    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    .line 49
    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_6e

    iput-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->H3G_LTE_RSRP_VALUE:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_7c

    iput-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->H3G_UMTS_DBM_VALUE:[I

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_8a

    iput-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->TEL_LTE_RSRP_VALUE:[I

    .line 61
    const-string v0, "H3G"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->H3G_LTE_RSRP_VALUE:[I

    :goto_2f
    iput-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_LTE_RSRP_VALUE:[I

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_98

    iput-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_GSM_ASU_VALUE:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_a6

    iput-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_UMTS_ASU_VALUE:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_b4

    iput-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_GSM_DBM_VALUE:[I

    .line 68
    const-string v0, "H3G"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->H3G_UMTS_DBM_VALUE:[I

    :goto_50
    iput-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_UMTS_DBM_VALUE:[I

    .line 80
    iput v2, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 82
    iput v2, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 84
    return-void

    .line 61
    :cond_57
    const-string v0, "TEL"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/lge/telephony/LGSignalStrength;->TEL_LTE_RSRP_VALUE:[I

    goto :goto_2f

    :cond_62
    new-array v0, v1, [I

    fill-array-data v0, :array_c2

    goto :goto_2f

    .line 68
    :cond_68
    new-array v0, v1, [I

    fill-array-data v0, :array_d0

    goto :goto_50

    .line 52
    :array_6e
    .array-data 4
        -0x5e
        -0x63
        -0x69
        -0x6f
        -0x7d
    .end array-data

    .line 53
    :array_7c
    .array-data 4
        -0x55
        -0x5b
        -0x63
        -0x6b
        -0x73
    .end array-data

    .line 56
    :array_8a
    .array-data 4
        -0x59
        -0x63
        -0x68
        -0x72
        -0x77
    .end array-data

    .line 64
    :array_98
    .array-data 4
        0xc
        0x9
        0x8
        0x6
        0x5
    .end array-data

    .line 65
    :array_a6
    .array-data 4
        0xd
        0xa
        0x7
        0x5
        0x2
    .end array-data

    .line 66
    :array_b4
    .array-data 4
        -0x5a
        -0x5f
        -0x62
        -0x66
        -0x68
    .end array-data

    .line 61
    :array_c2
    .array-data 4
        -0x54
        -0x5e
        -0x68
        -0x72
        -0x7f
    .end array-data

    .line 68
    :array_d0
    .array-data 4
        -0x58
        -0x5d
        -0x63
        -0x67
        -0x6d
    .end array-data
.end method

.method public static ajc$get$mGsmDbm(Lcom/lge/telephony/LGSignalStrength;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    return v0
.end method

.method public static ajc$get$mGsmEcio(Lcom/lge/telephony/LGSignalStrength;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    return v0
.end method

.method public static ajc$set$mGsmDbm(Lcom/lge/telephony/LGSignalStrength;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    return-void
.end method

.method public static ajc$set$mGsmEcio(Lcom/lge/telephony/LGSignalStrength;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    return-void
.end method

.method private averageOfRecentLevels(I)I
    .registers 8
    .param p1, "level"    # I

    .prologue
    .line 925
    const/4 v2, 0x0

    .line 926
    .local v2, "sum":I
    const/4 v0, 0x0

    .line 927
    .local v0, "avr":I
    sget-object v3, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    sget v4, Lcom/lge/telephony/LGSignalStrength;->lastLevelIndex:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/lge/telephony/LGSignalStrength;->lastLevelIndex:I

    aput p1, v3, v4

    .line 928
    sget v3, Lcom/lge/telephony/LGSignalStrength;->lastLevelIndex:I

    sget-object v4, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    array-length v4, v4

    if-ne v3, v4, :cond_16

    const/4 v3, 0x0

    sput v3, Lcom/lge/telephony/LGSignalStrength;->lastLevelIndex:I

    .line 929
    :cond_16
    const/4 v1, 0x0

    .local v1, "kk":I
    :goto_17
    sget-object v3, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_24

    .line 932
    sget-object v3, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    array-length v3, v3

    div-int v0, v2, v3

    .line 933
    if-le p1, v0, :cond_2c

    .line 934
    :goto_23
    return p1

    .line 930
    :cond_24
    sget-object v3, Lcom/lge/telephony/LGSignalStrength;->lastLevels:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 929
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2c
    move p1, v0

    .line 933
    goto :goto_23
.end method

.method private getAxgpLevel(III)I
    .registers 12
    .param p1, "mLteSignalStrength"    # I
    .param p2, "mLteRsrp"    # I
    .param p3, "mLteRssnr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 940
    const/16 v6, 0x63

    if-ne p1, v6, :cond_9

    move v2, v4

    .line 984
    :cond_8
    :goto_8
    return v2

    .line 944
    :cond_9
    const/4 v2, -0x1

    .line 945
    .local v2, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 947
    .local v3, "snrIconLevel":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAxgpRsrpValue()[I

    move-result-object v0

    .line 948
    .local v0, "mAxgpRsrpValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/telephony/LGRssiData;->getAxgpRssnrValue()[I

    move-result-object v1

    .line 950
    .local v1, "mAxgpRssnrValue":[I
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    move v2, v4

    .line 951
    goto :goto_8

    .line 959
    :cond_21
    const/16 v6, -0x2c

    invoke-virtual {p0, p2, v6, v0}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v2

    .line 960
    const/16 v6, 0x12c

    invoke-virtual {p0, p3, v6, v1}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v3

    .line 966
    const-string v6, "SBM"

    invoke-static {v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 967
    if-eq v2, v5, :cond_39

    if-ne v3, v5, :cond_3b

    :cond_39
    move v2, v5

    .line 968
    goto :goto_8

    .line 972
    :cond_3b
    if-eq v3, v7, :cond_43

    if-eq v2, v7, :cond_43

    .line 973
    if-lt v2, v3, :cond_8

    move v2, v3

    goto :goto_8

    .line 976
    :cond_43
    if-eq v3, v7, :cond_47

    move v2, v3

    .line 977
    goto :goto_8

    .line 980
    :cond_47
    if-ne v2, v7, :cond_8

    move v2, v4

    .line 984
    goto :goto_8
.end method

.method private static getLGRssiData()Lcom/lge/telephony/LGRssiData;
    .registers 1

    .prologue
    .line 1021
    sget-object v0, Lcom/lge/telephony/LGSignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    if-nez v0, :cond_f

    .line 1022
    invoke-static {}, Lcom/lge/telephony/LGRssiData;->getInstance()Lcom/lge/telephony/LGRssiData;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/LGSignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    .line 1023
    sget-object v0, Lcom/lge/telephony/LGSignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    invoke-virtual {v0}, Lcom/lge/telephony/LGRssiData;->init()V

    .line 1026
    :cond_f
    sget-object v0, Lcom/lge/telephony/LGSignalStrength;->mLGRssiData:Lcom/lge/telephony/LGRssiData;

    return-object v0
.end method

.method private getLevelACG(IIIIIIIIIIIZ)I
    .registers 14
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "mGsmDbm"    # I
    .param p11, "mGsmEcio"    # I
    .param p12, "isGsm"    # Z

    .prologue
    .line 839
    invoke-direct/range {p0 .. p12}, Lcom/lge/telephony/LGSignalStrength;->getLevelUSC(IIIIIIIIIIIZ)I

    move-result v0

    return v0
.end method

.method private getLevelCT(IIIIIIIIIIIZ)I
    .registers 16
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "mGsmDbm"    # I
    .param p11, "mGsmEcio"    # I
    .param p12, "isGsm"    # Z

    .prologue
    .line 778
    const/4 v2, 0x0

    .line 780
    .local v2, "level":I
    if-eqz p12, :cond_e

    .line 781
    invoke-virtual {p0, p6, p7, p8, p9}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v2

    .line 782
    if-nez v2, :cond_d

    .line 783
    invoke-virtual {p0, p1, p10, p11}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(III)I

    move-result v2

    .line 805
    :cond_d
    :goto_d
    return v2

    .line 786
    :cond_e
    invoke-virtual {p0, p6, p7, p8, p9}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v2

    .line 787
    if-nez v2, :cond_d

    .line 788
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 789
    .local v0, "cdmaLevel":I
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v1

    .line 790
    .local v1, "evdoLevel":I
    if-nez v1, :cond_20

    .line 792
    move v2, v0

    .line 793
    goto :goto_d

    :cond_20
    if-nez v0, :cond_24

    .line 795
    move v2, v1

    .line 796
    goto :goto_d

    .line 798
    :cond_24
    if-ge v0, v1, :cond_28

    move v2, v0

    :goto_27
    goto :goto_d

    :cond_28
    move v2, v1

    goto :goto_27
.end method

.method private getLevelKDDI(IIIIIIIIIIIZ)I
    .registers 20
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "mGsmDbm"    # I
    .param p11, "mGsmEcio"    # I
    .param p12, "isGsm"    # Z

    .prologue
    .line 734
    const/4 v4, 0x0

    .line 736
    .local v4, "level":I
    if-eqz p12, :cond_3a

    .line 737
    move/from16 v0, p9

    invoke-virtual {p0, p6, p7, p8, v0}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v4

    .line 738
    if-nez v4, :cond_13

    .line 739
    move/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(III)I

    move-result v4

    .line 742
    :cond_13
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_39

    .line 743
    const/16 v5, -0x78

    if-eq p2, v5, :cond_39

    const/16 v5, -0xa0

    if-eq p3, v5, :cond_39

    .line 744
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_39

    .line 745
    const-string v5, "KDDI signalstrength When in call"

    invoke-static {v5}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v4

    .line 771
    :cond_39
    :goto_39
    return v4

    .line 750
    :cond_3a
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v2

    .line 751
    .local v2, "cdmaLevel":I
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v3

    .line 752
    .local v3, "evdoLevel":I
    if-nez v3, :cond_60

    .line 754
    move v4, v2

    .line 763
    :goto_45
    if-nez v4, :cond_39

    .line 764
    move/from16 v0, p9

    invoke-virtual {p0, p6, p7, p8, v0}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v4

    .line 765
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CDMALEVEL is Unknown , getLteLevel: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    goto :goto_39

    .line 755
    :cond_60
    if-nez v2, :cond_64

    .line 757
    move v4, v3

    .line 758
    goto :goto_45

    .line 760
    :cond_64
    if-ge v2, v3, :cond_68

    move v4, v2

    :goto_67
    goto :goto_45

    :cond_68
    move v4, v3

    goto :goto_67
.end method

.method private getLevelKR(IIIIIIIIIIIZ)I
    .registers 17
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "mGsmDbm"    # I
    .param p11, "mGsmEcio"    # I
    .param p12, "isGsm"    # Z

    .prologue
    .line 522
    if-eqz p12, :cond_3e

    .line 525
    invoke-virtual {p0, p6, p7, p8, p9}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v0

    .line 526
    .local v0, "level":I
    const-string v1, "LGU"

    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 528
    const/16 v1, -0x10

    if-lt v1, p9, :cond_32

    if-lez v0, :cond_32

    .line 529
    add-int/lit8 v0, v0, -0x1

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLteRsrq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fixed level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 533
    :cond_32
    if-nez v0, :cond_63

    .line 534
    invoke-virtual {p0, p1, p10, p11}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(III)I

    move-result v0

    move v1, v0

    .line 550
    .end local v0    # "level":I
    :goto_39
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3d

    const/4 v1, 0x0

    :cond_3d
    return v1

    .line 536
    :cond_3e
    const/4 v1, 0x0

    const-string v2, "support_svlte"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 537
    const-string v1, "1"

    const-string v2, "net.ims.ims_indicator"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 542
    invoke-virtual {p0, p6, p7, p8, p9}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v0

    move v1, v0

    .line 543
    goto :goto_39

    .line 545
    :cond_5d
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .restart local v0    # "level":I
    move v1, v0

    goto :goto_39

    :cond_63
    move v1, v0

    goto :goto_39
.end method

.method private getLevelLgeCommonSpec(IIIIIIIIZ)I
    .registers 20
    .param p1, "gsmSignalStrength"    # I
    .param p2, "lteSignalStrength"    # I
    .param p3, "lteRsrp"    # I
    .param p4, "lteRssnr"    # I
    .param p5, "lteRsrq"    # I
    .param p6, "tdcdmaRscp"    # I
    .param p7, "gsmDbm"    # I
    .param p8, "gsmEcio"    # I
    .param p9, "isGsm"    # Z

    .prologue
    .line 875
    const/4 v7, 0x0

    .line 879
    .local v7, "level":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/telephony/LGRssiData;->getAsuGsmValue()[I

    move-result-object v2

    .line 880
    .local v2, "asuGsmValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/telephony/LGRssiData;->getAsuUmtsValue()[I

    move-result-object v3

    .line 886
    .local v3, "asuUmtsValue":[I
    if-eqz p9, :cond_88

    .line 887
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v7

    .line 890
    if-nez v7, :cond_1f

    .line 891
    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/lge/telephony/LGSignalStrength;->getTdScdmaLevel(I)I

    move-result v7

    .line 895
    :cond_1f
    if-nez v7, :cond_88

    .line 896
    const v8, 0x7fffffff

    move/from16 v0, p7

    if-ne v0, v8, :cond_2f

    const v8, 0x7fffffff

    move/from16 v0, p8

    if-eq v0, v8, :cond_7c

    .line 898
    :cond_2f
    const v8, -0x37849

    move/from16 v0, p8

    if-eq v0, v8, :cond_67

    .line 899
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/telephony/LGRssiData;->getUmtsDbmValue()[I

    move-result-object v5

    .line 900
    .local v5, "dbmValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/telephony/LGRssiData;->getUmtsEcioValue()[I

    move-result-object v6

    .line 901
    .local v6, "ecioValue":[I
    iget-object v4, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_UMTS_DBM_VALUE:[I

    .line 907
    :goto_48
    if-nez v2, :cond_7c

    if-nez v3, :cond_7c

    if-nez v5, :cond_7c

    if-nez v6, :cond_7c

    sget v8, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_7c

    .line 908
    const v8, 0x7fffffff

    move/from16 v0, p7

    if-eq v0, v8, :cond_62

    move/from16 v0, p7

    invoke-virtual {p0, v0, v4}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v7

    .line 909
    :cond_62
    const/4 v8, -0x1

    if-ne v7, v8, :cond_7a

    const/4 v8, 0x0

    .line 920
    .end local v5    # "dbmValue":[I
    .end local v6    # "ecioValue":[I
    :goto_66
    return v8

    .line 903
    :cond_67
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/telephony/LGRssiData;->getGsmDbmValue()[I

    move-result-object v5

    .line 904
    .restart local v5    # "dbmValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/telephony/LGRssiData;->getGsmEcioValue()[I

    move-result-object v6

    .line 905
    .restart local v6    # "ecioValue":[I
    iget-object v4, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_GSM_DBM_VALUE:[I

    .local v4, "currentDbmStandard":[I
    goto :goto_48

    .end local v4    # "currentDbmStandard":[I
    :cond_7a
    move v8, v7

    .line 909
    goto :goto_66

    .line 912
    .end local v5    # "dbmValue":[I
    .end local v6    # "ecioValue":[I
    :cond_7c
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(III)I

    move-result v7

    .line 913
    const/4 v8, -0x1

    if-ne v7, v8, :cond_88

    const/4 v7, 0x0

    :cond_88
    move v8, v7

    .line 920
    goto :goto_66
.end method

.method private getLevelSBM(IIIIIIIIIIIZ)I
    .registers 16
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "mGsmDbm"    # I
    .param p11, "mGsmEcio"    # I
    .param p12, "isGsm"    # Z

    .prologue
    const v1, 0x7fffffff

    const/16 v2, -0x78

    .line 989
    const/4 v0, 0x0

    .line 991
    .local v0, "level":I
    if-eqz p12, :cond_35

    .line 992
    invoke-direct {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getAxgpLevel(III)I

    move-result v0

    .line 993
    if-nez v0, :cond_12

    .line 994
    invoke-virtual {p0, p6, p7, p8, p9}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v0

    .line 996
    :cond_12
    if-nez v0, :cond_1c

    .line 997
    if-ne p10, v1, :cond_18

    if-eq p11, v1, :cond_36

    .line 998
    :cond_18
    invoke-virtual {p0, p1, p10, p11}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(III)I

    move-result v0

    .line 1008
    :cond_1c
    :goto_1c
    if-nez v0, :cond_35

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SBM tech="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 1010
    const/4 v0, 0x1

    .line 1016
    :cond_35
    return v0

    .line 1000
    :cond_36
    if-ne p2, v2, :cond_3c

    const/16 v1, -0xa0

    if-eq p3, v1, :cond_40

    .line 1001
    :cond_3c
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 1003
    :cond_40
    if-nez v0, :cond_1c

    if-eq p4, v2, :cond_1c

    .line 1004
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v0

    goto :goto_1c
.end method

.method private getLevelSPR(IIIIIIIIIIIZ)I
    .registers 20
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "mGsmDbm"    # I
    .param p11, "mGsmEcio"    # I
    .param p12, "isGsm"    # Z

    .prologue
    .line 558
    const/4 v2, 0x0

    .line 559
    .local v2, "level":I
    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v4

    .line 567
    .local v4, "rat":I
    const/4 v5, 0x0

    const-string v6, "data_only_device"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 568
    invoke-direct {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getAxgpLevel(III)I

    move-result v2

    .line 569
    if-nez v2, :cond_1a

    .line 570
    move/from16 v0, p9

    invoke-virtual {p0, p6, p7, p8, v0}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v2

    :cond_1a
    move v3, v2

    .line 647
    .end local v2    # "level":I
    .local v3, "level":I
    :goto_1b
    return v3

    .line 576
    .end local v3    # "level":I
    .restart local v2    # "level":I
    :cond_1c
    if-eqz p12, :cond_4b

    .line 582
    invoke-direct {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getAxgpLevel(III)I

    move-result v2

    .line 583
    if-nez v2, :cond_2a

    .line 584
    move/from16 v0, p9

    invoke-virtual {p0, p6, p7, p8, v0}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v2

    .line 587
    :cond_2a
    if-nez v2, :cond_49

    .line 588
    move/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(III)I

    move-result v2

    .line 589
    if-nez v2, :cond_49

    .line 590
    const/4 v5, 0x7

    if-eq v4, v5, :cond_45

    .line 591
    const/16 v5, 0x8

    if-eq v4, v5, :cond_45

    .line 592
    const/16 v5, 0xc

    if-eq v4, v5, :cond_45

    .line 593
    const/16 v5, 0xd

    if-ne v4, v5, :cond_49

    .line 594
    :cond_45
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v2

    :cond_49
    :goto_49
    move v3, v2

    .line 647
    .end local v2    # "level":I
    .restart local v3    # "level":I
    goto :goto_1b

    .line 600
    .end local v3    # "level":I
    .restart local v2    # "level":I
    :cond_4b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_6c

    .line 604
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v2

    .line 605
    if-nez v2, :cond_49

    .line 606
    const/16 v5, 0xe

    if-ne v5, v4, :cond_49

    .line 608
    invoke-direct {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getAxgpLevel(III)I

    move-result v2

    .line 609
    if-nez v2, :cond_49

    .line 610
    move/from16 v0, p9

    invoke-virtual {p0, p6, p7, p8, v0}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v2

    .line 613
    goto :goto_49

    .line 614
    :cond_6c
    packed-switch v4, :pswitch_data_92

    .line 629
    :pswitch_6f
    invoke-direct {p0, p6, p7, p8}, Lcom/lge/telephony/LGSignalStrength;->getAxgpLevel(III)I

    move-result v2

    .line 630
    if-nez v2, :cond_7b

    .line 631
    move/from16 v0, p9

    invoke-virtual {p0, p6, p7, p8, v0}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v2

    .line 634
    :cond_7b
    if-nez v2, :cond_49

    .line 635
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v2

    .line 636
    if-nez v2, :cond_49

    .line 637
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v2

    goto :goto_49

    .line 618
    :pswitch_88
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v2

    .line 619
    goto :goto_49

    .line 624
    :pswitch_8d
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v2

    .line 625
    goto :goto_49

    .line 614
    :pswitch_data_92
    .packed-switch 0x4
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_8d
        :pswitch_8d
        :pswitch_6f
        :pswitch_6f
        :pswitch_6f
        :pswitch_8d
        :pswitch_8d
    .end packed-switch
.end method

.method private getLevelUSC(IIIIIIIIIIIZ)I
    .registers 14
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "mGsmDbm"    # I
    .param p11, "mGsmEcio"    # I
    .param p12, "isGsm"    # Z

    .prologue
    .line 812
    const/4 v0, 0x0

    .line 817
    .local v0, "level":I
    if-eqz p12, :cond_e

    .line 818
    invoke-virtual {p0, p6, p7, p8, p9}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v0

    .line 819
    if-nez v0, :cond_d

    .line 820
    invoke-virtual {p0, p1, p10, p11}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(III)I

    move-result v0

    .line 829
    :cond_d
    :goto_d
    return v0

    .line 823
    :cond_e
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    goto :goto_d
.end method

.method private getLevelUsGsm(IIIIIIIIIIIZ)I
    .registers 15
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "mGsmDbm"    # I
    .param p11, "mGsmEcio"    # I
    .param p12, "isGsm"    # Z

    .prologue
    const v1, 0x7fffffff

    .line 847
    const/4 v0, 0x0

    .line 852
    .local v0, "level":I
    if-eqz p12, :cond_14

    .line 853
    invoke-virtual {p0, p6, p7, p8, p9}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v0

    .line 854
    if-nez v0, :cond_14

    .line 855
    if-ne p10, v1, :cond_10

    if-eq p11, v1, :cond_15

    .line 856
    :cond_10
    invoke-virtual {p0, p1, p10, p11}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(III)I

    move-result v0

    .line 870
    :cond_14
    :goto_14
    return v0

    .line 858
    :cond_15
    const v1, -0x37849

    if-eq p3, v1, :cond_1f

    .line 859
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v0

    .line 860
    goto :goto_14

    .line 861
    :cond_1f
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v0

    goto :goto_14
.end method

.method private getLevelVZW(IIIIIIIIIIIZ)I
    .registers 21
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "mGsmDbm"    # I
    .param p11, "mGsmEcio"    # I
    .param p12, "isGsm"    # Z

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v5

    .line 658
    .local v5, "rat":I
    if-eqz p12, :cond_2e

    .line 659
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {p0, p6, p7, v0, v1}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v4

    .line 660
    .local v4, "level":I
    if-nez v4, :cond_2d

    .line 661
    move/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(III)I

    move-result v4

    .line 662
    if-nez v4, :cond_2d

    .line 669
    const/4 v6, 0x7

    if-eq v5, v6, :cond_29

    .line 670
    const/16 v6, 0x8

    if-eq v5, v6, :cond_29

    .line 671
    const/16 v6, 0xc

    if-eq v5, v6, :cond_29

    .line 672
    const/16 v6, 0xd

    if-ne v5, v6, :cond_2d

    .line 674
    :cond_29
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v4

    .line 727
    .end local v4    # "level":I
    :cond_2d
    :goto_2d
    return v4

    .line 680
    :cond_2e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-eqz v6, :cond_48

    .line 681
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_48

    .line 682
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v4

    goto :goto_2d

    .line 685
    :cond_48
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {p0, p6, p7, v0, v1}, Lcom/lge/telephony/LGSignalStrength;->getLteLevel(IIII)I

    move-result v4

    .line 686
    .restart local v4    # "level":I
    if-nez v4, :cond_2d

    .line 700
    packed-switch v5, :pswitch_data_6e

    .line 714
    :pswitch_55
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v2

    .line 715
    .local v2, "cdmaLevel":I
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v3

    .line 716
    .local v3, "evdoLevel":I
    if-lt v2, v3, :cond_6b

    move v4, v2

    :goto_60
    goto :goto_2d

    .line 704
    .end local v2    # "cdmaLevel":I
    .end local v3    # "evdoLevel":I
    :pswitch_61
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getCdmaLevel(II)I

    move-result v4

    .line 705
    goto :goto_2d

    .line 710
    :pswitch_66
    invoke-virtual {p0, p4, p5}, Lcom/lge/telephony/LGSignalStrength;->getEvdoLevel(II)I

    move-result v4

    .line 711
    goto :goto_2d

    .restart local v2    # "cdmaLevel":I
    .restart local v3    # "evdoLevel":I
    :cond_6b
    move v4, v3

    .line 716
    goto :goto_60

    .line 700
    nop

    :pswitch_data_6e
    .packed-switch 0x4
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_66
        :pswitch_66
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_66
        :pswitch_66
    .end packed-switch
.end method

.method protected static getNumSignalStrength()I
    .registers 2

    .prologue
    .line 479
    const-string v0, "BM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 483
    const/4 v0, 0x7

    .line 496
    :goto_9
    return v0

    .line 487
    :cond_a
    const-string v0, "DCM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 488
    const/4 v0, 0x5

    goto :goto_9

    .line 491
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getNumSignalStrength: mRssiLevel = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v1, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    .line 493
    const/4 v0, 0x6

    goto :goto_9

    .line 496
    :cond_35
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    sget v0, Lcom/lge/telephony/LGRssiData;->mRssiLevel:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1149
    const-string v0, "LGSignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return-void
.end method

.method private makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    .line 1123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    .line 1126
    return-void
.end method


# virtual methods
.method public ajc$privMethod$com_lge_telephony_SignalStrengthAO$com_lge_telephony_LGSignalStrength$makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)V
    .registers 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/lge/telephony/LGSignalStrength;->makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public copyFrom(Lcom/lge/telephony/LGSignalStrength;)V
    .registers 3
    .param p1, "s"    # Lcom/lge/telephony/LGSignalStrength;

    .prologue
    .line 1066
    iget v0, p1, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 1068
    iget v0, p1, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 1071
    iget v0, p1, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    .line 1072
    iget v0, p1, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    .line 1074
    return-void
.end method

.method public equals(Lcom/lge/telephony/LGSignalStrength;)Z
    .registers 4
    .param p1, "s"    # Lcom/lge/telephony/LGSignalStrength;

    .prologue
    .line 1144
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    iget v1, p1, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    iget v1, p1, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getCdmaLevel(II)I
    .registers 10
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I

    .prologue
    const/4 v6, -0x1

    .line 334
    const/4 v0, -0x1

    .line 335
    .local v0, "level":I
    const/4 v1, 0x0

    .line 336
    .local v1, "levelDbm":I
    const/4 v2, 0x0

    .line 337
    .local v2, "levelEcio":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getCdmaDbmValue()[I

    move-result-object v3

    .line 338
    .local v3, "mDbmValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getEcioValue()[I

    move-result-object v4

    .line 343
    .local v4, "mEcioValue":[I
    if-nez v3, :cond_18

    if-eqz v4, :cond_34

    .line 344
    :cond_18
    invoke-virtual {p0, p1, v3}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v1

    .line 345
    invoke-virtual {p0, p2, v4}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v2

    .line 349
    const-string v5, "ATT"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 350
    invoke-direct {p0, v2}, Lcom/lge/telephony/LGSignalStrength;->averageOfRecentLevels(I)I

    move-result v2

    .line 353
    :cond_2c
    if-eq v1, v6, :cond_37

    if-eq v2, v6, :cond_37

    .line 354
    if-ge v1, v2, :cond_35

    move v5, v1

    :goto_33
    move v0, v5

    .line 362
    .end local v0    # "level":I
    :cond_34
    :goto_34
    return v0

    .restart local v0    # "level":I
    :cond_35
    move v5, v2

    .line 354
    goto :goto_33

    .line 355
    :cond_37
    if-eq v1, v6, :cond_3b

    move v0, v1

    goto :goto_34

    .line 356
    :cond_3b
    if-eq v2, v6, :cond_3f

    move v0, v2

    goto :goto_34

    .line 358
    :cond_3f
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public getDataRadioTechnology()I
    .registers 2

    .prologue
    .line 505
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    return v0
.end method

.method public getEvdoLevel(II)I
    .registers 10
    .param p1, "evdoDbm"    # I
    .param p2, "evdoSnr"    # I

    .prologue
    const/4 v6, -0x1

    .line 366
    const/4 v0, -0x1

    .line 367
    .local v0, "level":I
    const/4 v1, 0x0

    .line 368
    .local v1, "levelEvdoDbm":I
    const/4 v2, 0x0

    .line 369
    .local v2, "levelEvdoSnr":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getEvdoDbmValue()[I

    move-result-object v3

    .line 370
    .local v3, "mEvdoDbmValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getEvdoSnrValue()[I

    move-result-object v4

    .line 374
    .local v4, "mEvdoSnrValue":[I
    if-nez v3, :cond_18

    if-eqz v4, :cond_28

    .line 375
    :cond_18
    invoke-virtual {p0, p1, v3}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v1

    .line 376
    invoke-virtual {p0, p2, v4}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v2

    .line 378
    if-eq v1, v6, :cond_2b

    if-eq v2, v6, :cond_2b

    .line 379
    if-ge v1, v2, :cond_29

    move v5, v1

    :goto_27
    move v0, v5

    .line 387
    .end local v0    # "level":I
    :cond_28
    :goto_28
    return v0

    .restart local v0    # "level":I
    :cond_29
    move v5, v2

    .line 379
    goto :goto_27

    .line 381
    :cond_2b
    if-eq v1, v6, :cond_2f

    move v0, v1

    goto :goto_28

    .line 382
    :cond_2f
    if-eq v2, v6, :cond_33

    move v0, v2

    goto :goto_28

    .line 384
    :cond_33
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public getGsmDbm()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    return v0
.end method

.method public getGsmEcio()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    return v0
.end method

.method public getGsmLevel(I)I
    .registers 3
    .param p1, "asu"    # I

    .prologue
    const v0, 0x7fffffff

    .line 97
    invoke-virtual {p0, p1, v0, v0}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevel(III)I

    move-result v0

    return v0
.end method

.method public getGsmLevel(III)I
    .registers 12
    .param p1, "asu"    # I
    .param p2, "gsmDbm"    # I
    .param p3, "gsmEcio"    # I

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x63

    .line 101
    const/4 v0, -0x1

    .line 103
    .local v0, "level":I
    if-ne p2, v4, :cond_c

    if-eq p3, v4, :cond_14

    .line 104
    :cond_c
    invoke-virtual {p0, p2, p3}, Lcom/lge/telephony/LGSignalStrength;->getGsmLevelForLge(II)I

    move-result v0

    .line 105
    if-eq v0, v7, :cond_14

    move v3, v0

    .line 177
    :cond_13
    :goto_13
    return v3

    .line 108
    :cond_14
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/telephony/LGRssiData;->getAsuGsmValue()[I

    move-result-object v1

    .line 109
    .local v1, "mAsuGsmValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/telephony/LGRssiData;->getAsuUmtsValue()[I

    move-result-object v2

    .line 110
    .local v2, "mAsuUmtsValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/telephony/LGRssiData;->getAsuEtcValue()[I

    .line 116
    if-nez v1, :cond_4c

    if-nez v2, :cond_4c

    sget v4, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4c

    .line 118
    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v4

    sparse-switch v4, :sswitch_data_92

    .line 131
    iget-object v4, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_UMTS_ASU_VALUE:[I

    invoke-virtual {p0, p1, v6, v4}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    .line 136
    :goto_41
    if-eq v0, v7, :cond_13

    move v3, v0

    goto :goto_13

    .line 123
    :sswitch_45
    iget-object v4, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_GSM_ASU_VALUE:[I

    invoke-virtual {p0, p1, v6, v4}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    .line 124
    goto :goto_41

    .line 139
    :cond_4c
    if-nez v1, :cond_50

    if-eqz v2, :cond_8f

    .line 140
    :cond_50
    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v4

    packed-switch v4, :pswitch_data_a4

    .line 159
    :pswitch_57
    const-string v4, "VZW"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    const-string v4, "LRA"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 160
    :cond_67
    invoke-virtual {p0}, Lcom/lge/telephony/LGSignalStrength;->getDataRadioTechnology()I

    move-result v4

    if-nez v4, :cond_8a

    .line 161
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8a

    .line 162
    invoke-virtual {p0, p1, v6, v2}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    .line 173
    :goto_7c
    if-eq v0, v7, :cond_13

    move v3, v0

    goto :goto_13

    .line 144
    :pswitch_80
    invoke-virtual {p0, p1, v6, v1}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    .line 145
    goto :goto_7c

    .line 152
    :pswitch_85
    invoke-virtual {p0, p1, v6, v2}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    .line 153
    goto :goto_7c

    .line 168
    :cond_8a
    invoke-virtual {p0, p1, v6, v1}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    goto :goto_7c

    :cond_8f
    move v3, v0

    .line 177
    goto :goto_13

    .line 118
    nop

    :sswitch_data_92
    .sparse-switch
        0x0 -> :sswitch_45
        0x1 -> :sswitch_45
        0x2 -> :sswitch_45
        0x10 -> :sswitch_45
    .end sparse-switch

    .line 140
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_80
        :pswitch_80
        :pswitch_85
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_85
    .end packed-switch
.end method

.method public getGsmLevelForLge(II)I
    .registers 10
    .param p1, "gsmDbm"    # I
    .param p2, "gsmEcio"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v4, -0x1

    .line 181
    const/4 v2, -0x1

    .line 182
    .local v2, "levelDbm":I
    const/4 v3, -0x1

    .line 187
    .local v3, "levelEcio":I
    const v5, -0x37849

    if-eq p2, v5, :cond_3a

    .line 188
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getUmtsDbmValue()[I

    move-result-object v0

    .line 189
    .local v0, "dbmValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getUmtsEcioValue()[I

    move-result-object v1

    .line 195
    :goto_1b
    if-eq p1, v6, :cond_21

    invoke-virtual {p0, p1, v0}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v2

    .line 196
    :cond_21
    if-eq p2, v6, :cond_27

    invoke-virtual {p0, p2, v1}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v3

    .line 199
    :cond_27
    const-string v5, "ATT"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 200
    invoke-direct {p0, v3}, Lcom/lge/telephony/LGSignalStrength;->averageOfRecentLevels(I)I

    move-result v3

    .line 204
    :cond_33
    if-eq v2, v4, :cond_4d

    if-eq v3, v4, :cond_4d

    .line 205
    if-ge v2, v3, :cond_4b

    .line 210
    .end local v2    # "levelDbm":I
    :cond_39
    :goto_39
    return v2

    .line 191
    .end local v0    # "dbmValue":[I
    .restart local v2    # "levelDbm":I
    :cond_3a
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getGsmDbmValue()[I

    move-result-object v0

    .line 192
    .restart local v0    # "dbmValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/telephony/LGRssiData;->getGsmEcioValue()[I

    move-result-object v1

    .local v1, "ecioValue":[I
    goto :goto_1b

    .end local v1    # "ecioValue":[I
    :cond_4b
    move v2, v3

    .line 205
    goto :goto_39

    .line 207
    :cond_4d
    if-ne v2, v4, :cond_39

    .line 208
    if-eq v3, v4, :cond_53

    move v2, v3

    goto :goto_39

    :cond_53
    move v2, v4

    .line 210
    goto :goto_39
.end method

.method public getItemLevel(II[I)I
    .registers 8
    .param p1, "value"    # I
    .param p2, "valid"    # I
    .param p3, "range"    # [I

    .prologue
    const v3, 0x7fffffff

    const/16 v2, 0x63

    .line 1030
    const/4 v1, 0x0

    .line 1033
    .local v1, "level":I
    if-nez p3, :cond_a

    .line 1034
    const/4 v2, -0x1

    .line 1046
    :goto_9
    return v2

    .line 1037
    :cond_a
    if-ne p2, v2, :cond_e

    if-eq p1, v2, :cond_14

    :cond_e
    if-ne p2, v3, :cond_12

    if-eq p1, v3, :cond_14

    :cond_12
    if-le p1, p2, :cond_16

    .line 1038
    :cond_14
    const/4 v2, 0x0

    goto :goto_9

    .line 1040
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v2, p3

    if-lt v0, v2, :cond_22

    .line 1045
    :cond_1a
    sget v2, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v3, v0, 0x1

    sub-int v1, v2, v3

    move v2, v1

    .line 1046
    goto :goto_9

    .line 1041
    :cond_22
    aget v2, p3, v0

    if-ge p1, v2, :cond_1a

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public getItemLevel(I[I)I
    .registers 7
    .param p1, "value"    # I
    .param p2, "range"    # [I

    .prologue
    .line 1050
    const/4 v1, 0x0

    .line 1053
    .local v1, "level":I
    if-nez p2, :cond_5

    .line 1054
    const/4 v2, -0x1

    .line 1062
    :goto_4
    return v2

    .line 1056
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, p2

    if-lt v0, v2, :cond_11

    .line 1061
    :cond_9
    sget v2, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v3, v0, 0x1

    sub-int v1, v2, v3

    move v2, v1

    .line 1062
    goto :goto_4

    .line 1057
    :cond_11
    aget v2, p2, v0

    if-ge p1, v2, :cond_9

    .line 1056
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public getLevel(IIIIIIIIIIIIZ)I
    .registers 27
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "mTdScdmaRscp"    # I
    .param p11, "mGsmDbm"    # I
    .param p12, "mGsmEcio"    # I
    .param p13, "isGsm"    # Z

    .prologue
    .line 397
    .line 400
    const-string v0, "KR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 401
    invoke-direct/range {v0 .. v12}, Lcom/lge/telephony/LGSignalStrength;->getLevelKR(IIIIIIIIIIIZ)I

    move-result v0

    .line 461
    :goto_23
    return v0

    .line 406
    :cond_24
    const-string v0, "SPR"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 407
    invoke-direct/range {v0 .. v12}, Lcom/lge/telephony/LGSignalStrength;->getLevelSPR(IIIIIIIIIIIZ)I

    move-result v0

    goto :goto_23

    .line 412
    :cond_48
    const-string v0, "VZW"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "LRA"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 414
    const/4 v0, 0x0

    const-string v1, "trf_based_vzw"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_61
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 416
    invoke-direct/range {v0 .. v12}, Lcom/lge/telephony/LGSignalStrength;->getLevelVZW(IIIIIIIIIIIZ)I

    move-result v0

    goto :goto_23

    .line 421
    :cond_7d
    const-string v0, "KDDI"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    const-string v0, "JCM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    :cond_8d
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 422
    invoke-direct/range {v0 .. v12}, Lcom/lge/telephony/LGSignalStrength;->getLevelKDDI(IIIIIIIIIIIZ)I

    move-result v0

    goto/16 :goto_23

    .line 427
    :cond_aa
    const-string v0, "CTC"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 428
    invoke-direct/range {v0 .. v12}, Lcom/lge/telephony/LGSignalStrength;->getLevelCT(IIIIIIIIIIIZ)I

    move-result v0

    goto/16 :goto_23

    .line 433
    :cond_cf
    const-string v0, "USC"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 434
    invoke-direct/range {v0 .. v12}, Lcom/lge/telephony/LGSignalStrength;->getLevelUSC(IIIIIIIIIIIZ)I

    move-result v0

    goto/16 :goto_23

    .line 439
    :cond_f4
    const-string v0, "ACG"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_119

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 440
    invoke-direct/range {v0 .. v12}, Lcom/lge/telephony/LGSignalStrength;->getLevelACG(IIIIIIIIIIIZ)I

    move-result v0

    goto/16 :goto_23

    .line 445
    :cond_119
    const-string v0, "US"

    const-string v1, "TMO"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_152

    .line 446
    const-string v0, "US"

    const-string v1, "MPCS"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_152

    .line 447
    const-string v0, "US"

    const-string v1, "AIO"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_152

    .line 448
    const-string v0, "US"

    const-string v1, "CRK"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_152

    .line 449
    const/4 v0, 0x0

    const-string v1, "trf_based_att"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_152

    .line 450
    const-string v0, "ATT"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16f

    :cond_152
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 451
    invoke-direct/range {v0 .. v12}, Lcom/lge/telephony/LGSignalStrength;->getLevelUsGsm(IIIIIIIIIIIZ)I

    move-result v0

    goto/16 :goto_23

    .line 456
    :cond_16f
    const-string v0, "SBM"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_194

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 457
    invoke-direct/range {v0 .. v12}, Lcom/lge/telephony/LGSignalStrength;->getLevelSBM(IIIIIIIIIIIZ)I

    move-result v0

    goto/16 :goto_23

    :cond_194
    move-object v0, p0

    move v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    .line 461
    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGSignalStrength;->getLevelLgeCommonSpec(IIIIIIIIZ)I

    move-result v0

    goto/16 :goto_23
.end method

.method public getLevel(IIIIIIIIIZ)I
    .registers 25
    .param p1, "mGsmSignalStrength"    # I
    .param p2, "mCdmaDbm"    # I
    .param p3, "mCdmaEcio"    # I
    .param p4, "mEvdoDbm"    # I
    .param p5, "mEvdoSnr"    # I
    .param p6, "mLteSignalStrength"    # I
    .param p7, "mLteRsrp"    # I
    .param p8, "mLteRssnr"    # I
    .param p9, "mLteRsrq"    # I
    .param p10, "isGsm"    # Z

    .prologue
    .line 392
    .line 393
    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v13, p10

    .line 392
    invoke-virtual/range {v0 .. v13}, Lcom/lge/telephony/LGSignalStrength;->getLevel(IIIIIIIIIIIIZ)I

    move-result v0

    return v0
.end method

.method public getLteBand()I
    .registers 2

    .prologue
    .line 514
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    return v0
.end method

.method public getLteLevel(IIII)I
    .registers 24
    .param p1, "mLteSignalStrength"    # I
    .param p2, "mLteRsrp"    # I
    .param p3, "mLteRssnr"    # I
    .param p4, "mLteRsrq"    # I

    .prologue
    .line 246
    const/4 v15, 0x0

    .local v15, "rssiIconLevel":I
    const/4 v13, -0x1

    .local v13, "rsrpIconLevel":I
    const/16 v16, -0x1

    .local v16, "snrIconLevel":I
    const/4 v14, -0x1

    .line 248
    .local v14, "rsrqIconLevel":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lge/telephony/LGRssiData;->getRsrpValue()[I

    move-result-object v8

    .line 249
    .local v8, "mLteRsrpValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lge/telephony/LGRssiData;->getRssnrValue()[I

    move-result-object v10

    .line 250
    .local v10, "mLteRssnrValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lge/telephony/LGRssiData;->getLteSignalValue()[I

    move-result-object v11

    .line 251
    .local v11, "mLteSignalValue":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lge/telephony/LGRssiData;->getRsrqValue()[I

    move-result-object v9

    .line 258
    .local v9, "mLteRsrqValue":[I
    if-nez v8, :cond_4d

    if-nez v10, :cond_4d

    if-nez v11, :cond_4d

    if-nez v9, :cond_4d

    .line 259
    sget v17, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4d

    .line 261
    const v17, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/telephony/LGSignalStrength;->LGE_LTE_RSRP_VALUE:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v17

    .line 330
    :goto_4c
    return v17

    .line 263
    :cond_4d
    if-nez v8, :cond_55

    if-nez v10, :cond_55

    if-nez v11, :cond_55

    if-eqz v9, :cond_17e

    .line 264
    :cond_55
    const/16 v17, -0x2c

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v8}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v13

    .line 265
    const/16 v17, 0x12c

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v10}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v16

    .line 266
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v9}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v14

    .line 272
    const/16 v17, 0x0

    const-string v18, "SUPPORT_LTE_BAND_INFO"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a1

    .line 273
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v5, v0, [I

    fill-array-data v5, :array_182

    .line 274
    .local v5, "highLteBandArray":[I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/lge/telephony/LGRssiData;->getLteRsrpOffsetValue()[I

    move-result-object v7

    .line 276
    .local v7, "mLteRsrpOffsetValue":[I
    if-eqz v7, :cond_a1

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/lge/telephony/LGSignalStrength;->getLteBand()I

    move-result v6

    .line 278
    .local v6, "mCurLteBand":I
    array-length v0, v5

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_9b
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_ba

    .line 290
    .end local v5    # "highLteBandArray":[I
    .end local v6    # "mCurLteBand":I
    .end local v7    # "mLteRsrpOffsetValue":[I
    :cond_a1
    :goto_a1
    const-string v17, "SBM"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f0

    .line 291
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_b7

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f0

    .line 292
    :cond_b7
    const/16 v17, 0x1

    goto :goto_4c

    .line 278
    .restart local v5    # "highLteBandArray":[I
    .restart local v6    # "mCurLteBand":I
    .restart local v7    # "mLteRsrpOffsetValue":[I
    :cond_ba
    aget v4, v5, v17

    .line 279
    .local v4, "band":I
    if-ne v4, v6, :cond_ed

    .line 280
    const/16 v17, -0x2c

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v7}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v13

    .line 281
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, " VZW LteLevel +- Offset band = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/lge/telephony/LGSignalStrength;->getLteBand()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " , level = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    goto :goto_a1

    .line 278
    :cond_ed
    add-int/lit8 v17, v17, 0x1

    goto :goto_9b

    .line 297
    .end local v4    # "band":I
    .end local v5    # "highLteBandArray":[I
    .end local v6    # "mCurLteBand":I
    .end local v7    # "mLteRsrpOffsetValue":[I
    :cond_f0
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_10c

    .line 298
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_122

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_122

    .line 299
    move v12, v13

    .line 300
    .local v12, "minLevel":I
    if-ge v14, v12, :cond_108

    .line 301
    move v12, v14

    .line 303
    :cond_108
    move/from16 v0, v16

    if-ge v0, v12, :cond_10c

    .line 315
    .end local v12    # "minLevel":I
    :cond_10c
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_14e

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_14e

    .line 316
    move/from16 v0, v16

    if-ge v13, v0, :cond_14a

    move/from16 v17, v13

    goto/16 :goto_4c

    .line 306
    :cond_122
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_132

    .line 307
    if-ge v14, v13, :cond_12e

    move/from16 v17, v14

    goto/16 :goto_4c

    :cond_12e
    move/from16 v17, v13

    goto/16 :goto_4c

    .line 308
    :cond_132
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_146

    .line 309
    move/from16 v0, v16

    if-ge v14, v0, :cond_142

    move/from16 v17, v14

    goto/16 :goto_4c

    :cond_142
    move/from16 v17, v16

    goto/16 :goto_4c

    :cond_146
    move/from16 v17, v14

    .line 311
    goto/16 :goto_4c

    :cond_14a
    move/from16 v17, v16

    .line 316
    goto/16 :goto_4c

    .line 319
    :cond_14e
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_15a

    move/from16 v17, v16

    goto/16 :goto_4c

    .line 321
    :cond_15a
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_164

    move/from16 v17, v13

    goto/16 :goto_4c

    .line 323
    :cond_164
    const/16 v17, 0x3f

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v11}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v15

    .line 327
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_17a

    const/16 v17, 0x0

    goto/16 :goto_4c

    :cond_17a
    move/from16 v17, v15

    goto/16 :goto_4c

    .line 330
    :cond_17e
    const/16 v17, -0x1

    goto/16 :goto_4c

    .line 273
    :array_182
    .array-data 4
        0x2
        0x3
        0x4
        0x7
    .end array-data
.end method

.method public getTdScdmaLevel(I)I
    .registers 8
    .param p1, "tdScdmaDbm"    # I

    .prologue
    const v5, 0x7fffffff

    .line 215
    const/4 v0, -0x1

    .line 217
    .local v0, "level":I
    invoke-static {}, Lcom/lge/telephony/LGSignalStrength;->getLGRssiData()Lcom/lge/telephony/LGRssiData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/telephony/LGRssiData;->getTdscdmaDbmValue()[I

    move-result-object v2

    .line 221
    .local v2, "mTdscdmaDbmValue":[I
    if-nez v2, :cond_1b

    sget v3, Lcom/lge/telephony/LGSignalStrength;->NUM_LG_SIGNAL_STRENGTH_BINS:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1b

    .line 223
    iget-object v3, p0, Lcom/lge/telephony/LGSignalStrength;->LGE_UMTS_DBM_VALUE:[I

    invoke-virtual {p0, p1, v5, v3}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(II[I)I

    move-result v0

    move v1, v0

    .line 241
    .end local v0    # "level":I
    .local v1, "level":I
    :goto_1a
    return v1

    .line 231
    .end local v1    # "level":I
    .restart local v0    # "level":I
    :cond_1b
    if-eqz v2, :cond_2b

    .line 232
    const/16 v3, -0x19

    if-gt p1, v3, :cond_23

    if-ne p1, v5, :cond_26

    .line 233
    :cond_23
    const/4 v0, 0x0

    :goto_24
    move v1, v0

    .line 238
    .end local v0    # "level":I
    .restart local v1    # "level":I
    goto :goto_1a

    .line 235
    .end local v1    # "level":I
    .restart local v0    # "level":I
    :cond_26
    invoke-virtual {p0, p1, v2}, Lcom/lge/telephony/LGSignalStrength;->getItemLevel(I[I)I

    move-result v0

    goto :goto_24

    :cond_2b
    move v1, v0

    .line 241
    .end local v0    # "level":I
    .restart local v1    # "level":I
    goto :goto_1a
.end method

.method public hashCode(I)I
    .registers 4
    .param p1, "primeNum"    # I

    .prologue
    .line 1138
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method public readFrom(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1099
    const-string v0, "mDataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 1101
    const-string v0, "mLteBand"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 1104
    const-string v0, "GsmDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    .line 1105
    const-string v0, "GsmEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    .line 1107
    return-void
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1077
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 1079
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 1082
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    .line 1083
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    .line 1085
    return-void
.end method

.method public setDataRadioTechnology(I)V
    .registers 4
    .param p1, "dataRadioTechnology"    # I

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDataRadioTechnology: dataRadioTechnology = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/telephony/LGSignalStrength;->log(Ljava/lang/String;)V

    .line 501
    iput p1, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    .line 502
    return-void
.end method

.method public setLteBand(I)V
    .registers 2
    .param p1, "lteBand"    # I

    .prologue
    .line 510
    iput p1, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    .line 511
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 468
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 471
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 472
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateInput()V
    .registers 3

    .prologue
    const v1, 0x7fffffff

    .line 1130
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    if-lez v0, :cond_16

    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    neg-int v0, v0

    :goto_a
    iput v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    .line 1131
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    neg-int v1, v0

    :cond_13
    iput v1, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    .line 1134
    return-void

    :cond_16
    move v0, v1

    .line 1130
    goto :goto_a
.end method

.method public writeTo(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1110
    const-string v0, "mDataRadioTechnology"

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1112
    const-string v0, "mLteBand"

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1115
    const-string v0, "GsmDbm"

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1116
    const-string v0, "GsmEcio"

    iget v1, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1118
    return-void
.end method

.method public writeTo(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1088
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mLteBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    iget v0, p0, Lcom/lge/telephony/LGSignalStrength;->mGsmEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    return-void
.end method
