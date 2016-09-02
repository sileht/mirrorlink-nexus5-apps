.class public Lcom/lge/android/atservice/HwControlMode;
.super Landroid/app/Activity;
.source "HwControlMode.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field public static final SIM_SLOT_1_SEL:I = 0x0

.field public static final SIM_SLOT_2_SEL:I = 0x1

.field public static final SIM_SLOT_3_SEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HwControlMode"

.field private static final WHITE:I = -0x1


# instance fields
.field private country_code:Ljava/lang/String;

.field private isMultiSimEnabled:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field msn_value:Ljava/lang/String;

.field private operator_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/HwControlMode;->operator_code:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/android/atservice/HwControlMode;->country_code:Ljava/lang/String;

    .line 39
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/android/atservice/HwControlMode;->isMultiSimEnabled:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/android/atservice/HwControlMode;->msn_value:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private getVzwImei()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xc

    const/16 v6, 0x8

    const/4 v5, 0x4

    .line 222
    iget-object v2, p0, Lcom/lge/android/atservice/HwControlMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "mImei":Ljava/lang/String;
    const-string/jumbo v2, "HwControlMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mImei:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_9b

    .line 227
    const-string/jumbo v2, "HwControlMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mImei.length() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    const-string/jumbo v3, " "

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    const-string/jumbo v3, " "

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 231
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 232
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "mImei_VZW":Ljava/lang/String;
    :goto_9a
    return-object v1

    .line 234
    .end local v1    # "mImei_VZW":Ljava/lang/String;
    :cond_9b
    move-object v1, v0

    .restart local v1    # "mImei_VZW":Ljava/lang/String;
    goto :goto_9a
.end method

