.class public Landroid/nfc/cardemulation/ApduServiceInfoNxp;
.super Ljava/lang/Object;
.source "ApduServiceInfoNxp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfoNxp;",
            ">;"
        }
    .end annotation
.end field

.field public static final POWER_STATE_BATTERY_OFF:I = 0x4

.field public static final POWER_STATE_SWITCH_OFF:I = 0x2

.field public static final POWER_STATE_SWITCH_ON:I = 0x1

.field public static final SECURE_ELEMENT_ESE:Ljava/lang/String; = "eSE"

.field public static final SECURE_ELEMENT_ROUTE_ALL:I = 0x3

.field public static final SECURE_ELEMENT_ROUTE_ESE:I = 0x1

.field public static final SECURE_ELEMENT_ROUTE_HOST:I = 0x0

.field public static final SECURE_ELEMENT_ROUTE_UICC:I = 0x2

.field public static final SECURE_ELEMENT_UICC:Ljava/lang/String; = "UICC"

.field static final TAG:Ljava/lang/String; = "ApduServiceInfoNxp"


# instance fields
.field final mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 161
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$1;-><init>()V

    .line 160
    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfoNxp;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .registers 17
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget-object v8, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 73
    .local v8, "si":Landroid/content/pm/ServiceInfo;
    const/4 v3, 0x0

    .line 74
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 76
    .local v2, "nxpParser":Landroid/content/res/XmlResourceParser;
    if-eqz p3, :cond_13

    .line 77
    new-instance v10, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;-><init>(II)V

    iput-object v10, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    .line 143
    :goto_12
    return-void

    .line 81
    :cond_13
    const-string v10, "android.nfc.cardemulation.host_apdu_service"

    invoke-virtual {v8, p1, v10}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 82
    const-string v10, "com.nxp.nfc.extensions"

    invoke-virtual {v8, p1, v10}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 83
    if-nez v3, :cond_60

    .line 84
    const-string v10, "ApduServiceInfoNxp"

    const-string v11, "No com.nxp.nfc.extensions meta-data"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_28
    if-eqz v2, :cond_136

    .line 93
    :try_start_2a
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 94
    .local v1, "eventType":I
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 95
    .local v0, "depth":I
    const/4 v7, 0x0

    .line 96
    .local v7, "seName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 98
    .local v5, "powerState":I
    :goto_34
    const/4 v10, 0x2

    if-eq v1, v10, :cond_3a

    const/4 v10, 0x1

    if-ne v1, v10, :cond_64

    .line 101
    :cond_3a
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "tagName":Ljava/lang/String;
    const-string v10, "extensions"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_dc

    .line 103
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Meta-data does not start with <extensions> tag "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 103
    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5b
    .catchall {:try_start_2a .. :try_end_5b} :catchall_5b

    .line 137
    .end local v0    # "depth":I
    .end local v1    # "eventType":I
    .end local v5    # "powerState":I
    .end local v7    # "seName":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    :catchall_5b
    move-exception v10

    .line 138
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 139
    throw v10

    .line 86
    :cond_60
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_28

    .line 99
    .restart local v0    # "depth":I
    .restart local v1    # "eventType":I
    .restart local v5    # "powerState":I
    .restart local v7    # "seName":Ljava/lang/String;
    :cond_64
    :try_start_64
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_34

    .line 108
    .restart local v9    # "tagName":Ljava/lang/String;
    :cond_69
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 110
    const-string v10, "nxp-se-ext-group"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_dc

    .line 112
    const/4 v10, 0x2

    if-ne v1, v10, :cond_ae

    const-string v10, "se-id"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ae

    .line 114
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v2, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 115
    if-eqz v7, :cond_99

    const-string v10, "eSE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_dc

    const-string v10, "UICC"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_dc

    .line 116
    :cond_99
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unsupported se name: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 118
    :cond_ae
    const/4 v10, 0x2

    if-ne v1, v10, :cond_dc

    const-string v10, "se-power-state"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_dc

    .line 120
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v2, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "powerName":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {v2, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10e

    const/4 v6, 0x1

    .line 122
    .local v6, "powerValue":Z
    :goto_d0
    const-string v10, "SwitchOn"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_110

    if-eqz v6, :cond_110

    .line 123
    or-int/lit8 v5, v5, 0x1

    .line 106
    .end local v4    # "powerName":Ljava/lang/String;
    .end local v6    # "powerValue":Z
    :cond_dc
    :goto_dc
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v10, 0x3

    if-ne v1, v10, :cond_e9

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v0, :cond_ec

    .line 107
    :cond_e9
    const/4 v10, 0x1

    if-ne v1, v10, :cond_69

    .line 131
    :cond_ec
    if-eqz v7, :cond_12c

    .line 132
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    const-string v10, "eSE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12a

    const/4 v10, 0x1

    :goto_f9
    invoke-direct {v11, v10, v5}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;-><init>(II)V

    iput-object v11, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    .line 133
    const-string v10, "ApduServiceInfoNxp"

    iget-object v11, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    invoke-virtual {v11}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catchall {:try_start_64 .. :try_end_109} :catchall_5b

    .line 138
    :goto_109
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_12

    .line 121
    .restart local v4    # "powerName":Ljava/lang/String;
    :cond_10e
    const/4 v6, 0x0

    goto :goto_d0

    .line 124
    .restart local v6    # "powerValue":Z
    :cond_110
    :try_start_110
    const-string v10, "SwitchOff"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11d

    if-eqz v6, :cond_11d

    .line 125
    or-int/lit8 v5, v5, 0x2

    .line 126
    goto :goto_dc

    :cond_11d
    const-string v10, "BatteryOff"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_dc

    if-eqz v6, :cond_dc

    .line 127
    or-int/lit8 v5, v5, 0x4

    goto :goto_dc

    .line 132
    .end local v4    # "powerName":Ljava/lang/String;
    .end local v6    # "powerValue":Z
    :cond_12a
    const/4 v10, 0x2

    goto :goto_f9

    .line 135
    :cond_12c
    new-instance v10, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;-><init>(II)V

    iput-object v10, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    :try_end_135
    .catchall {:try_start_110 .. :try_end_135} :catchall_5b

    goto :goto_109

    .line 141
    .end local v0    # "depth":I
    .end local v1    # "eventType":I
    .end local v5    # "powerState":I
    .end local v7    # "seName":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_136
    new-instance v10, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;-><init>(II)V

    iput-object v10, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    goto/16 :goto_12
.end method

.method public constructor <init>(Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;)V
    .registers 2
    .param p1, "seExtension"    # Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 151
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    return-void
.end method
