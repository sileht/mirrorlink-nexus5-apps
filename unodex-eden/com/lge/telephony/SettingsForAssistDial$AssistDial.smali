.class public final Lcom/lge/telephony/SettingsForAssistDial$AssistDial;
.super Ljava/lang/Object;
.source "SettingsForAssistDial.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/telephony/SettingsForAssistDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistDial"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "content://settings/assist_dial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAssistDialCountryDetailList(Landroid/content/ContentResolver;)V
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 43
    const-string v5, "SettingsForAssistDial"

    const-string v6, "initAssistDialCountryDetailList()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->initCountryOriginDataTable()V

    .line 46
    const-string v0, "000"

    .line 47
    .local v0, "areaCode":Ljava/lang/String;
    const-string v2, "10"

    .line 49
    .local v2, "numLength":Ljava/lang/String;
    sget-object v5, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    if-nez v5, :cond_1a

    .line 50
    const-string v5, "SettingsForAssistDial"

    const-string v6, "List is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_19
    return-void

    .line 52
    :cond_1a
    sget-object v5, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    array-length v3, v5

    .line 53
    .local v3, "size":I
    new-array v4, v3, [Landroid/content/ContentValues;

    .line 55
    .local v4, "values":[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-lt v1, v3, :cond_2c

    .line 68
    if-nez p0, :cond_b2

    .line 70
    const-string v5, "SettingsForAssistDial"

    const-string v6, "Resolver is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 56
    :cond_2c
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v4, v1

    .line 57
    aget-object v5, v4, v1

    const-string v6, "countryindex"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    aget-object v5, v4, v1

    const-string v6, "countryname"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    aget-object v5, v4, v1

    const-string v6, "mcc"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getMccCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    aget-object v5, v4, v1

    const-string v6, "countrycode"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    aget-object v5, v4, v1

    const-string v6, "iddprefix"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    aget-object v5, v4, v1

    const-string v6, "nddprefix"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getNddPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    aget-object v5, v4, v1

    const-string v6, "nanp"

    sget-object v7, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/lge/telephony/LGReferenceCountry;->getNanp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    aget-object v5, v4, v1

    const-string v6, "area"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    aget-object v5, v4, v1

    const-string v6, "length"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_20

    .line 73
    :cond_b2
    sget-object v5, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_19
.end method

.method public static initAssistDialCountryDetailList(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "areaCode"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v4, "SettingsForAssistDial"

    const-string v5, "initAssistDialCountryDetailList()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->initCountryOriginDataTable()V

    .line 85
    const-string v1, "10"

    .line 87
    .local v1, "numLength":Ljava/lang/String;
    sget-object v4, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    if-nez v4, :cond_18

    .line 88
    const-string v4, "SettingsForAssistDial"

    const-string v5, "List is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_17
    return-void

    .line 90
    :cond_18
    sget-object v4, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    array-length v2, v4

    .line 91
    .local v2, "size":I
    new-array v3, v2, [Landroid/content/ContentValues;

    .line 93
    .local v3, "values":[Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    if-lt v0, v2, :cond_2a

    .line 106
    if-nez p0, :cond_b0

    .line 108
    const-string v4, "SettingsForAssistDial"

    const-string v5, "Resolver is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 94
    :cond_2a
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v3, v0

    .line 95
    aget-object v4, v3, v0

    const-string v5, "countryindex"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    aget-object v4, v3, v0

    const-string v5, "countryname"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    aget-object v4, v3, v0

    const-string v5, "mcc"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getMccCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    aget-object v4, v3, v0

    const-string v5, "countrycode"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    aget-object v4, v3, v0

    const-string v5, "iddprefix"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    aget-object v4, v3, v0

    const-string v5, "nddprefix"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getNddPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    aget-object v4, v3, v0

    const-string v5, "nanp"

    sget-object v6, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/lge/telephony/LGReferenceCountry;->getNanp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    aget-object v4, v3, v0

    const-string v5, "area"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    aget-object v4, v3, v0

    const-string v5, "length"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1e

    .line 111
    :cond_b0
    sget-object v4, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_17
.end method

.method private static initCountryOriginDataTable()V
    .registers 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 119
    .local v10, "r":Landroid/content/res/Resources;
    const/16 v0, 0xe0

    new-array v11, v0, [Lcom/lge/telephony/LGReferenceCountry;

    .line 123
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    sget v2, Lcom/lge/internal/R$string;->STR_res_USA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "310,311,312,313,314,315,316"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v1

    .line 124
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    sget v1, Lcom/lge/internal/R$string;->STR_res_AFGHANISTAN_NORMAL:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "412"

    const-string v4, "93"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    move v1, v12

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    .line 125
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    sget v1, Lcom/lge/internal/R$string;->STR_res_ALBALIA_NORMAL:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "276"

    const-string v4, "355"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    move v1, v13

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v13

    .line 126
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    sget v1, Lcom/lge/internal/R$string;->STR_res_ALGERIA_NORMAL:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "603"

    const-string v4, "213"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    move v1, v14

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v14

    .line 127
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    sget v1, Lcom/lge/internal/R$string;->STR_res_AMERICANSAMOA_NORMAL:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "544"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    move v1, v15

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v15

    const/4 v12, 0x5

    .line 128
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/4 v1, 0x5

    sget v2, Lcom/lge/internal/R$string;->STR_res_ANDORRA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "213"

    const-string v4, "376"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/4 v12, 0x6

    .line 129
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/4 v1, 0x6

    sget v2, Lcom/lge/internal/R$string;->STR_res_ANGOLA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "631"

    const-string v4, "244"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/4 v12, 0x7

    .line 130
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/4 v1, 0x7

    sget v2, Lcom/lge/internal/R$string;->STR_res_ANGUILLA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "365"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8

    .line 131
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8

    sget v2, Lcom/lge/internal/R$string;->STR_res_ANTIGUAANDBARBUDA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "344"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9

    .line 132
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9

    sget v2, Lcom/lge/internal/R$string;->STR_res_ARGENTINA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "722"

    const-string v4, "54"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa

    .line 133
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa

    sget v2, Lcom/lge/internal/R$string;->STR_res_ARMENIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "283"

    const-string v4, "374"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb

    .line 134
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb

    sget v2, Lcom/lge/internal/R$string;->STR_res_ARUBA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "363"

    const-string v4, "297"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc

    .line 135
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc

    sget v2, Lcom/lge/internal/R$string;->STR_res_AUSTRALIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "505"

    const-string v4, "61"

    const-string v5, "0011"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd

    .line 136
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd

    sget v2, Lcom/lge/internal/R$string;->STR_res_AUSTRIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "232"

    const-string v4, "43"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xe

    .line 137
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xe

    sget v2, Lcom/lge/internal/R$string;->STR_res_AZERBAIJANIREPUBLIC_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "400"

    const-string v4, "994"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xf

    .line 138
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xf

    sget v2, Lcom/lge/internal/R$string;->STR_res_BAHAMAS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "364"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x10

    .line 139
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x10

    sget v2, Lcom/lge/internal/R$string;->STR_res_BAHRAIN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "426"

    const-string v4, "973"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x11

    .line 140
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x11

    sget v2, Lcom/lge/internal/R$string;->STR_res_BANGLADESH_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "470"

    const-string v4, "880"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x12

    .line 141
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x12

    sget v2, Lcom/lge/internal/R$string;->STR_res_BARBADOS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "342"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x13

    .line 142
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x13

    sget v2, Lcom/lge/internal/R$string;->STR_res_BELARUS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "257"

    const-string v4, "375"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x14

    .line 143
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x14

    sget v2, Lcom/lge/internal/R$string;->STR_res_BELGIUM_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "206"

    const-string v4, "32"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x15

    .line 144
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x15

    sget v2, Lcom/lge/internal/R$string;->STR_res_BELIZE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "702"

    const-string v4, "501"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x16

    .line 145
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x16

    sget v2, Lcom/lge/internal/R$string;->STR_res_BENIN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "616,"

    const-string v4, "229"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x17

    .line 146
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x17

    sget v2, Lcom/lge/internal/R$string;->STR_res_BERMUDA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "350"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x18

    .line 147
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x18

    sget v2, Lcom/lge/internal/R$string;->STR_res_BHUTAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "402"

    const-string v4, "975"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x19

    .line 148
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x19

    sget v2, Lcom/lge/internal/R$string;->STR_res_BOLIVIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "736"

    const-string v4, "591"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1a

    .line 149
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1a

    sget v2, Lcom/lge/internal/R$string;->STR_res_BOSNIAANDHERZEGOVINA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "218"

    const-string v4, "387"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1b

    .line 150
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1b

    sget v2, Lcom/lge/internal/R$string;->STR_res_BOTSWANA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "652"

    const-string v4, "267"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1c

    .line 151
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1c

    sget v2, Lcom/lge/internal/R$string;->STR_res_BRAZIL_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "724"

    const-string v4, "55"

    const-string v5, "0015"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1d

    .line 152
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1d

    sget v2, Lcom/lge/internal/R$string;->STR_res_BRITISHVIRGINISLANDS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "348"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1e

    .line 153
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1e

    sget v2, Lcom/lge/internal/R$string;->STR_res_BRUNEIDARUSSALAM_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "528"

    const-string v4, "673"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1f

    .line 154
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x1f

    sget v2, Lcom/lge/internal/R$string;->STR_res_BULGARIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "284"

    const-string v4, "359"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x20

    .line 155
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x20

    sget v2, Lcom/lge/internal/R$string;->STR_res_BURKINAFASO_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "613"

    const-string v4, "226"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x21

    .line 156
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x21

    sget v2, Lcom/lge/internal/R$string;->STR_res_BURUNDI_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "642"

    const-string v4, "257"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x22

    .line 157
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x22

    sget v2, Lcom/lge/internal/R$string;->STR_res_CAMBODIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "456"

    const-string v4, "855"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x23

    .line 158
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x23

    sget v2, Lcom/lge/internal/R$string;->STR_res_CAMEROON_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "624"

    const-string v4, "237"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x24

    .line 159
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x24

    sget v2, Lcom/lge/internal/R$string;->STR_res_CANADA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "302"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x25

    .line 160
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x25

    sget v2, Lcom/lge/internal/R$string;->STR_res_CAPEVERDE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "625"

    const-string v4, "238"

    const-string v5, "0"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x26

    .line 161
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x26

    sget v2, Lcom/lge/internal/R$string;->STR_res_CAYMANISLANDS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "346"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x27

    .line 162
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x27

    sget v2, Lcom/lge/internal/R$string;->STR_res_CENTRALAFRICANREP_SHORT:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "623"

    const-string v4, "236"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x28

    .line 163
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x28

    sget v2, Lcom/lge/internal/R$string;->STR_res_CHAD_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "622"

    const-string v4, "235"

    const-string v5, "15"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x29

    .line 164
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x29

    sget v2, Lcom/lge/internal/R$string;->STR_res_CHILE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "730"

    const-string v4, "56"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2a

    .line 165
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2a

    sget v2, Lcom/lge/internal/R$string;->STR_res_CHINA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "460"

    const-string v4, "86"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2b

    .line 166
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2b

    sget v2, Lcom/lge/internal/R$string;->STR_res_COLOMBIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "732"

    const-string v4, "57"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2c

    .line 167
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2c

    sget v2, Lcom/lge/internal/R$string;->STR_res_COMOROS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "654"

    const-string v4, "269"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2d

    .line 168
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2d

    sget v2, Lcom/lge/internal/R$string;->STR_res_COOKISLAND_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "548"

    const-string v4, "682"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2e

    .line 169
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2e

    sget v2, Lcom/lge/internal/R$string;->STR_res_COSTARICA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "712"

    const-string v4, "506"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2f

    .line 170
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x2f

    sget v2, Lcom/lge/internal/R$string;->STR_res_COTEDIVOIRE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "612"

    const-string v4, "225"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x30

    .line 171
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x30

    sget v2, Lcom/lge/internal/R$string;->STR_res_CROATIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "219"

    const-string v4, "385"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x31

    .line 172
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x31

    sget v2, Lcom/lge/internal/R$string;->STR_res_CUBA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "368"

    const-string v4, "53"

    const-string v5, "119"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x32

    .line 173
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x32

    sget v2, Lcom/lge/internal/R$string;->STR_res_CYPRUS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "280"

    const-string v4, "357"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x33

    .line 174
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x33

    sget v2, Lcom/lge/internal/R$string;->STR_res_CZECHREPUBLIC_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "230"

    const-string v4, "420"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x34

    .line 175
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x34

    sget v2, Lcom/lge/internal/R$string;->STR_res_DEMOCRATICREPCONGO_SHORT:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "630"

    const-string v4, "243"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x35

    .line 176
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x35

    sget v2, Lcom/lge/internal/R$string;->STR_res_DENMARK_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "238"

    const-string v4, "45"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x36

    .line 177
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x36

    sget v2, Lcom/lge/internal/R$string;->STR_res_DJIBOUTI_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "638"

    const-string v4, "253"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x37

    .line 178
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x37

    sget v2, Lcom/lge/internal/R$string;->STR_res_DOMINICA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "366"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x38

    .line 179
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x38

    sget v2, Lcom/lge/internal/R$string;->STR_res_DOMINICANREP_SHORT:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "370"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x39

    .line 180
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x39

    sget v2, Lcom/lge/internal/R$string;->STR_res_EASTTIMOR_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "514"

    const-string v4, "670"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3a

    .line 181
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3a

    sget v2, Lcom/lge/internal/R$string;->STR_res_ECUADOR_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "740"

    const-string v4, "593"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3b

    .line 182
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3b

    sget v2, Lcom/lge/internal/R$string;->STR_res_EGYPT_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "602"

    const-string v4, "20"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3c

    .line 183
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3c

    sget v2, Lcom/lge/internal/R$string;->STR_res_ELSALVADOR_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "706"

    const-string v4, "503"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3d

    .line 184
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3d

    sget v2, Lcom/lge/internal/R$string;->STR_res_EQUATORIALGUINEA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "627"

    const-string v4, "240"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3e

    .line 185
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3e

    sget v2, Lcom/lge/internal/R$string;->STR_res_ERITREA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "657"

    const-string v4, "291"

    const-string v5, "00"

    const-string v6, "00"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3f

    .line 186
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x3f

    sget v2, Lcom/lge/internal/R$string;->STR_res_ESTONIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "248"

    const-string v4, "372"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x40

    .line 187
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x40

    sget v2, Lcom/lge/internal/R$string;->STR_res_ETHIOPIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "636"

    const-string v4, "251"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x41

    .line 188
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x41

    sget v2, Lcom/lge/internal/R$string;->STR_res_FAROEISLANDS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "288"

    const-string v4, "298"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x42

    .line 189
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x42

    sget v2, Lcom/lge/internal/R$string;->STR_res_FEDERATEDSMICRONESIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "550"

    const-string v4, "691"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x43

    .line 190
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x43

    sget v2, Lcom/lge/internal/R$string;->STR_res_FIJI_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "542"

    const-string v4, "679"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x44

    .line 191
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x44

    sget v2, Lcom/lge/internal/R$string;->STR_res_FINLAND_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "244"

    const-string v4, "358"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x45

    .line 192
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x45

    sget v2, Lcom/lge/internal/R$string;->STR_res_FRANCE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "208"

    const-string v4, "33"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x46

    .line 193
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x46

    sget v2, Lcom/lge/internal/R$string;->STR_res_FRENCHGUIANA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "742"

    const-string v4, "594"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x47

    .line 194
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x47

    sget v2, Lcom/lge/internal/R$string;->STR_res_FRENCHPOLYNESIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "547"

    const-string v4, "689"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x48

    .line 195
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x48

    sget v2, Lcom/lge/internal/R$string;->STR_res_GABONESEREPUBLIC_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "628"

    const-string v4, "241"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x49

    .line 196
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x49

    sget v2, Lcom/lge/internal/R$string;->STR_res_GAMBIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "607"

    const-string v4, "220"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4a

    .line 197
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4a

    sget v2, Lcom/lge/internal/R$string;->STR_res_GEORGIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "282"

    const-string v4, "995"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4b

    .line 198
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4b

    sget v2, Lcom/lge/internal/R$string;->STR_res_GERMANY_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "262"

    const-string v4, "49"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4c

    .line 199
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4c

    sget v2, Lcom/lge/internal/R$string;->STR_res_GHANA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "620"

    const-string v4, "233"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4d

    .line 200
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4d

    sget v2, Lcom/lge/internal/R$string;->STR_res_GIBRALTAR_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "266"

    const-string v4, "350"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4e

    .line 201
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4e

    sget v2, Lcom/lge/internal/R$string;->STR_res_GREECE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "202"

    const-string v4, "30"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4f

    .line 202
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x4f

    sget v2, Lcom/lge/internal/R$string;->STR_res_GREENLAND_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "290"

    const-string v4, "299"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x50

    .line 203
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x50

    sget v2, Lcom/lge/internal/R$string;->STR_res_GRENADA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "352"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x51

    .line 204
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x51

    sget v2, Lcom/lge/internal/R$string;->STR_res_GUADELOUPE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "340"

    const-string v4, "590"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x52

    .line 205
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x52

    sget v2, Lcom/lge/internal/R$string;->STR_res_GUAM_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "535"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x53

    .line 206
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x53

    sget v2, Lcom/lge/internal/R$string;->STR_res_GUATEMALA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "704"

    const-string v4, "502"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x54

    .line 207
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x54

    sget v2, Lcom/lge/internal/R$string;->STR_res_GUINEA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "611"

    const-string v4, "224"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x55

    .line 208
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x55

    sget v2, Lcom/lge/internal/R$string;->STR_res_GUINEABISSAU_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "632"

    const-string v4, "245"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x56

    .line 209
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x56

    sget v2, Lcom/lge/internal/R$string;->STR_res_GUYANA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "738"

    const-string v4, "592"

    const-string v5, "001"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x57

    .line 210
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x57

    sget v2, Lcom/lge/internal/R$string;->STR_res_HAITI_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "372"

    const-string v4, "509"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x58

    .line 211
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x58

    sget v2, Lcom/lge/internal/R$string;->STR_res_HONDURAS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "708"

    const-string v4, "504"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x59

    .line 212
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x59

    sget v2, Lcom/lge/internal/R$string;->STR_res_HONGKONG_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "454"

    const-string v4, "852"

    const-string v5, "001"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5a

    .line 213
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5a

    sget v2, Lcom/lge/internal/R$string;->STR_res_HUNGARY_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "216"

    const-string v4, "36"

    const-string v5, "00"

    const-string v6, "06"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5b

    .line 214
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5b

    sget v2, Lcom/lge/internal/R$string;->STR_res_ICELAND_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "274"

    const-string v4, "354"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5c

    .line 215
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5c

    sget v2, Lcom/lge/internal/R$string;->STR_res_INDIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "404,405"

    const-string v4, "91"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5d

    .line 216
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5d

    sget v2, Lcom/lge/internal/R$string;->STR_res_INDONESIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "510"

    const-string v4, "62"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5e

    .line 217
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5e

    sget v2, Lcom/lge/internal/R$string;->STR_res_IRAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "432"

    const-string v4, "98"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5f

    .line 218
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x5f

    sget v2, Lcom/lge/internal/R$string;->STR_res_IRAQ_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "418"

    const-string v4, "964"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x60

    .line 219
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x60

    sget v2, Lcom/lge/internal/R$string;->STR_res_IRELAND_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "272"

    const-string v4, "353"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x61

    .line 220
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x61

    sget v2, Lcom/lge/internal/R$string;->STR_res_ISRAEL_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "425"

    const-string v4, "972"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x62

    .line 221
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x62

    sget v2, Lcom/lge/internal/R$string;->STR_res_ITALY_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "222"

    const-string v4, "39"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x63

    .line 222
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x63

    sget v2, Lcom/lge/internal/R$string;->STR_res_JAMAICA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "338"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x64

    .line 223
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x64

    sget v2, Lcom/lge/internal/R$string;->STR_res_JAPAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "440,441"

    const-string v4, "81"

    const-string v5, "010"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x65

    .line 224
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x65

    sget v2, Lcom/lge/internal/R$string;->STR_res_JORDAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "416"

    const-string v4, "962"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x66

    .line 225
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x66

    sget v2, Lcom/lge/internal/R$string;->STR_res_KAZAKHSTAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "401"

    const-string v4, "7"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x67

    .line 226
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x67

    sget v2, Lcom/lge/internal/R$string;->STR_res_KENYA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "639"

    const-string v4, "254"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x68

    .line 227
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x68

    sget v2, Lcom/lge/internal/R$string;->STR_res_KIRIBATI_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "545"

    const-string v4, "686"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x69

    .line 228
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x69

    sget v2, Lcom/lge/internal/R$string;->STR_res_KOREANORTH_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "467"

    const-string v4, "850"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6a

    .line 229
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6a

    sget v2, Lcom/lge/internal/R$string;->STR_res_KOREASOUTH_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "450"

    const-string v4, "82"

    const-string v5, "00700"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6b

    .line 230
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6b

    sget v2, Lcom/lge/internal/R$string;->STR_res_KUWAIT_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "419"

    const-string v4, "965"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6c

    .line 231
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6c

    sget v2, Lcom/lge/internal/R$string;->STR_res_KYRGYZREPUBLIC_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "437"

    const-string v4, "996"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6d

    .line 232
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6d

    sget v2, Lcom/lge/internal/R$string;->STR_res_LAOS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "457"

    const-string v4, "856"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6e

    .line 233
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6e

    sget v2, Lcom/lge/internal/R$string;->STR_res_LATVIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "247"

    const-string v4, "371"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6f

    .line 234
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x6f

    sget v2, Lcom/lge/internal/R$string;->STR_res_LEBANON_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "415"

    const-string v4, "961"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x70

    .line 235
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x70

    sget v2, Lcom/lge/internal/R$string;->STR_res_LESOTHO_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "651"

    const-string v4, "266"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x71

    .line 236
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x71

    sget v2, Lcom/lge/internal/R$string;->STR_res_LIBERIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "618"

    const-string v4, "231"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x72

    .line 237
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x72

    sget v2, Lcom/lge/internal/R$string;->STR_res_LIBYA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "606"

    const-string v4, "218"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x73

    .line 238
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x73

    sget v2, Lcom/lge/internal/R$string;->STR_res_LIECHTENSTEIN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "295"

    const-string v4, "423"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x74

    .line 239
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x74

    sget v2, Lcom/lge/internal/R$string;->STR_res_LITHUANIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "246"

    const-string v4, "370"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x75

    .line 240
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x75

    sget v2, Lcom/lge/internal/R$string;->STR_res_LUXEMBOURG_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "270"

    const-string v4, "352"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x76

    .line 241
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x76

    sget v2, Lcom/lge/internal/R$string;->STR_res_MACAO_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "455"

    const-string v4, "853"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x77

    .line 242
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x77

    sget v2, Lcom/lge/internal/R$string;->STR_res_MADAGASCAR_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "646"

    const-string v4, "261"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x78

    .line 243
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x78

    sget v2, Lcom/lge/internal/R$string;->STR_res_MALAWI_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "650"

    const-string v4, "265"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x79

    .line 244
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x79

    sget v2, Lcom/lge/internal/R$string;->STR_res_MALAYSIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "502"

    const-string v4, "60"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7a

    .line 245
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7a

    sget v2, Lcom/lge/internal/R$string;->STR_res_MALDIVES_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "472"

    const-string v4, "960"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7b

    .line 246
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7b

    sget v2, Lcom/lge/internal/R$string;->STR_res_MALI_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "610"

    const-string v4, "223"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7c

    .line 247
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7c

    sget v2, Lcom/lge/internal/R$string;->STR_res_MALTA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "278"

    const-string v4, "356"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7d

    .line 248
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7d

    sget v2, Lcom/lge/internal/R$string;->STR_res_MARITIME_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "901"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7e

    .line 249
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7e

    sget v2, Lcom/lge/internal/R$string;->STR_res_MARSHALL_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "551"

    const-string v4, "692"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7f

    .line 250
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x7f

    sget v2, Lcom/lge/internal/R$string;->STR_res_MARTINIQUE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "340"

    const-string v4, "596"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x80

    .line 251
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x80

    sget v2, Lcom/lge/internal/R$string;->STR_res_MAURITANIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "609"

    const-string v4, "222"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x81

    .line 252
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x81

    sget v2, Lcom/lge/internal/R$string;->STR_res_MAURITIUS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "617"

    const-string v4, "230"

    const-string v5, "020"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x82

    .line 253
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x82

    sget v2, Lcom/lge/internal/R$string;->STR_res_MEXICO_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "334"

    const-string v4, "52"

    const-string v5, "00"

    const-string v6, "01"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x83

    .line 254
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x83

    sget v2, Lcom/lge/internal/R$string;->STR_res_MOLDOVA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "259"

    const-string v4, "373"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x84

    .line 255
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x84

    sget v2, Lcom/lge/internal/R$string;->STR_res_MONACO_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "212"

    const-string v4, "377"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x85

    .line 256
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x85

    sget v2, Lcom/lge/internal/R$string;->STR_res_MONGOLIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "428"

    const-string v4, "976"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x86

    .line 257
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xdf

    sget v2, Lcom/lge/internal/R$string;->STR_res_MONTENEGRO_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "297"

    const-string v4, "382"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x87

    .line 258
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x86

    sget v2, Lcom/lge/internal/R$string;->STR_res_MONTSERRAT_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "354"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x88

    .line 259
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x87

    sget v2, Lcom/lge/internal/R$string;->STR_res_MOROCCO_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "604"

    const-string v4, "212"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x89

    .line 260
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x88

    sget v2, Lcom/lge/internal/R$string;->STR_res_MOZAMBIQUE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "643"

    const-string v4, "258"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8a

    .line 261
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x89

    sget v2, Lcom/lge/internal/R$string;->STR_res_MYANMAR_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "414"

    const-string v4, "95"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8b

    .line 262
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8a

    sget v2, Lcom/lge/internal/R$string;->STR_res_NAMIBIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "649"

    const-string v4, "264"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8c

    .line 263
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8b

    sget v2, Lcom/lge/internal/R$string;->STR_res_NAURU_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "536"

    const-string v4, "674"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8d

    .line 264
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8c

    sget v2, Lcom/lge/internal/R$string;->STR_res_NEPAL_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "429"

    const-string v4, "977"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8e

    .line 265
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8d

    sget v2, Lcom/lge/internal/R$string;->STR_res_NETHERLANDS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "204"

    const-string v4, "31"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8f

    .line 266
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8e

    sget v2, Lcom/lge/internal/R$string;->STR_res_NETHERLANDASANTILLES_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "362"

    const-string v4, "599"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x90

    .line 267
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x8f

    sget v2, Lcom/lge/internal/R$string;->STR_res_NEWCALEDONIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "546"

    const-string v4, "687"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x91

    .line 268
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x90

    sget v2, Lcom/lge/internal/R$string;->STR_res_NEWZEALAND_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "530"

    const-string v4, "64"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x92

    .line 269
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x91

    sget v2, Lcom/lge/internal/R$string;->STR_res_NICARAGUA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "710"

    const-string v4, "505"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x93

    .line 270
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x92

    sget v2, Lcom/lge/internal/R$string;->STR_res_NIGER_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "614"

    const-string v4, "227"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x94

    .line 271
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x93

    sget v2, Lcom/lge/internal/R$string;->STR_res_NIGERIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "621"

    const-string v4, "234"

    const-string v5, "009"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x95

    .line 272
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x94

    sget v2, Lcom/lge/internal/R$string;->STR_res_NORTHERNMARIANAISLD_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "534"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x96

    .line 273
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x95

    sget v2, Lcom/lge/internal/R$string;->STR_res_NORWAY_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "242"

    const-string v4, "47"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x97

    .line 274
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x96

    sget v2, Lcom/lge/internal/R$string;->STR_res_OMAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "422"

    const-string v4, "968"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x98

    .line 275
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x97

    sget v2, Lcom/lge/internal/R$string;->STR_res_PAKISTAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "410"

    const-string v4, "92"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x99

    .line 276
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x98

    sget v2, Lcom/lge/internal/R$string;->STR_res_PALAU_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "552"

    const-string v4, "680"

    const-string v5, "11"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9a

    .line 277
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x99

    sget v2, Lcom/lge/internal/R$string;->STR_res_PANAMA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "714"

    const-string v4, "507"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9b

    .line 278
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9a

    sget v2, Lcom/lge/internal/R$string;->STR_res_PAPUANEWGUINEA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "537"

    const-string v4, "675"

    const-string v5, "5"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9c

    .line 279
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9b

    sget v2, Lcom/lge/internal/R$string;->STR_res_PARAGUAY_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "744"

    const-string v4, "595"

    const-string v5, "2"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9d

    .line 280
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9c

    sget v2, Lcom/lge/internal/R$string;->STR_res_PERU_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "716"

    const-string v4, "51"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9e

    .line 281
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9d

    sget v2, Lcom/lge/internal/R$string;->STR_res_PHILIPPINESS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "515"

    const-string v4, "63"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9f

    .line 282
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9e

    sget v2, Lcom/lge/internal/R$string;->STR_res_POLAND_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "260"

    const-string v4, "48"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa0

    .line 283
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0x9f

    sget v2, Lcom/lge/internal/R$string;->STR_res_PORTUGAL_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "268"

    const-string v4, "351"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa1

    .line 284
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa0

    sget v2, Lcom/lge/internal/R$string;->STR_res_PUERTORICO_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "330"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa2

    .line 285
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa1

    sget v2, Lcom/lge/internal/R$string;->STR_res_QATAR_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "427"

    const-string v4, "974"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa3

    .line 286
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa2

    sget v2, Lcom/lge/internal/R$string;->STR_res_REMACEDONIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "294"

    const-string v4, "389"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa4

    .line 287
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa3

    sget v2, Lcom/lge/internal/R$string;->STR_res_RECONGO_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "629"

    const-string v4, "242"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa5

    .line 288
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa4

    sget v2, Lcom/lge/internal/R$string;->STR_res_REUNION_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "647"

    const-string v4, "262"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa6

    .line 289
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa5

    sget v2, Lcom/lge/internal/R$string;->STR_res_ROMANIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "226"

    const-string v4, "40"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa7

    .line 290
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa6

    sget v2, Lcom/lge/internal/R$string;->STR_res_RUSSIANFEDERATION_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "250"

    const-string v4, "7"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa8

    .line 291
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa7

    sget v2, Lcom/lge/internal/R$string;->STR_res_RWANDESEREPUBLIC_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "635"

    const-string v4, "250"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa9

    .line 292
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa8

    sget v2, Lcom/lge/internal/R$string;->STR_res_SAINTKITTS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "356"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xaa

    .line 293
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xa9

    sget v2, Lcom/lge/internal/R$string;->STR_res_SAINTLUCIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "358"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xab

    .line 294
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xaa

    sget v2, Lcom/lge/internal/R$string;->STR_res_SAINTPIERRE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "308"

    const-string v4, "508"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xac

    .line 295
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xab

    sget v2, Lcom/lge/internal/R$string;->STR_res_SAINTVINCENT_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "360"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xad

    .line 296
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xac

    sget v2, Lcom/lge/internal/R$string;->STR_res_SAMOA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "549"

    const-string v4, "685"

    const-string v5, "0"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xae

    .line 297
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xad

    sget v2, Lcom/lge/internal/R$string;->STR_res_SANMARINO_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "292"

    const-string v4, "378"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xaf

    .line 298
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xae

    sget v2, Lcom/lge/internal/R$string;->STR_res_SAOTOME_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "626"

    const-string v4, "239"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb0

    .line 299
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xaf

    sget v2, Lcom/lge/internal/R$string;->STR_res_SAUDIARABIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "420"

    const-string v4, "966"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb1

    .line 300
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb0

    sget v2, Lcom/lge/internal/R$string;->STR_res_SENEGAL_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "608"

    const-string v4, "221"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb2

    .line 301
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb1

    sget v2, Lcom/lge/internal/R$string;->STR_res_SERBIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "220"

    const-string v4, "381"

    const-string v5, "99"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb3

    .line 302
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb2

    sget v2, Lcom/lge/internal/R$string;->STR_res_SEYCHELLES_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "633"

    const-string v4, "248"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb4

    .line 303
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb3

    sget v2, Lcom/lge/internal/R$string;->STR_res_SIERRALEONE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "619"

    const-string v4, "232"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb5

    .line 304
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb4

    sget v2, Lcom/lge/internal/R$string;->STR_res_SINGAPORE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "525"

    const-string v4, "65"

    const-string v5, "001"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb6

    .line 305
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb5

    sget v2, Lcom/lge/internal/R$string;->STR_res_SLOVAKIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "231"

    const-string v4, "421"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb7

    .line 306
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb6

    sget v2, Lcom/lge/internal/R$string;->STR_res_SLOVENIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "293"

    const-string v4, "386"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb8

    .line 307
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb7

    sget v2, Lcom/lge/internal/R$string;->STR_res_SOLOMONISLANDS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "540"

    const-string v4, "677"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb9

    .line 308
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb8

    sget v2, Lcom/lge/internal/R$string;->STR_res_SOMALIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "637"

    const-string v4, "252"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xba

    .line 309
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xb9

    sget v2, Lcom/lge/internal/R$string;->STR_res_SOUTHAFRICA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "655"

    const-string v4, "27"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbb

    .line 310
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xba

    sget v2, Lcom/lge/internal/R$string;->STR_res_SPAIN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "214"

    const-string v4, "34"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbc

    .line 311
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xbb

    sget v2, Lcom/lge/internal/R$string;->STR_res_SRILANKA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "413"

    const-string v4, "94"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbd

    .line 312
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xbc

    sget v2, Lcom/lge/internal/R$string;->STR_res_SUDAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "634"

    const-string v4, "249"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbe

    .line 313
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xbd

    sget v2, Lcom/lge/internal/R$string;->STR_res_SURINAME_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "746"

    const-string v4, "597"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbf

    .line 314
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xbe

    sget v2, Lcom/lge/internal/R$string;->STR_res_SWAZILAND_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "653"

    const-string v4, "268"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc0

    .line 315
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xbf

    sget v2, Lcom/lge/internal/R$string;->STR_res_SWEDEN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "240"

    const-string v4, "46"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc1

    .line 316
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc0

    sget v2, Lcom/lge/internal/R$string;->STR_res_SWITZERLAND_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "228"

    const-string v4, "41"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc2

    .line 317
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc1

    sget v2, Lcom/lge/internal/R$string;->STR_res_SYRIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "417"

    const-string v4, "963"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc3

    .line 318
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc2

    sget v2, Lcom/lge/internal/R$string;->STR_res_TAIWAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "466"

    const-string v4, "886"

    const-string v5, "002"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc4

    .line 319
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc3

    sget v2, Lcom/lge/internal/R$string;->STR_res_TAJIKISTAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "436"

    const-string v4, "992"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc5

    .line 320
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc4

    sget v2, Lcom/lge/internal/R$string;->STR_res_TANZANIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "640"

    const-string v4, "255"

    const-string v5, "000"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc6

    .line 321
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc5

    sget v2, Lcom/lge/internal/R$string;->STR_res_THAILAND_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "520"

    const-string v4, "66"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc7

    .line 322
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc6

    sget v2, Lcom/lge/internal/R$string;->STR_res_TOGOLESSREPUBLIC_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "615"

    const-string v4, "228"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc8

    .line 323
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc7

    sget v2, Lcom/lge/internal/R$string;->STR_res_TONGA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "539"

    const-string v4, "676"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc9

    .line 324
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc8

    sget v2, Lcom/lge/internal/R$string;->STR_res_TRINIDADANDTOBAGO_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "374"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xca

    .line 325
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xc9

    sget v2, Lcom/lge/internal/R$string;->STR_res_TUNISIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "605"

    const-string v4, "216"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcb

    .line 326
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xca

    sget v2, Lcom/lge/internal/R$string;->STR_res_TURKEY_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "286"

    const-string v4, "90"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcc

    .line 327
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xcb

    sget v2, Lcom/lge/internal/R$string;->STR_res_TURKMENISTAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "438"

    const-string v4, "993"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcd

    .line 328
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xcc

    sget v2, Lcom/lge/internal/R$string;->STR_res_TURKSANDCAICOS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "376"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xce

    .line 329
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xcd

    sget v2, Lcom/lge/internal/R$string;->STR_res_UGANDA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "641"

    const-string v4, "256"

    const-string v5, "000"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcf

    .line 330
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xce

    sget v2, Lcom/lge/internal/R$string;->STR_res_UKRAINE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "255"

    const-string v4, "380"

    const-string v5, "810"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd0

    .line 331
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xcf

    sget v2, Lcom/lge/internal/R$string;->STR_res_UNITEDARABEMIRATES2_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "424"

    const-string v4, "971"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd1

    .line 332
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd0

    sget v2, Lcom/lge/internal/R$string;->STR_res_ABUDHABI_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "430"

    const-string v4, "971"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd2

    .line 333
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd1

    sget v2, Lcom/lge/internal/R$string;->STR_res_UNITEDARABEMIRATES_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "431"

    const-string v4, "971"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd3

    .line 334
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd2

    sget v2, Lcom/lge/internal/R$string;->STR_res_UNITEDKINGDOM_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "234,235"

    const-string v4, "44"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd4

    .line 335
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd3

    sget v2, Lcom/lge/internal/R$string;->STR_res_USVIRGINISLANDS_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "332"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd5

    .line 336
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd4

    sget v2, Lcom/lge/internal/R$string;->STR_res_URUGUAY_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "748"

    const-string v4, "598"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd6

    .line 337
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd5

    sget v2, Lcom/lge/internal/R$string;->STR_res_UZBERKISTAN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "434"

    const-string v4, "998"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd7

    .line 338
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd6

    sget v2, Lcom/lge/internal/R$string;->STR_res_VANUATU_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "541"

    const-string v4, "678"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd8

    .line 339
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd7

    sget v2, Lcom/lge/internal/R$string;->STR_res_VATICANCITYSTATE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "225"

    const-string v4, "39"

    const-string v5, "00"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd9

    .line 340
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd8

    sget v2, Lcom/lge/internal/R$string;->STR_res_VENEZUELA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "734"

    const-string v4, "58"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xda

    .line 341
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xd9

    sget v2, Lcom/lge/internal/R$string;->STR_res_VIETNAM_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "452"

    const-string v4, "84"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xdb

    .line 342
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xda

    sget v2, Lcom/lge/internal/R$string;->STR_res_WALLISNADFUTUNA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "543"

    const-string v4, "681"

    const-string v5, "19"

    const-string v6, ""

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xdc

    .line 343
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xdb

    sget v2, Lcom/lge/internal/R$string;->STR_res_YEMEN_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "421"

    const-string v4, "967"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xdd

    .line 344
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xdc

    sget v2, Lcom/lge/internal/R$string;->STR_res_ZAMBIA_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "645"

    const-string v4, "260"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xde

    .line 345
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xdd

    sget v2, Lcom/lge/internal/R$string;->STR_res_ZIMBABWE_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "648"

    const-string v4, "263"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xdf

    .line 347
    new-instance v0, Lcom/lge/telephony/LGReferenceCountry;

    const/16 v1, 0xde

    sget v2, Lcom/lge/internal/R$string;->STR_res_NEWCOUNTRY_NORMAL:I

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1024"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "0"

    const-string v8, ""

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Lcom/lge/telephony/LGReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    .line 119
    sput-object v11, Lcom/lge/telephony/SettingsForAssistDial$AssistDial;->countryOriginDataTable:[Lcom/lge/telephony/LGReferenceCountry;

    .line 349
    return-void
.end method
