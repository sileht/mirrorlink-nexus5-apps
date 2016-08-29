.class public Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
.super Lcom/lge/mirrorlink/common/XMLElement;
.source "ClientProfile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field public clientID:Ljava/lang/String;

.field public connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

.field public contentRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;",
            ">;"
        }
    .end annotation
.end field

.field public friendlyName:Ljava/lang/String;

.field public iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

.field public majorVersion:I

.field public manufacturer:Ljava/lang/String;

.field public minorVersion:I

.field public modelName:Ljava/lang/String;

.field public modelNumber:Ljava/lang/String;

.field public rtpStreaming:Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

.field public services_notification:Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/lge/mirrorlink/common/XMLElement;-><init>()V

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->clientID:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->friendlyName:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->manufacturer:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelName:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelNumber:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    .line 28
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    .line 29
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->rtpStreaming:Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    .line 30
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->contentRules:Ljava/util/List;

    .line 31
    iput-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->services_notification:Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;

    .line 32
    iput v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->majorVersion:I

    .line 33
    iput v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->minorVersion:I

    .line 15
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
    .line 39
    invoke-super {p0}, Lcom/lge/mirrorlink/common/XMLElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .line 41
    .local v0, "cloned":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    if-eqz v1, :cond_14

    .line 42
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    iput-object v1, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    .line 45
    :cond_14
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    if-eqz v1, :cond_22

    .line 46
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    iput-object v1, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    .line 49
    :cond_22
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->rtpStreaming:Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    if-eqz v1, :cond_30

    .line 50
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->rtpStreaming:Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    iput-object v1, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->rtpStreaming:Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    .line 53
    :cond_30
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->contentRules:Ljava/util/List;

    if-eqz v1, :cond_3d

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->contentRules:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->contentRules:Ljava/util/List;

    .line 57
    :cond_3d
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->services_notification:Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;

    if-eqz v1, :cond_4b

    .line 58
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->services_notification:Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;

    iput-object v1, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->services_notification:Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;

    .line 61
    :cond_4b
    return-object v0
.end method

.method public fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 14
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 78
    :try_start_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 79
    .local v3, "eventType":I
    :goto_6
    if-eq v3, v11, :cond_19e

    .line 80
    if-nez v3, :cond_f

    .line 150
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_6

    .line 82
    :cond_f
    if-eq v3, v11, :cond_a

    .line 84
    const/4 v8, 0x2

    if-ne v3, v8, :cond_188

    .line 87
    const-string/jumbo v8, "clientID"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 88
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->clientID:Ljava/lang/String;
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27} :catch_47

    goto :goto_a

    .line 152
    .end local v3    # "eventType":I
    :catch_28
    move-exception v1

    .line 153
    .local v1, "e1":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v8, "MirrorLink_UPnP"

    const-string/jumbo v9, "ClientProfile.fromXML : XmlPullParserException"

    invoke-static {v8, v9, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    return v10

    .line 89
    .end local v1    # "e1":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "eventType":I
    :cond_33
    :try_start_33
    const-string/jumbo v8, "friendlyName"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 90
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->friendlyName:Ljava/lang/String;
    :try_end_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_46} :catch_28
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_46} :catch_47

    goto :goto_a

    .line 155
    .end local v3    # "eventType":I
    :catch_47
    move-exception v2

    .line 156
    .local v2, "e2":Ljava/io/IOException;
    const-string/jumbo v8, "MirrorLink_UPnP"

    const-string/jumbo v9, "ClientProfile.fromXML : IOException"

    invoke-static {v8, v9, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    return v10

    .line 91
    .end local v2    # "e2":Ljava/io/IOException;
    .restart local v3    # "eventType":I
    :cond_52
    :try_start_52
    const-string/jumbo v8, "manufacturer"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->manufacturer:Ljava/lang/String;

    goto :goto_a

    .line 93
    :cond_66
    const-string/jumbo v8, "modelName"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelName:Ljava/lang/String;

    goto :goto_a

    .line 95
    :cond_7a
    const-string/jumbo v8, "modelNumber"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 96
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelNumber:Ljava/lang/String;

    goto/16 :goto_a

    .line 97
    :cond_8f
    const-string/jumbo v8, "iconPreference"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 98
    new-instance v8, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    invoke-direct {v8}, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;-><init>()V

    iput-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    .line 99
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    invoke-virtual {v8, p1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto/16 :goto_a

    .line 100
    :cond_aa
    const-string/jumbo v8, "connectivity"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 101
    new-instance v8, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    invoke-direct {v8}, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;-><init>()V

    iput-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    .line 102
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    invoke-virtual {v8, p1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto/16 :goto_a

    .line 103
    :cond_c5
    const-string/jumbo v8, "rtpStreaming"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 104
    new-instance v8, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    invoke-direct {v8}, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;-><init>()V

    iput-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->rtpStreaming:Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    .line 105
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->rtpStreaming:Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    invoke-virtual {v8, p1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto/16 :goto_a

    .line 106
    :cond_e0
    const-string/jumbo v8, "contentRules"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_111

    .line 107
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->contentRules:Ljava/util/List;

    .line 108
    new-instance v6, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;

    invoke-direct {v6}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;-><init>()V

    .line 109
    .local v6, "rule":Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;
    const/4 v0, 0x0

    .line 111
    :goto_fa
    invoke-virtual {v6, p1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    .line 112
    .local v0, "bParsed":Z
    if-eqz v0, :cond_10e

    .line 113
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->contentRules:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v6, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;

    .end local v6    # "rule":Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;
    invoke-direct {v6}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;-><init>()V

    .line 115
    .restart local v6    # "rule":Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 117
    :cond_10e
    if-eqz v0, :cond_a

    goto :goto_fa

    .line 119
    .end local v0    # "bParsed":Z
    .end local v6    # "rule":Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;
    :cond_111
    const-string/jumbo v8, "services"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12d

    .line 120
    new-instance v5, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;

    invoke-direct {v5}, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;-><init>()V

    .line 121
    .local v5, "notification":Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;
    invoke-virtual {v5, p1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 122
    iput-object v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->services_notification:Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;

    goto/16 :goto_a

    .line 124
    .end local v5    # "notification":Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;
    :cond_12d
    const-string/jumbo v8, "mirrorLinkVersion"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 125
    const-string/jumbo v8, "majorVersion"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_161

    .line 126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_14a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_14a} :catch_28
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_14a} :catch_47

    move-result-object v7

    .line 128
    .local v7, "version":Ljava/lang/String;
    :try_start_14b
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->majorVersion:I
    :try_end_159
    .catch Ljava/lang/NumberFormatException; {:try_start_14b .. :try_end_159} :catch_15b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14b .. :try_end_159} :catch_28
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_159} :catch_47

    goto/16 :goto_a

    .line 129
    :catch_15b
    move-exception v4

    .line 130
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    :try_start_15d
    iput v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->majorVersion:I

    goto/16 :goto_a

    .line 132
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .end local v7    # "version":Ljava/lang/String;
    :cond_161
    const-string/jumbo v8, "minorVersion"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_171
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15d .. :try_end_171} :catch_28
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_171} :catch_47

    move-result-object v7

    .line 135
    .restart local v7    # "version":Ljava/lang/String;
    :try_start_172
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->minorVersion:I
    :try_end_180
    .catch Ljava/lang/NumberFormatException; {:try_start_172 .. :try_end_180} :catch_182
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_172 .. :try_end_180} :catch_28
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_180} :catch_47

    goto/16 :goto_a

    .line 136
    :catch_182
    move-exception v4

    .line 137
    .restart local v4    # "nfe":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    :try_start_184
    iput v8, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->minorVersion:I

    goto/16 :goto_a

    .line 140
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .end local v7    # "version":Ljava/lang/String;
    :cond_188
    const/4 v8, 0x3

    if-ne v3, v8, :cond_199

    .line 142
    const-string/jumbo v8, "clientProfile"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_184 .. :try_end_195} :catch_28
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_195} :catch_47

    move-result v8

    if-eqz v8, :cond_a

    .line 143
    return v11

    .line 145
    :cond_199
    const/4 v8, 0x4

    if-ne v3, v8, :cond_a

    goto/16 :goto_a

    .line 160
    :cond_19e
    return v10
