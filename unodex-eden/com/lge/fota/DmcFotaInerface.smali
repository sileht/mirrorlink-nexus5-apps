.class public Lcom/lge/fota/DmcFotaInerface;
.super Ljava/lang/Object;
.source "DmcFotaInerface.java"


# static fields
.field static final FOTA_TEST_MODE_DEBUG_MODE:I = 0x100000

.field static final FOTA_TEST_MODE_DISPLAY_LOG:I = 0x1000

.field static final FOTA_TEST_MODE_NONE:I = 0x0

.field static final FOTA_TEST_MODE_PRINT_LOG:I = 0x100

.field static final FOTA_TEST_MODE_SAVE_LOG:I = 0x1

.field static final FOTA_TEST_MODE_SAVE_USD:I = 0x10

.field static final FOTA_TEST_MODE_VERIFY_TARGET:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "LGE_FOTA"

.field static final UI_LANG_AMHARIC:I = 0x2d

.field static final UI_LANG_ARABIC:I = 0x27

.field static final UI_LANG_ARMENIAN:I = 0x26

.field static final UI_LANG_ASSAMESE:I = 0x41

.field static final UI_LANG_AZERBAIJANI:I = 0x25

.field static final UI_LANG_BENGALI:I = 0x39

.field static final UI_LANG_BOSNIAN:I = 0x2

.field static final UI_LANG_BULGARIAN:I = 0x1

.field static final UI_LANG_BURMESE:I = 0x35

.field static final UI_LANG_CATALAN:I = 0x1d

.field static final UI_LANG_CROATIAN:I = 0x3

.field static final UI_LANG_CZECH:I = 0x4

.field static final UI_LANG_DANISH:I = 0x5

.field static final UI_LANG_DUTCH:I = 0x6

.field static final UI_LANG_ENGLISH:I = 0x0

.field static final UI_LANG_ESTONIAN:I = 0x1a

.field static final UI_LANG_EUSKERA:I = 0x1f

.field static final UI_LANG_FARSI:I = 0x28

.field static final UI_LANG_FINNISH:I = 0x7

.field static final UI_LANG_FRENCH:I = 0x8

.field static final UI_LANG_GALLEGO:I = 0x1e

.field static final UI_LANG_GEORGIAN:I = 0x24

.field static final UI_LANG_GERMAN:I = 0x9

.field static final UI_LANG_GREEK:I = 0xa

.field static final UI_LANG_GUJARATI:I = 0x3a

.field static final UI_LANG_HEBREW:I = 0x29

.field static final UI_LANG_HINDI:I = 0x2e

.field static final UI_LANG_HUNGARIAN:I = 0xb

.field static final UI_LANG_ICELANDIC:I = 0xc

.field static final UI_LANG_INDONESIAN:I = 0x2f

.field static final UI_LANG_ITALIAN:I = 0xd

.field static final UI_LANG_JAPANESE:I = 0x30

.field static final UI_LANG_KANNADA:I = 0x3b

.field static final UI_LANG_KAZAKH:I = 0x20

.field static final UI_LANG_KHMER:I = 0x36

.field static final UI_LANG_KOREAN:I = 0x31

.field static final UI_LANG_KURDISH:I = 0x2b

.field static final UI_LANG_LATVIAN:I = 0x1b

.field static final UI_LANG_LITHUANIAN:I = 0x1c

.field static final UI_LANG_MACEDONIAN:I = 0xe

.field static final UI_LANG_MALAY:I = 0x32

.field static final UI_LANG_MALAYALAM:I = 0x3c

.field static final UI_LANG_MARATHI:I = 0x3d

.field static final UI_LANG_NEPALI:I = 0x43

.field static final UI_LANG_NORWEGIAN:I = 0xf

.field static final UI_LANG_ORIYA:I = 0x42

.field static final UI_LANG_POLISH:I = 0x10

.field static final UI_LANG_PORTUGUESE:I = 0x11

.field static final UI_LANG_PORTUGUESE_BR:I = 0x12

.field static final UI_LANG_PUNJABI:I = 0x3e

.field static final UI_LANG_ROMANIAN:I = 0x13

.field static final UI_LANG_RUSSIAN:I = 0x21

.field static final UI_LANG_SERBIAN:I = 0x14

.field static final UI_LANG_SIMPLIFIEDCHINESE:I = 0x37

.field static final UI_LANG_SINHALA:I = 0x44

.field static final UI_LANG_SLOVAK:I = 0x15

.field static final UI_LANG_SLOVENIAN:I = 0x16

.field static final UI_LANG_SPANISH:I = 0x17

.field static final UI_LANG_SWAHILI:I = 0x2c

.field static final UI_LANG_SWEDISH:I = 0x18

