.class public Landroid/net/wifi/WifiSsidEx;
.super Ljava/lang/Object;
.source "WifiSsidEx.java"


# static fields
.field private static final HEX_RADIX:I = 0x10

.field private static final TAG:Ljava/lang/String; = "WifiSsidEx"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToBytes(Landroid/net/wifi/WifiSsid;Ljava/lang/String;)V
    .registers 11
    .param p0, "a"    # Landroid/net/wifi/WifiSsid;
    .param p1, "asciiEncoded"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x37

    const/16 v7, 0x30

    const/16 v6, 0x10

    .line 26
    const/4 v1, 0x0

    .line 27
    .local v1, "i":I
    const/4 v2, 0x0

    .line 28
    .local v2, "val":I
    :cond_8
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_f

    .line 123
    return-void

    .line 29
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 30
    .local v0, "c":C
    packed-switch v0, :pswitch_data_13e

    .line 118
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 32
    :pswitch_1e
    add-int/lit8 v1, v1, 0x1

    .line 35
    :try_start_20
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_23
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_23} :catch_32

    move-result v0

    .line 41
    sparse-switch v0, :sswitch_data_144

    goto :goto_8

    .line 47
    :sswitch_28
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_8

    .line 37
    :catch_32
    move-exception v3

    const-string v3, "WifiSsidEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "convertToBytes error = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 43
    :sswitch_56
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_8

    .line 51
    :sswitch_60
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_8

    .line 55
    :sswitch_6a
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_8

    .line 59
    :sswitch_74
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_8

    .line 63
    :sswitch_7e
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_8

    .line 67
    :sswitch_88
    add-int/lit8 v1, v1, 0x1

    .line 69
    add-int/lit8 v3, v1, 0x2

    :try_start_8c
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_8c .. :try_end_95} :catch_ab
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8c .. :try_end_95} :catch_ae

    move-result v2

    .line 77
    :goto_96
    if-gez v2, :cond_d3

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 79
    if-ltz v2, :cond_8

    .line 80
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto/16 :goto_8

    .line 71
    :catch_ab
    move-exception v3

    const/4 v2, -0x1

    goto :goto_96

    .line 74
    :catch_ae
    move-exception v3

    const-string v3, "WifiSsidEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "convertToBytes error = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 83
    :cond_d3
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    add-int/lit8 v1, v1, 0x2

    .line 86
    goto/16 :goto_8

    .line 97
    :sswitch_dc
    :try_start_dc
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v2, v3, -0x30

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_fb

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v8, :cond_fb

    .line 100
    mul-int/lit8 v3, v2, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x30

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 103
    :cond_fb
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_112

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v8, :cond_112

    .line 104
    mul-int/lit8 v3, v2, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, -0x30

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 107
    :cond_112
    iget-object v3, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_117
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_dc .. :try_end_117} :catch_119

    goto/16 :goto_8

    .line 109
    :catch_119
    move-exception v3

    const-string v3, "WifiSsidEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "convertToBytes error = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 30
    :pswitch_data_13e
    .packed-switch 0x5c
        :pswitch_1e
    .end packed-switch

    .line 41
    :sswitch_data_144
    .sparse-switch
        0x22 -> :sswitch_28
        0x30 -> :sswitch_dc
        0x31 -> :sswitch_dc
        0x32 -> :sswitch_dc
        0x33 -> :sswitch_dc
        0x34 -> :sswitch_dc
        0x35 -> :sswitch_dc
        0x36 -> :sswitch_dc
        0x37 -> :sswitch_dc
        0x5c -> :sswitch_56
        0x65 -> :sswitch_7e
        0x6e -> :sswitch_60
        0x72 -> :sswitch_6a
        0x74 -> :sswitch_74
        0x78 -> :sswitch_88
    .end sparse-switch
.end method

.method public static createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .registers 3
    .param p0, "asciiEncoded"    # Ljava/lang/String;

    .prologue
    .line 14
    const-string v1, ""

    invoke-static {v1}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    .line 16
    .local v0, "a":Landroid/net/wifi/WifiSsid;
    if-nez p0, :cond_9

    .line 22
    :goto_8
    return-object v0

    .line 20
    :cond_9
    invoke-static {v0, p0}, Landroid/net/wifi/WifiSsidEx;->convertToBytes(Landroid/net/wifi/WifiSsid;Ljava/lang/String;)V

    goto :goto_8
.end method