.end method

.method public getRTPPayloadType()Ljava/lang/Integer;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->rtpStreaming:Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    if-eqz v1, :cond_21

    .line 243
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->rtpStreaming:Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    iget-object v0, v1, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->mPayloadType:Ljava/util/List;

    .line 245
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef;->payloadtype_99:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 246
    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef;->payloadtype_99:Ljava/lang/Integer;

    return-object v1

    .line 249
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 250
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    return-object v1

    .line 254
    .end local v0    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_21
    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef;->payloadtype_99:Ljava/lang/Integer;

    return-object v1
.end method

.method public hasRequiredElements()Z
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->clientID:Ljava/lang/String;

    invoke-static {v0}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 68
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->hasRequiredElements()Z

    move-result v3

    if-nez v3, :cond_a

    .line 166
    const-string/jumbo v3, ""

    return-object v3

    .line 169
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    .local v2, "strXML":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "<clientProfile>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string/jumbo v3, "<clientID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->clientID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</clientID>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->friendlyName:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 176
    const-string/jumbo v3, "<friendlyName>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->friendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string/jumbo v3, "</friendlyName>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_43
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->manufacturer:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 182
    const-string/jumbo v3, "<manufacturer>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v3, "</manufacturer>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_5c
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelName:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 188
    const-string/jumbo v3, "<modelName>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string/jumbo v3, "</modelName>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_75
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 194
    const-string/jumbo v3, "<modelNumber>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v3, "</modelNumber>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_8e
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    if-eqz v3, :cond_9b

    .line 200
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_9b
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    if-eqz v3, :cond_a8

    .line 204
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_a8
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->rtpStreaming:Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    if-eqz v3, :cond_b5

    .line 208
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->rtpStreaming:Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/clientprofile/types/RTPStreaming;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_b5
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->contentRules:Ljava/util/List;

    if-eqz v3, :cond_e7

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->contentRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e7

    .line 212
    const-string/jumbo v3, "<contentRules>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->contentRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rule$iterator":Ljava/util/Iterator;
    :goto_cd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;

    .line 214
    .local v0, "rule":Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cd

    .line 216
    .end local v0    # "rule":Lcom/lge/mirrorlink/upnp/clientprofile/types/ContentRule;
    :cond_e1
    const-string/jumbo v3, "</contentRules>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .end local v1    # "rule$iterator":Ljava/util/Iterator;
    :cond_e7
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->services_notification:Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;

    if-eqz v3, :cond_100

    .line 220
    const-string/jumbo v3, "<services>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->services_notification:Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/clientprofile/types/Notification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string/jumbo v3, "</services>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_100
    const-string/jumbo v3, "<mirrorLinkVersion>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string/jumbo v3, "<majorVersion>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->majorVersion:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string/jumbo v3, "</majorVersion>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string/jumbo v3, "<minorVersion>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->minorVersion:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string/jumbo v3, "</minorVersion>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string/jumbo v3, "</mirrorLinkVersion>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v3, "</clientProfile>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
