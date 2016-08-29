.class public Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "RemotingInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field audioIPL:I

.field audioMPL:I

.field direction:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

.field format:Ljava/lang/String;

.field protocolID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 29
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 21
    const-string/jumbo v0, "VNC"

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->protocolID:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->format:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->direction:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    .line 26
    iput v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioIPL:I

    .line 27
    iput v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioMPL:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "protocolID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 50
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 21
    const-string/jumbo v0, "VNC"

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->protocolID:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->format:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->direction:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    .line 26
    iput v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioIPL:I

    .line 27
    iput v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioMPL:I

    .line 52
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->protocolID:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0}, Lcom/lge/mirrorlink/common/XMLElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;

    .line 41
    .local v0, "cloned":Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->protocolID:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->protocolID:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->format:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->format:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->direction:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    iput-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->direction:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    .line 44
    iget v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioIPL:I

    iput v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioIPL:I

    .line 45
    iget v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioMPL:I

    iput v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioMPL:I

    .line 47
    return-object v0
.end method

.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 12
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 112
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 113
    .local v2, "eventType":I
    :goto_6
    if-eq v2, v9, :cond_106

    .line 114
    if-nez v2, :cond_f

    .line 166
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_6

    .line 116
    :cond_f
    if-eq v2, v9, :cond_a

    .line 118
    const/4 v5, 0x2

    if-ne v2, v5, :cond_f0

    .line 121
    const-string/jumbo v5, "protocolID"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 122
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->protocolID:Ljava/lang/String;
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27} :catch_47

    goto :goto_a

    .line 168
    .end local v2    # "eventType":I
    :catch_28
    move-exception v0

    .line 169
    .local v0, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "RemotingInfofromXML : XmlPullParserException"

    invoke-static {v5, v6, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    return v8

    .line 123
    .end local v0    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventType":I
    :cond_33
    :try_start_33
    const-string/jumbo v5, "format"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 124
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->format:Ljava/lang/String;
    :try_end_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_46} :catch_28
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_46} :catch_47

    goto :goto_a

    .line 171
    .end local v2    # "eventType":I
    :catch_47
    move-exception v1

    .line 172
    .local v1, "e2":Ljava/io/IOException;
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "RemotingInfo.fromXML : IOException"

    invoke-static {v5, v6, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    return v8

    .line 125
    .end local v1    # "e2":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    :cond_52
    :try_start_52
    const-string/jumbo v5, "direction"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/mirrorlink/common/StringUtil;->trimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 129
    invoke-static {v4}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;->valueOf(Ljava/lang/String;)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->direction:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    goto :goto_a

    .line 135
    .end local v4    # "text":Ljava/lang/String;
    :cond_70
    const-string/jumbo v5, "audioIPL"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 136
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_80
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_80} :catch_28
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_80} :catch_47

    move-result-object v4

    .line 137
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 139
    :try_start_83
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioIPL:I
    :try_end_91
    .catch Ljava/lang/NumberFormatException; {:try_start_83 .. :try_end_91} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_91} :catch_28
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_91} :catch_47

    goto/16 :goto_a

    .line 140
    :catch_93
    move-exception v3

    .line 141
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_94
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[RemotingInfo.fromXML] invalid audioIPL : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 145
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_b0
    const-string/jumbo v5, "audioMPL"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_94 .. :try_end_c0} :catch_28
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_c0} :catch_47

    move-result-object v4

    .line 147
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 149
    :try_start_c3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioMPL:I
    :try_end_d1
    .catch Ljava/lang/NumberFormatException; {:try_start_c3 .. :try_end_d1} :catch_d3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c3 .. :try_end_d1} :catch_28
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_d1} :catch_47

    goto/16 :goto_a

    .line 150
    :catch_d3
    move-exception v3

    .line 151
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    :try_start_d4
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[RemotingInfo.fromXML] invalid audioMPL : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 156
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    :cond_f0
    const/4 v5, 0x3

    if-ne v2, v5, :cond_101

    .line 158
    const-string/jumbo v5, "remotingInfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_fd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d4 .. :try_end_fd} :catch_28
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_fd} :catch_47

    move-result v5

    if-eqz v5, :cond_a

    .line 159
    return v9

    .line 161
    :cond_101
    const/4 v5, 0x4

    if-ne v2, v5, :cond_a

    goto/16 :goto_a

    .line 176
    :cond_106
    return v8
.end method

.method public hasRequiredElements()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->protocolID:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->protocolID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 101
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_f
    return v1
.end method

.method public makeXMLString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->hasRequiredElements()Z

    move-result v1

    if-nez v1, :cond_14

    .line 183
    const-string/jumbo v1, "MirrorLink_UPnP"

    const-string/jumbo v2, "[RemotingInfo.toString] invalid, required element missing"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v1, ""

    return-object v1

    .line 187
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v0, "strXML":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<protocolID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->protocolID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</protocolID>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->format:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 193
    const-string/jumbo v1, "<format>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</format>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_43
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->direction:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    if-eqz v1, :cond_5a

    .line 197
    const-string/jumbo v1, "<direction>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->direction:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</direction>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_5a
    iget v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioIPL:I

    if-ltz v1, :cond_71

    .line 201
    const-string/jumbo v1, "<audioIPL>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioIPL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</audioIPL>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_71
    iget v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioMPL:I

    if-ltz v1, :cond_88

    .line 205
    const-string/jumbo v1, "<audioMPL>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioMPL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</audioMPL>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9a

    .line 209
    const-string/jumbo v1, "<remotingInfo>\n"

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string/jumbo v1, "</remotingInfo>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 63
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 64
    :cond_6
    return v4

    .line 68
    :cond_7
    :try_start_7
    const-string/jumbo v1, "remotingInfo@protocolID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 69
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->protocolID:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 70
    return v2

    .line 72
    :cond_19
    const-string/jumbo v1, "remotingInfo@format"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 73
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->format:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 74
    return v2

    .line 76
    :cond_2b
    return v2

    .line 77
    :cond_2c
    const-string/jumbo v1, "remotingInfo@direction"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 78
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->direction:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->direction:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$AudioDirection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 79
    return v2

    .line 81
    :cond_46
    const-string/jumbo v1, "remotingInfo@audioIPL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 82
    iget v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioIPL:I

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 83
    return v2

    .line 85
    :cond_58
    const-string/jumbo v1, "remotingInfo@audioMPL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 86
    iget v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/types/RemotingInfo;->audioMPL:I

    invoke-static {v1, p2}, Lcom/lge/mirrorlink/common/StringUtil;->matchesFilter(ILjava/lang/String;)Z
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_66} :catch_6a

    move-result v1

    if-eqz v1, :cond_97

    .line 87
    return v2

    .line 90
    :catch_6a
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid AppListingFilter with \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_97
    return v4
.end method