.method private get_device_ID(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mTelephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 268
    const-string/jumbo v1, "tab"

    invoke-direct {p0, v1, p1}, Lcom/lge/android/atservice/HwControlMode;->read_SharedPreference(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "sTabName":Ljava/lang/String;
    const-string/jumbo v1, "sim1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 271
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 272
    :cond_1a
    const-string/jumbo v1, "sim2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 273
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 274
    :cond_2d
    const-string/jumbo v1, "sim3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 275
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 277
    :cond_40
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p0, "contents"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 165
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_13

    .line 166
    const-string/jumbo v1, "UTF-8"

    return-object v1

    .line 164
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method private isMultiSimEnabled()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 251
    const-string/jumbo v3, "ro.lge.mtk_dualsim"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 252
    .local v1, "mtk_dual":Z
    if-eqz v1, :cond_c

    .line 253
    return v2

    .line 255
    :cond_c
    const-string/jumbo v3, "persist.radio.multisim.config"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "isMutiSim":Ljava/lang/String;
    const-string/jumbo v3, "dsds"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string/jumbo v2, "dsda"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_23
    return v2
.end method

.method private isTripleSimEnabled()Z
    .registers 4

    .prologue
    .line 240
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ro.lge.mtk_triplesim"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 241
    const/4 v1, 0x1

    return v1

    .line 244
    :cond_12
    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "isTripleSim":Ljava/lang/String;
    const-string/jumbo v1, "tsts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private readIMEI()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 173
    iget-object v2, p0, Lcom/lge/android/atservice/HwControlMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 174
    iget-object v2, p0, Lcom/lge/android/atservice/HwControlMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v5, :cond_c5

    .line 175
    iget-object v2, p0, Lcom/lge/android/atservice/HwControlMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "mImei":Ljava/lang/String;
    const-string/jumbo v2, "HwControlMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IMEI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/lge/android/atservice/HwControlMode;->operator_code:Ljava/lang/String;

    const-string/jumbo v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 179
    invoke-direct {p0}, Lcom/lge/android/atservice/HwControlMode;->getVzwImei()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 180
    :cond_48
    iget-object v2, p0, Lcom/lge/android/atservice/HwControlMode;->operator_code:Ljava/lang/String;

    const-string/jumbo v3, "MPCS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    iget-object v2, p0, Lcom/lge/android/atservice/HwControlMode;->operator_code:Ljava/lang/String;

    const-string/jumbo v3, "USC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 181
    :cond_5e
    if-eqz v0, :cond_69

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 189
    :cond_69
    return-object v0

    .line 182
    :cond_6a
    const-string/jumbo v2, "HwControlMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mImei.length() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_a2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_a2

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 186
    :cond_a2
    return-object v0

    .line 191
    :cond_a3
    const-string/jumbo v2, "LRA"

    iget-object v3, p0, Lcom/lge/android/atservice/HwControlMode;->operator_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 192
    return-object v0

    .line 194
    :cond_af
    const-string/jumbo v2, "CTC"

    iget-object v3, p0, Lcom/lge/android/atservice/HwControlMode;->operator_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 195
    const-string/jumbo v2, "NOT_SUPPORT"

    return-object v2

    .line 197
    :cond_be
    iget-object v2, p0, Lcom/lge/android/atservice/HwControlMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 201
    .end local v0    # "mImei":Ljava/lang/String;
    :cond_c5
    const-string/jumbo v2, "NOT_SUPPORT"

    return-object v2

    .line 205
    :cond_c9
    invoke-direct {p0}, Lcom/lge/android/atservice/HwControlMode;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_d5

    invoke-direct {p0}, Lcom/lge/android/atservice/HwControlMode;->isTripleSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 206
    :cond_d5
    const-string/jumbo v1, ""

    .line 207
    .local v1, "simIMEI":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/android/atservice/HwControlMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/android/atservice/HwControlMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v2, v3}, Lcom/lge/android/atservice/HwControlMode;->get_device_ID(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    .line 208
    return-object v1

    .line 210
    .end local v1    # "simIMEI":Ljava/lang/String;
    :cond_e3
    const-string/jumbo v2, "VZW"

    iget-object v3, p0, Lcom/lge/android/atservice/HwControlMode;->operator_code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 211
    invoke-direct {p0}, Lcom/lge/android/atservice/HwControlMode;->getVzwImei()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 213
    :cond_f3
    iget-object v2, p0, Lcom/lge/android/atservice/HwControlMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private read_SharedPreference(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "sp_key"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const/4 v0, 0x7

    .line 263
    .local v0, "sp_mode":I
    const-string/jumbo v1, "dsim_test_preference"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 264
    const-string/jumbo v2, ""

    .line 263
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    .registers 26
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "img_width"    # I
    .param p4, "img_height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 131
    move-object/from16 v2, p1

    .line 132
    .local v2, "contentsToEncode":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 133
    const/4 v3, 0x0

    return-object v3

    .line 135
    :cond_6
    const/4 v6, 0x0

    .line 136
    .local v6, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    invoke-static {v2}, Lcom/lge/android/atservice/HwControlMode;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 137
    .local v15, "encoding":Ljava/lang/String;
    if-eqz v15, :cond_19

    .line 138
    new-instance v6, Ljava/util/EnumMap;

    .end local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    const-class v3, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v6, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 139
    .local v6, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v6, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    :cond_19
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .local v1, "writer":Lcom/google/zxing/MultiFormatWriter;
    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 144
    :try_start_24
    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_27} :catch_51

    move-result-object v18

    .line 148
    .local v18, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 149
    .local v10, "width":I
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    .line 150
    .local v14, "height":I
    mul-int v3, v10, v14

    new-array v8, v3, [I

    .line 151
    .local v8, "pixels":[I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_36
    move/from16 v0, v20

    if-ge v0, v14, :cond_59

    .line 152
    mul-int v17, v20, v10

    .line 153
    .local v17, "offset":I
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_3e
    move/from16 v0, v19

    if-ge v0, v10, :cond_56

    .line 154
    add-int v4, v17, v19

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_54

    const/high16 v3, -0x1000000

    :goto_4c
    aput v3, v8, v4

    .line 153
    add-int/lit8 v19, v19, 0x1

    goto :goto_3e

    .line 145
    .end local v8    # "pixels":[I
    .end local v10    # "width":I
    .end local v14    # "height":I
    .end local v17    # "offset":I
    .end local v18    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :catch_51
    move-exception v16

    .line 146
    .local v16, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    return-object v3

    .line 154
    .end local v16    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "pixels":[I
    .restart local v10    # "width":I
    .restart local v14    # "height":I
    .restart local v17    # "offset":I
    .restart local v18    # "result":Lcom/google/zxing/common/BitMatrix;
    .restart local v19    # "x":I
    .restart local v20    # "y":I
    :cond_54
    const/4 v3, -0x1

    goto :goto_4c

    .line 151
    :cond_56
    add-int/lit8 v20, v20, 0x1

    goto :goto_36

    .line 158
    .end local v17    # "offset":I
    .end local v19    # "x":I
    :cond_59
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 159
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 160
    return-object v7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 27
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/lge/android/atservice/HwControlMode;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 54
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "msn_value"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/atservice/HwControlMode;->msn_value:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/atservice/HwControlMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 57
    const-string/jumbo v21, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/HwControlMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/android/atservice/HwControlMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 59
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    .local v6, "barcode_view":Landroid/widget/LinearLayout;
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 63
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 65
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v15, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, 0x0

    const/16 v22, 0x32

    const/16 v23, 0x0

    const/16 v24, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 68
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/android/atservice/HwControlMode;->setContentView(Landroid/view/View;)V

    .line 70
    const-string/jumbo v13, "Press the POWER key to exit and restart phone."

    .line 71
    .local v13, "intro":Ljava/lang/String;
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v14, "intro_text":Landroid/widget/TextView;
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const/high16 v21, -0x1000000

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/lge/android/atservice/HwControlMode;->readIMEI()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "barcode_data":Ljava/lang/String;
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v11, "imei_text":Landroid/widget/TextView;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "IMEI :  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const/high16 v21, -0x1000000

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 85
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    .line 88
    .local v8, "height":I
    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v20

    .line 90
    .local v20, "width":I
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    const/4 v9, 0x0

    .line 93
    .local v9, "imei_bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v10, "imei_image":Landroid/widget/ImageView;
    :try_start_ea
    sget-object v21, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    mul-int/lit8 v22, v20, 0x2

    mul-int/lit8 v23, v8, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/lge/android/atservice/HwControlMode;->encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 97
    .local v9, "imei_bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_ff
    .catch Lcom/google/zxing/WriterException; {:try_start_ea .. :try_end_ff} :catch_178

    .line 103
    .end local v9    # "imei_bitmap":Landroid/graphics/Bitmap;
    :goto_ff
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/android/atservice/HwControlMode;->msn_value:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 107
    .local v17, "serial_data":Ljava/lang/String;
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v19, "serial_text":Landroid/widget/TextView;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "S/N :  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/high16 v21, -0x1000000

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    const/16 v16, 0x0

    .line 117
    .local v16, "serial_bitmap":Landroid/graphics/Bitmap;
    new-instance v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 120
    .local v18, "serial_image":Landroid/widget/ImageView;
    :try_start_157
    sget-object v21, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    mul-int/lit8 v22, v20, 0x2

    mul-int/lit8 v23, v8, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/android/atservice/HwControlMode;->encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 121
    .local v16, "serial_bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_172
    .catch Lcom/google/zxing/WriterException; {:try_start_157 .. :try_end_172} :catch_17d

    .line 127
    .end local v16    # "serial_bitmap":Landroid/graphics/Bitmap;
    :goto_172
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    return-void

    .line 99
    .end local v17    # "serial_data":Ljava/lang/String;
    .end local v18    # "serial_image":Landroid/widget/ImageView;
    .end local v19    # "serial_text":Landroid/widget/TextView;
    :catch_178
    move-exception v7

    .line 100
    .local v7, "e":Lcom/google/zxing/WriterException;
    invoke-virtual {v7}, Lcom/google/zxing/WriterException;->printStackTrace()V

    goto :goto_ff

    .line 123
    .end local v7    # "e":Lcom/google/zxing/WriterException;
    .restart local v17    # "serial_data":Ljava/lang/String;
    .restart local v18    # "serial_image":Landroid/widget/ImageView;
    .restart local v19    # "serial_text":Landroid/widget/TextView;
    :catch_17d
    move-exception v7

    .line 124
    .restart local v7    # "e":Lcom/google/zxing/WriterException;
    invoke-virtual {v7}, Lcom/google/zxing/WriterException;->printStackTrace()V

    goto :goto_172
.end method