.field static final UI_LANG_TAMIL:I = 0x3f

.field static final UI_LANG_TELUGU:I = 0x40

.field static final UI_LANG_THAI:I = 0x33

.field static final UI_LANG_TRADITIONALCHINESE:I = 0x38

.field static final UI_LANG_TURKISH:I = 0x19

.field static final UI_LANG_UKRAINIAN:I = 0x22

.field static final UI_LANG_URDU:I = 0x2a

.field static final UI_LANG_UZBEK:I = 0x23

.field static final UI_LANG_VIETNAMESE:I = 0x34

.field private static final m_DefaultPackagePath:Ljava/lang/String; = "/cache/fota/dlpkgfile"

.field private static final m_UserDataPackagePath:Ljava/lang/String; = "/data/fota/dlpkgfile"


# instance fields
.field private m_PackagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/fota/DmcFotaInerface;->m_PackagePath:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private GetLanguage()I
    .registers 7

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "iLanguage":I
    const/4 v1, 0x0

    .line 166
    .local v1, "cstrLanguage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 168
    .local v0, "cstrCountryCode":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v3, "LGE_FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Language : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v3, "LGE_FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CountryCode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v3, "en"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_44

    const/4 v2, 0x0

    .line 175
    :cond_44
    const-string v3, "bg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4d

    const/4 v2, 0x1

    .line 176
    :cond_4d
    const-string v3, "bs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_56

    const/4 v2, 0x2

    .line 177
    :cond_56
    const-string v3, "hr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5f

    const/4 v2, 0x3

    .line 178
    :cond_5f
    const-string v3, "cs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_68

    const/4 v2, 0x4

    .line 179
    :cond_68
    const-string v3, "da"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_71

    const/4 v2, 0x5

    .line 180
    :cond_71
    const-string v3, "nl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7a

    const/4 v2, 0x6

    .line 181
    :cond_7a
    const-string v3, "fi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_83

    const/4 v2, 0x7

    .line 182
    :cond_83
    const-string v3, "fr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8d

    const/16 v2, 0x8

    .line 183
    :cond_8d
    const-string v3, "de"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_97

    const/16 v2, 0x9

    .line 184
    :cond_97
    const-string v3, "el"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a1

    const/16 v2, 0xa

    .line 185
    :cond_a1
    const-string v3, "hu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_ab

    const/16 v2, 0xb

    .line 186
    :cond_ab
    const-string v3, "is"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b5

    const/16 v2, 0xc

    .line 187
    :cond_b5
    const-string v3, "it"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_bf

    const/16 v2, 0xd

    .line 188
    :cond_bf
    const-string v3, "mk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c9

    const/16 v2, 0xe

    .line 189
    :cond_c9
    const-string v3, "no"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_d3

    const/16 v2, 0xf

    .line 190
    :cond_d3
    const-string v3, "pl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_dd

    const/16 v2, 0x10

    .line 191
    :cond_dd
    const-string v3, "pt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_ef

    .line 193
    const-string v3, "pt_BR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2d8

    .line 195
    const/16 v2, 0x12

    .line 202
    :cond_ef
    :goto_ef
    const-string v3, "ro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f9

    const/16 v2, 0x13

    .line 203
    :cond_f9
    const-string v3, "sr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_103

    const/16 v2, 0x14

    .line 204
    :cond_103
    const-string v3, "sk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10d

    const/16 v2, 0x15

    .line 205
    :cond_10d
    const-string v3, "sl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_117

    const/16 v2, 0x16

    .line 206
    :cond_117
    const-string v3, "es"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_121

    const/16 v2, 0x17

    .line 207
    :cond_121
    const-string v3, "sv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_12b

    const/16 v2, 0x18

    .line 208
    :cond_12b
    const-string v3, "tr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_135

    const/16 v2, 0x19

    .line 209
    :cond_135
    const-string v3, "et"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_13f

    const/16 v2, 0x1a

    .line 210
    :cond_13f
    const-string v3, "lv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_149

    const/16 v2, 0x1b

    .line 211
    :cond_149
    const-string v3, "lt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_153

    const/16 v2, 0x1c

    .line 212
    :cond_153
    const-string v3, "ca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_15d

    const/16 v2, 0x1d

    .line 213
    :cond_15d
    const-string v3, "gl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_167

    const/16 v2, 0x1e

    .line 214
    :cond_167
    const-string v3, "eu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_171

    const/16 v2, 0x1f

    .line 215
    :cond_171
    const-string v3, "kk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_17b

    const/16 v2, 0x20

    .line 216
    :cond_17b
    const-string v3, "ru"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_185

    const/16 v2, 0x21

    .line 217
    :cond_185
    const-string v3, "uk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_18f

    const/16 v2, 0x22

    .line 218
    :cond_18f
    const-string v3, "uz"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_199

    const/16 v2, 0x23

    .line 219
    :cond_199
    const-string v3, "ka"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1a3

    const/16 v2, 0x24

    .line 220
    :cond_1a3
    const-string v3, "az"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1ad

    const/16 v2, 0x25

    .line 221
    :cond_1ad
    const-string v3, "hy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1b7

    const/16 v2, 0x26

    .line 222
    :cond_1b7
    const-string v3, "ar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1c1

    const/16 v2, 0x27

    .line 223
    :cond_1c1
    const-string v3, "fa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1cb

    const/16 v2, 0x28

    .line 224
    :cond_1cb
    const-string v3, "he"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1d5

    const/16 v2, 0x29

    .line 225
    :cond_1d5
    const-string v3, "ur"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1df

    const/16 v2, 0x2a

    .line 226
    :cond_1df
    const-string v3, "ku"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1e9

    const/16 v2, 0x2b

    .line 227
    :cond_1e9
    const-string v3, "sw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1f3

    const/16 v2, 0x2c

    .line 228
    :cond_1f3
    const-string v3, "am"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1fd

    const/16 v2, 0x2d

    .line 229
    :cond_1fd
    const-string v3, "hi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_207

    const/16 v2, 0x2e

    .line 230
    :cond_207
    const-string v3, "id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_211

    const/16 v2, 0x2f

    .line 231
    :cond_211
    const-string v3, "ja"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_21b

    const/16 v2, 0x30

    .line 232
    :cond_21b
    const-string v3, "ko"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_225

    const/16 v2, 0x31

    .line 233
    :cond_225
    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_22f

    const/16 v2, 0x32

    .line 234
    :cond_22f
    const-string v3, "th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_239

    const/16 v2, 0x33

    .line 235
    :cond_239
    const-string v3, "vi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_243

    const/16 v2, 0x34

    .line 236
    :cond_243
    const-string v3, "my"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_24d

    const/16 v2, 0x35

    .line 237
    :cond_24d
    const-string v3, "km"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_257

    const/16 v2, 0x36

    .line 238
    :cond_257
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_269

    .line 240
    const-string v3, "zh_CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2dc

    .line 242
    const/16 v2, 0x37

    .line 249
    :cond_269
    :goto_269
    const-string v3, "bn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_273

    const/16 v2, 0x39

    .line 250
    :cond_273
    const-string v3, "gu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27d

    const/16 v2, 0x3a

    .line 251
    :cond_27d
    const-string v3, "kn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_287

    const/16 v2, 0x3b

    .line 252
    :cond_287
    const-string v3, "ml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_291

    const/16 v2, 0x3c

    .line 253
    :cond_291
    const-string v3, "mr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_29b

    const/16 v2, 0x3d

    .line 254
    :cond_29b
    const-string v3, "pa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2a5

    const/16 v2, 0x3e

    .line 255
    :cond_2a5
    const-string v3, "ta"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2af

    const/16 v2, 0x3f

    .line 256
    :cond_2af
    const-string v3, "te"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2b9

    const/16 v2, 0x40

    .line 257
    :cond_2b9
    const-string v3, "as"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2c3

    const/16 v2, 0x41

    .line 258
    :cond_2c3
    const-string v3, "or"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2cd

    const/16 v2, 0x42

    .line 259
    :cond_2cd
    const-string v3, "si"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2d7

    const/16 v2, 0x44

    .line 261
    :cond_2d7
    return v2

    .line 199
    :cond_2d8
    const/16 v2, 0x11

    goto/16 :goto_ef

    .line 246
    :cond_2dc
    const/16 v2, 0x38

    goto :goto_269
