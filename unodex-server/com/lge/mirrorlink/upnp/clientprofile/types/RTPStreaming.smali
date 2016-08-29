.class public Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "RTPStreaming.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field audioIPL:I

.field audioMPL:I

.field mPayloadType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 21
    sget-object v0, Lcom/lge/mirrorlink/MirrorLinkConfig;->RTP_PAYLOAD_TYPES:Ljava/util/List;

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->mPayloadType:Ljava/util/List;

    .line 22
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->audioIPL:I

    .line 23
    const/16 v0, 0x2580

    iput v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->audioMPL:I

    .line 16
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Lcom/lge/mirrorlink/common/XMLElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    .line 31
    .local v0, "cloned":Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->mPayloadType:Ljava/util/List;

    if-eqz v1, :cond_13

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->mPayloadType:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->mPayloadType:Ljava/util/List;

    .line 35
    :cond_13
    return-object v0
.end method

.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 16
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 41
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 42
    .local v2, "eventType":I
    :goto_6
    if-eq v2, v13, :cond_11e

    .line 43
    if-nez v2, :cond_f

    .line 94
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_6

    .line 45
    :cond_f
    if-eq v2, v13, :cond_a

    .line 47
    const/4 v9, 0x2

    if-ne v2, v9, :cond_108

    .line 49
    const-string/jumbo v9, "payloadType"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "payloadTypeStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/mirrorlink/common/StringUtil;->CommaSeparatedStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 52
    .local v5, "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 54
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->mPayloadType:Ljava/util/List;

    .line 55
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "typeStr$iterator":Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_46} :catch_72
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_46} :catch_bd

    .line 56
    .local v7, "typeStr":Ljava/lang/String;
    if-eqz v7, :cond_3a

    .line 58
    :try_start_48
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->mPayloadType:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_55} :catch_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_55} :catch_72
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_55} :catch_bd

    goto :goto_3a

    .line 59
    :catch_56
    move-exception v3

    .line 60
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_57
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[RTPStreaming.fromXML] invalid payloadType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_71} :catch_72
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_71} :catch_bd

    goto :goto_3a

    .line 96
    .end local v2    # "eventType":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "payloadTypeStr":Ljava/lang/String;
    .end local v5    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "typeStr":Ljava/lang/String;
    .end local v8    # "typeStr$iterator":Ljava/util/Iterator;
    :catch_72
    move-exception v0

    .line 97
    .local v0, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "rtpStreaming.fromXML : XmlPullParserException"

    invoke-static {v9, v10, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return v12

    .line 65
    .end local v0    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventType":I
    :cond_7d
    :try_start_7d
    const-string/jumbo v9, "audioIPL"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_8d} :catch_72
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8d} :catch_bd

    move-result-object v6

    .line 67
    .local v6, "text":Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 69
    :try_start_90
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->audioIPL:I
    :try_end_9e
    .catch Ljava/lang/NumberFormatException; {:try_start_90 .. :try_end_9e} :catch_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_90 .. :try_end_9e} :catch_72
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9e} :catch_bd

    goto/16 :goto_a

    .line 70
    :catch_a0
    move-exception v3

    .line 71
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_a1
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[RTPStreaming.fromXML] invalid audioIPL : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a1 .. :try_end_bb} :catch_72
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_bb} :catch_bd

    goto/16 :goto_a

    .line 99
    .end local v2    # "eventType":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "text":Ljava/lang/String;
    :catch_bd
    move-exception v1

    .line 100
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "rtpStreaming.fromXML : IOException"

    invoke-static {v9, v10, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    return v12

    .line 74
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    :cond_c8
    :try_start_c8
    const-string/jumbo v9, "audioMPL"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c8 .. :try_end_d8} :catch_72
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d8} :catch_bd

    move-result-object v6

    .line 76
    .restart local v6    # "text":Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 78
    :try_start_db
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->audioMPL:I
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_db .. :try_end_e9} :catch_eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_db .. :try_end_e9} :catch_72
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e9} :catch_bd

    goto/16 :goto_a

    .line 79
    :catch_eb
    move-exception v3

    .line 80
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_ec
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[RTPStreaming.fromXML] invalid audioMPL : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 84
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v6    # "text":Ljava/lang/String;
    :cond_108
    const/4 v9, 0x3

    if-ne v2, v9, :cond_119

    .line 86
    const-string/jumbo v9, "rtpStreaming"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_115
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ec .. :try_end_115} :catch_72
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_115} :catch_bd

    move-result v9

    if-eqz v9, :cond_a

    .line 87
    return v13

    .line 89
    :cond_119
    const/4 v9, 0x4

    if-ne v2, v9, :cond_a

    goto/16 :goto_a

    .line 104
    :cond_11e
    return v12
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->hasRequiredElements()Z

    move-result v2

    if-nez v2, :cond_b

    .line 110
    const-string/jumbo v2, ""

    return-object v2

    .line 113
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v1, "strXML":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->mPayloadType:Ljava/util/List;

    invoke-static {v2}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "commaSeparatedStr":Ljava/lang/String;
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2d

    .line 117
    const-string/jumbo v2, "<payloadType>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v2, "</payloadType>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_2d
    iget v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->audioIPL:I

    if-lez v2, :cond_44

    .line 123
    const-string/jumbo v2, "<audioIPL>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->audioIPL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</audioIPL>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_44
    iget v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->audioMPL:I

    if-lez v2, :cond_5b

    .line 127
    const-string/jumbo v2, "<audioMPL>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->audioMPL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</audioMPL>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6d

    .line 132
    const-string/jumbo v2, "<rtpStreaming>\n"

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v2, "</rtpStreaming>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