.end method


# virtual methods
.method public ClearUsd()I
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, "iResult":I
    invoke-static {}, Lcom/lge/fota/Native;->ClearUsd()I

    move-result v0

    .line 28
    return v0
.end method

.method public DoAutotest()I
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-static {v0, v0}, Lcom/lge/fota/Native;->DoAutotest(II)I

    .line 268
    return v0
.end method

.method public DoDebugModeUpdate()I
    .registers 7

    .prologue
    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, "iResult":I
    const/4 v0, 0x0

    .line 121
    .local v0, "iLanguage":I
    const/4 v1, 0x0

    .line 123
    .local v1, "iOption":I
    const/high16 v1, 0x100000

    .line 124
    invoke-direct {p0}, Lcom/lge/fota/DmcFotaInerface;->GetLanguage()I

    move-result v0

    .line 126
    const-string v3, "LGE_FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DoUpdate - language : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Option : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v0, v1}, Lcom/lge/fota/Native;->DoUpdate(II)I

    move-result v2

    .line 130
    return v2
.end method

.method public DoTargetValidation()I
    .registers 6

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "iResult":I
    const/4 v0, 0x0

    .line 137
    .local v0, "iLanguage":I
    invoke-direct {p0}, Lcom/lge/fota/DmcFotaInerface;->GetLanguage()I

    move-result v0

    .line 139
    const-string v2, "LGE_FOTA"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DoTargetValidation - language : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/lge/fota/Native;->DoUpdate(II)I

    move-result v1

    .line 143
    return v1
.end method

.method public DoUpdate()I
    .registers 7

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "iResult":I
    const/4 v0, 0x0

    .line 104
    .local v0, "iLanguage":I
    const/4 v1, 0x0

    .line 106
    .local v1, "iOption":I
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/lge/fota/DmcFotaInerface;->GetLanguage()I

    move-result v0

    .line 110
    const-string v3, "LGE_FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DoUpdate - language : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Option : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {v0, v1}, Lcom/lge/fota/Native;->DoUpdate(II)I

    move-result v2

    .line 114
    return v2
.end method

.method public DumpImage(II)I
    .registers 4
    .param p1, "iOption"    # I
    .param p2, "iMode"    # I

    .prologue
    .line 273
    invoke-static {p1, p2}, Lcom/lge/fota/Native;->DumpImage(II)I

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public GetResult()I
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 47
    .local v0, "iResult":I
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lge/fota/Native;->GetResult(I)I

    move-result v0

    .line 50
    return v0
.end method

.method public PrepareUpdate()I
    .registers 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "iResult":I
    iget-object v1, p0, Lcom/lge/fota/DmcFotaInerface;->m_PackagePath:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 84
    const-string v1, "/cache/fota/dlpkgfile"

    invoke-static {v1}, Lcom/lge/fota/Native;->PrepareUpdate(Ljava/lang/String;)I

    move-result v0

    .line 86
    if-nez v0, :cond_13

    .line 88
    const-string v1, "/data/fota/dlpkgfile"

    invoke-static {v1}, Lcom/lge/fota/Native;->PrepareUpdate(Ljava/lang/String;)I

    move-result v0

    .line 96
    :cond_13
    :goto_13
    return v0

    .line 93
    :cond_14
    iget-object v1, p0, Lcom/lge/fota/DmcFotaInerface;->m_PackagePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/fota/Native;->PrepareUpdate(Ljava/lang/String;)I

    move-result v0

    goto :goto_13
.end method

.method public ReadUsd()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15
    const/4 v0, 0x0

    .line 17
    .local v0, "iResult":I
    invoke-static {v1, v1}, Lcom/lge/fota/Native;->GetUsd(II)I

    move-result v0

    .line 19
    return v0
.end method

.method public RemoveCallback()V
    .registers 1

    .prologue
    .line 153
    invoke-static {}, Lcom/lge/fota/Native;->RemoveCallback()V

    .line 154
    return-void
.end method

.method public RemovePackage()I
    .registers 5

    .prologue
    .line 55
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/fota/dlpkgfile"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "targetFile":Ljava/io/File;
    const-string v1, "LGE_FOTA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemovePackage : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    :cond_24
    new-instance v0, Ljava/io/File;

    .end local v0    # "targetFile":Ljava/io/File;
    const-string v1, "/data/fota/dlpkgfile"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v0    # "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 65
    const-string v1, "LGE_FOTA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemovePackage : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 69
    :cond_48
    new-instance v0, Ljava/io/File;

    .end local v0    # "targetFile":Ljava/io/File;
    const-string v1, "/cache/fota/package.map"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .restart local v0    # "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 71
    const-string v1, "LGE_FOTA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemovePackage : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 75
    :cond_6c
    const/4 v1, 0x0

    return v1
.end method

.method public SetCallback(Lcom/lge/fota/DmcFotaNativeInterface;)V
    .registers 2
    .param p1, "pNativeInterface"    # Lcom/lge/fota/DmcFotaNativeInterface;

    .prologue
    .line 148
    invoke-static {p1}, Lcom/lge/fota/Native;->SetCallback(Lcom/lge/fota/DmcFotaNativeInterface;)V

    .line 149
    return-void
.end method

.method public SetPackagePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "cPackagePath"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lge/fota/DmcFotaInerface;->m_PackagePath:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public UpdateAgentV()Ljava/lang/String;
    .registers 2

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 282
    .local v0, "ua_Version":Ljava/lang/String;
    invoke-static {}, Lcom/lge/fota/Native;->UpdateAgentV()Ljava/lang/String;

    move-result-object v0

    .line 284
    return-object v0
.end method

.method public Validation()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, "iResult":I
    invoke-static {}, Lcom/lge/fota/Native;->ValidatePackage()I

    move-result v0

    .line 37
    return v0
.end method
